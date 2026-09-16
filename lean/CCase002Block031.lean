import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1550-1599 of the 2934-step refutation of ccase002: 129 core clauses and 81 earlier-derived ones give 17 more. -/
theorem CCase002_block031
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c119 : ¬v28 ∨ ¬v26)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c158 : ¬v39 ∨ ¬v40)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c166 : ¬v43 ∨ ¬v46)
    (c167 : ¬v47 ∨ ¬v43)
    (c168 : ¬v48 ∨ ¬v43)
    (c171 : ¬v44 ∨ ¬v46)
    (c175 : ¬v45 ∨ ¬v46)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c194 : v36 ∨ v43 ∨ v24 ∨ v44 ∨ v16 ∨ v15 ∨ v29 ∨ v35 ∨ v28 ∨ v31 ∨ v17 ∨ v23 ∨ ¬v22 ∨ v49)
    (c196 : v43 ∨ ¬v9 ∨ v19 ∨ v44 ∨ v17 ∨ v45 ∨ v8 ∨ v16 ∨ v12 ∨ v1 ∨ v11 ∨ v10 ∨ v5 ∨ v2)
    (c207 : ¬v31 ∨ v38 ∨ v25 ∨ v24 ∨ v37 ∨ v39 ∨ v32 ∨ v30)
    (c212 : ¬v46 ∨ v3 ∨ v40 ∨ v25 ∨ v26 ∨ v24 ∨ v32 ∨ v2 ∨ v37 ∨ v4 ∨ v39 ∨ v44 ∨ v45 ∨ v47)
    (c225 : ¬v46 ∨ v39 ∨ v38 ∨ v45 ∨ v4 ∨ v40 ∨ v3 ∨ v47)
    (c250 : ¬v46 ∨ v38 ∨ v5 ∨ v10 ∨ v4 ∨ v11 ∨ v12 ∨ v43 ∨ v39 ∨ v1 ∨ v36 ∨ v44 ∨ v45 ∨ v47)
    (c264 : ¬v37 ∨ v43 ∨ v31 ∨ v45 ∨ v30 ∨ v44 ∨ v38 ∨ v36)
    (c266 : v43 ∨ ¬v15 ∨ v49 ∨ v44 ∨ v1 ∨ v22 ∨ v21 ∨ v14 ∨ v17 ∨ v16 ∨ v10 ∨ v23 ∨ v8 ∨ v24)
    (c278 : v21 ∨ v13 ∨ v1 ∨ v20 ∨ v6 ∨ ¬v14 ∨ v8 ∨ v7)
    (c284 : v13 ∨ v47 ∨ v4 ∨ v48 ∨ v6 ∨ ¬v5 ∨ v12 ∨ v11)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c301 : v43 ∨ ¬v9 ∨ v45 ∨ v3 ∨ v20 ∨ v15 ∨ v13 ∨ v6 ∨ v2 ∨ v16 ∨ v10 ∨ v8 ∨ v44 ∨ v14)
    (c310 : v14 ∨ v10 ∨ v18 ∨ v45 ∨ v2 ∨ v4 ∨ v16 ∨ v17 ∨ v1 ∨ v11 ∨ v44 ∨ v7 ∨ ¬v3 ∨ v49)
    (c332 : v22 ∨ ¬v9 ∨ v24 ∨ v23 ∨ v2 ∨ v16 ∨ v5 ∨ v15 ∨ v8 ∨ v12 ∨ v11 ∨ v19 ∨ v10 ∨ v3)
    (c344 : v36 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v43 ∨ v30 ∨ v38 ∨ v29)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c367 : ¬v46 ∨ v4 ∨ v40 ∨ v38 ∨ v39 ∨ v5 ∨ v45 ∨ v47)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c382 : v36 ∨ v29 ∨ v30 ∨ v25 ∨ v24 ∨ v33 ∨ ¬v23 ∨ v17 ∨ v26 ∨ v16 ∨ v22 ∨ v19 ∨ v37 ∨ v38)
    (c393 : v36 ∨ v29 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v38 ∨ ¬v30)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c426 : v29 ∨ v22 ∨ v24 ∨ v30 ∨ v15 ∨ v31 ∨ ¬v23 ∨ v16)
    (c432 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v35 ∨ v30 ∨ v28 ∨ v42)
    (c436 : ¬v8 ∨ v9 ∨ v21 ∨ v2 ∨ v14 ∨ v16 ∨ v1 ∨ v15)
    (c464 : v23 ∨ v27 ∨ v24 ∨ v25 ∨ v13 ∨ v16 ∨ v33 ∨ v32 ∨ v30 ∨ v20 ∨ v19 ∨ v11 ∨ v12 ∨ ¬v26)
    (c481 : v29 ∨ v22 ∨ v43 ∨ v44 ∨ v35 ∨ v31 ∨ v41 ∨ v23 ∨ v38 ∨ v34 ∨ v27 ∨ v37 ∨ ¬v30 ∨ v45)
    (c497 : ¬v46 ∨ v39 ∨ v47 ∨ v38 ∨ v4 ∨ v3 ∨ v45 ∨ v5)
    (c501 : ¬v42 ∨ v35 ∨ v34 ∨ v43 ∨ v29 ∨ v49 ∨ v36 ∨ v41)
    (c503 : ¬v15 ∨ v16 ∨ v27 ∨ v21 ∨ v1 ∨ v13 ∨ v22 ∨ v28 ∨ v9 ∨ v8 ∨ v20 ∨ v43 ∨ v44 ∨ v49)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c538 : ¬v24 ∨ v31 ∨ v16 ∨ v32 ∨ v30 ∨ v25 ∨ v17 ∨ v23)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c773 : v16 ∨ v14 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c775 : v44 ∨ ¬v14 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v45 ∨ v48)
    (c776 : v9 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c800 : ¬v21 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c872 : ¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c892 : ¬v34 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c895 : v23 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v34)
    (c903 : ¬v24 ∨ ¬v29 ∨ v36 ∨ v42)
    (c978 : ¬v26 ∨ ¬v17 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1150 : ¬v26 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1283 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1292 : v29 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ ¬v34 ∨ v38 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1350 : v29 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v42 ∨ v49)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1551 : v17 ∨ v16 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1559 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41)
    (c1590 : v1 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v43 ∨ v47 ∨ v49)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c1653 : v14 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c1655 : v21 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v48 ∨ v49)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1748 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38)
    (c1770 : ¬v6 ∨ ¬v1 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1774 : ¬v3 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1776 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1834 : ¬v19 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1850 : ¬v23 ∨ v16 ∨ v17 ∨ ¬v34)
    (c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1865 : v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1874 : v23 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v26 ∨ v27)
    (c1894 : v33 ∨ v8 ∨ ¬v15 ∨ v19 ∨ v20 ∨ ¬v26)
    (c1901 : ¬v23 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v31)
    (c1916 : v7 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17)
    (c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c1994 : ¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v43 ∨ v48 ∨ v49)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2034 : v13 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2038 : v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2039 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2040 : ¬v34 ∨ v27 ∨ ¬v39)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2055 : v45 ∨ v8 ∨ v10 ∨ v14 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ ¬v34 ∨ v43 ∨ v44 ∨ v49)
    (c2087 : ¬v6 ∨ ¬v9 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c2099 : ¬v5 ∨ ¬v3 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v44 ∨ v49)
    (c2111 : ¬v16 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c2113 : v7 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2114 : ¬v6 ∨ ¬v3 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2115 : v20 ∨ v16 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v27 ∨ ¬v31 ∨ v34 ∨ v37 ∨ v38 ∨ v42)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    : (¬v19 ∨ v1 ∨ v16 ∨ ¬v21 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v48 ∨ v49) ∧ (v17 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v16 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v2 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32) ∧ (v16 ∨ v2 ∨ v8 ∨ v13 ∨ v17 ∨ v22 ∨ ¬v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49) ∧ (v5 ∨ v4 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49) ∧ (v47 ∨ v13 ∨ v17 ∨ v20 ∨ v27 ∨ v38 ∨ v48 ∨ v49) ∧ (v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v17 ∨ v20 ∨ v33 ∨ v40 ∨ v47) ∧ (v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44) ∧ (v11 ∨ ¬v2 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48) ∧ (¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45) ∧ (v28 ∨ v1 ∨ v16 ∨ ¬v17 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v48 ∨ v49) ∧ (v21 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49) ∧ (v27 ∨ v13 ∨ v20 ∨ v24 ∨ v38 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v4 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47) ∧ (v31 ∨ v22 ∨ v23 ∨ v27 ∨ v29 ∨ ¬v30 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v44 ∨ v45) := by
  have c2117 : ¬v19 ∨ v1 ∨ v16 ∨ ¬v21 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1983 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2118 : v38 ∨ v13 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v31 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
    have u11 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n10
    have u17 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u12
    have u19 : v21 := by
      rcases c2115 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u10 a
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u17
    have u20 : ¬v19 := by
      rcases c2117 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n7
    have u22 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u13
    have u23 : v23 := by
      rcases c1748 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a n0
    have u24 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u23 a
    rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a u15
    · exact absurd u23 a
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u24
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a n0
  have c2119 : v30 ∨ v1 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ ¬v31 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u2 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n13
    have u11 : v8 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u2
    have u13 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c2120 : v17 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v16 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v2 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u2
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u4
  have c2121 : ¬v23 ∨ v16 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n11
  have c2122 : v38 ∨ v13 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v30 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v46 := by
      rcases c2038 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v10 := by
      rcases c2120 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v31 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n0
      · exact a
    have u13 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n10
    have u18 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u13
    have u19 : v18 := by
      rcases c2118 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v15 := by
      rcases c2119 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u12 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n7
    have u24 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u22
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u25 : ¬v23 := by
      rcases c2121 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n0
    have u26 : v25 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a n4
      · exact a
      · exact absurd a u9
    have u27 : ¬v14 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u25
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n9
    have u28 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u26 a
    rcases c773 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u27
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a u25
    · exact absurd a n5
    · exact absurd a u24
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n10
  have c2123 : ¬v6 ∨ ¬v2 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c2113 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2124 : v38 ∨ v13 ∨ v17 ∨ v20 ∨ v27 ∨ v30 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2038 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v2 := by
      rcases c2123 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n2
    have u11 : v24 := by
      rcases c2122 with a|a|a|a|a|a|a|a|a|a|a
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
    have u12 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a u9
      · exact absurd a u5
    have u14 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v29 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n0
      · exact a
    rcases c903 with a|a|a|a
    · exact absurd u11 a
    · exact absurd u16 a
    · exact absurd a u14
    · exact absurd a u15
  have c2125 : v27 ∨ v13 ∨ v17 ∨ v20 ∨ v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v46 := by
      rcases c2038 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v30 := by
      rcases c2124 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v2 := by
      rcases c2123 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v10 := by
      rcases c2120 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u5 a
      · exact a
    have u17 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u5 a
    have u18 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u13
    have u19 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
    have u20 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u18 a
    have u25 : v18 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u17
    have u26 : v11 := by
      rcases c895 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u18 a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n4
    have u27 : v37 := by
      rcases c481 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd u5 a
      · exact absurd a u11
    have u28 : v19 := by
      rcases c1551 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u25 a
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u21
    have u29 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u27 a
    have u32 : ¬v15 := by
      rcases c1834 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u29
      · exact absurd a u19
      · exact absurd a u30
      · exact a
      · exact absurd a u20
      · exact absurd a u22
    rcases c1590 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u29
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u32
    · exact absurd a u4
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u31
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a n8
  have c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    rcases c538 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
  have c2127 : v16 ∨ v2 ∨ v8 ∨ v13 ∨ v17 ∨ v22 ∨ ¬v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v23 := by
      rcases c1850 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n6 a
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v9 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
    have u13 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u5
    have u18 : v15 := by
      rcases c2055 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd n6 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n10
    have u19 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n10
    have u21 : v21 := by
      rcases c266 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u18 a
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a n5
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u8
    have u22 : ¬v7 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v19 := by
      rcases c2117 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd u21 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u24 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u18 a
      · exact absurd u21 a
      · exact a
    have u25 : v5 := by
      rcases c196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u12 a
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a n1
    have u26 : v4 := by
      rcases c310 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd u17 a
      · exact absurd a n10
    rcases c24 with a|a|a
    · exact absurd u25 a
    · exact absurd u26 a
    · exact absurd u17 a
  have c2128 : ¬v15 ∨ v8 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v21 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n10
    have u5 : ¬v26 := by
      rcases c1894 with a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n4
      · exact a
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a n8
  have c2129 : v28 ∨ v8 ∨ v13 ∨ v17 ∨ v20 ∨ v22 ∨ v27 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v34 := by
      rcases c2125 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v2 := by
      rcases c2127 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v46 := by
      rcases c2034 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact a
    have u10 : ¬v23 := by
      rcases c1850 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v15 := by
      rcases c2128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v1 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n10
    have u17 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd u16 a
      · exact absurd u3 a
      · exact a
    have u18 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n10
    have u19 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u16 a
      · exact absurd u3 a
      · exact a
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u18
  have c2130 : ¬v34 ∨ ¬v8 ∨ v16 ∨ v17 ∨ v27 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
    have u11 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
    have u12 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n8
    have u18 : v2 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
    have u19 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u9
    have u20 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u21 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    rcases c250 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n5
    · exact absurd a u22
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n6
  have c2131 : v5 ∨ v4 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact a
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v40 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n7
    have u9 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c161 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c2132 : v8 ∨ v13 ∨ v17 ∨ v20 ∨ ¬v26 ∨ v27 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n4 a
    rcases c2129 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2133 : ¬v4 ∨ ¬v2 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n4
    have u4 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v43 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v46 := by
      rcases c166 with a|a
      · exact absurd u6 a
      · exact a
    rcases c2039 with a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n8
  have c2134 : ¬v2 ∨ v16 ∨ v17 ∨ v26 ∨ v27 ∨ ¬v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v23 := by
      rcases c1850 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n5 a
    have u6 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact a
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v4 := by
      rcases c2133 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
    have u15 : v3 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact a
      · exact absurd a n7
    have u16 : v5 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a n7
    rcases c16 with a|a|a
    · exact absurd n0 a
    · exact absurd u16 a
    · exact absurd u15 a
  have c2135 : v47 ∨ v13 ∨ v17 ∨ v20 ∨ v27 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v34 := by
      rcases c2125 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v23 := by
      rcases c1850 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u6 a
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
    have u15 : ¬v24 := by
      rcases c2126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v8 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v26 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u6 a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v2 := by
      rcases c2134 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v9 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u20
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u5
    have u22 : v22 := by
      rcases c2127 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u22 a
      · exact a
    have u28 : v15 := by
      rcases c194 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd u22 a
      · exact absurd a n7
    have u29 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u4
    have u30 : ¬v19 := by
      rcases c595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u28 a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a n4
    have u31 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u32 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u9
      · exact a
      · exact absurd a u17
      · exact absurd a u30
      · exact absurd a n0
      · exact absurd a u19
    have u33 : v4 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a u31
      · exact absurd u32 a
      · exact absurd a u23
      · exact absurd a u25
    rcases c24 with a|a|a
    · exact absurd u32 a
    · exact absurd u33 a
    · exact absurd u29 a
  have c2136 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v17 ∨ v20 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v19 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n8
    have u2 : v18 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n0
    rcases c83 with a|a|a
    · exact absurd u2 a
    · exact absurd u1 a
    · exact absurd n5 a
  have c2137 : ¬v17 ∨ v1 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v27 ∨ ¬v34 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n12 a
    have u5 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n12 a
      · exact a
    have u6 : v15 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v19 := by
      rcases c464 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n10 a
    rcases c64 with a|a|a
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd u7 a
  have c2138 : v13 ∨ v2 ∨ ¬v3 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v31 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v9 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
    have u13 : ¬v37 := by
      rcases c892 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n12
    have u15 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v26 := by
      rcases c2137 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n12
    have u19 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd u5 a
      · exact absurd a n9
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v5 := by
      rcases c2136 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n10
    have u22 : v4 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd u21 a
      · exact absurd a u15
      · exact absurd a u17
    rcases c24 with a|a|a
    · exact absurd u21 a
    · exact absurd u22 a
    · exact absurd n2 a
  have c2139 : ¬v15 ∨ v8 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v25 := by
      rcases c1874 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v24 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a u4
    have u6 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n5
  have c2140 : v49 ∨ v2 ∨ v3 ∨ ¬v9 ∨ v13 ∨ v16 ∨ ¬v17 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v15 := by
      rcases c2139 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v1 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
    have u6 : v6 := by
      rcases c301 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n3 a
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a u3
    rcases c1833 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n0
  have c2141 : v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n1
  have c2142 : v13 ∨ v2 ∨ v9 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v31 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v3 := by
      rcases c2138 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
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
      · exact absurd a n12
    have u2 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u6
    have u8 : v30 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u6
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n12
    have u10 : v6 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v37 := by
      rcases c393 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd u8 a
    have u12 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v4 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u5
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n10
    have u15 : v12 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd u14 a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u14 a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u15 a
      · exact a
    rcases c1916 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u14 a
    · exact absurd u10 a
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2143 : v24 ∨ v2 ∨ v13 ∨ v20 ∨ v23 ∨ v27 ∨ v29 ∨ v31 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v9 := by
      rcases c2142 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v3 := by
      rcases c2138 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v26 := by
      rcases c2140 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u14
    have u17 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u16 a
    have u18 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u1 a
    have u19 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u16 a
    have u20 : v1 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u21 : v5 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u12
    rcases c1839 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n11
  have c2144 : ¬v17 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
    have u3 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
    rcases c464 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n13
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n9 a
  have c2145 : v47 ∨ ¬v9 ∨ v13 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v31 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v2 := by
      rcases c2143 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v6 := by
      rcases c2123 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v26 := by
      rcases c2144 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u15 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd u10 a
      · exact absurd a n9
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v5 := by
      rcases c2136 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n0
    have u18 : ¬v4 := by
      rcases c19 with a|a|a
      · exact absurd u5 a
      · exact absurd u17 a
      · exact a
    rcases c284 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd u17 a
    · exact absurd a u1
    · exact absurd a u3
  have c2146 : v11 ∨ ¬v2 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v5 := by
      rcases c2136 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v4 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    rcases c284 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n0
  have c2147 : ¬v34 ∨ ¬v2 ∨ v9 ∨ ¬v12 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v6 := by
      rcases c2123 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v18 := by
      rcases c287 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
    have u12 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd n5 a
    have u13 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n5 a
    have u17 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n5 a
    have u18 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u11 a
    have u19 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u7
    have u20 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u15
    have u21 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u14
    have u22 : v4 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u2
    have u23 : v1 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n12
    rcases c1776 with a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a n12
  have c2148 : v49 ∨ v13 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v38 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v2 := by
      rcases c2143 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u2 : ¬v9 := by
      rcases c2145 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n0
    have u3 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u4 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n0
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u6 : ¬v6 := by
      rcases c2123 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u7 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
    have u12 : ¬v37 := by
      rcases c892 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd u10 a
      · exact absurd a n9
      · exact a
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u18 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v12 := by
      rcases c2147 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u20 : v11 := by
      rcases c2146 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u23
      · exact a
      · exact absurd u4 a
    have u25 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
    have u26 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u15
    have u27 : v4 := by
      rcases c2131 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u10 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u28 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u22
      · exact a
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u26
    rcases c1776 with a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n0
  have c2149 : v9 ∨ ¬v2 ∨ v10 ∨ v13 ∨ ¬v17 ∨ v20 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v6 := by
      rcases c2123 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v21 := by
      rcases c800 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
    have u9 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd u7 a
      · exact absurd a n9
      · exact a
    have u17 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u9 a
    have u18 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
    have u19 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u20 : v1 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
    have u21 : ¬v4 := by
      rcases c1776 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n13
    have u22 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u20 a
      · exact absurd n1 a
      · exact a
    have u23 : ¬v3 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n13
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u16
    · exact absurd a n11
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a u22
  have c2150 : v31 ∨ v12 ∨ v13 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v26 := by
      rcases c2148 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v9 := by
      rcases c2145 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v2 := by
      rcases c2143 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v6 := by
      rcases c2123 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v21 := by
      rcases c800 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd u5 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u8
    have u13 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v42 := by
      rcases c1150 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a u14
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v10 := by
      rcases c2149 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a u15
    rcases c1325 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd u19 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a n11
  have c2151 : v20 ∨ v13 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v31 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v26 := by
      rcases c2148 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v12 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v2 := by
      rcases c2143 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v9 := by
      rcases c2145 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v6 := by
      rcases c2123 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u18 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u19 : v18 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u2 a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u6
    have u20 : ¬v21 := by
      rcases c800 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u9
    have u21 : ¬v15 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u10
    have u22 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n10
    have u24 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u17
    have u25 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u2 a
    have u26 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u10
    have u27 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u22 a
      · exact a
    have u28 : ¬v37 := by
      rcases c892 with a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u17
    have u29 : v4 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n0
      · exact a
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a n1
    rcases c1776 with a|a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd u26 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a n10
  have c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    rcases c264 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
  have c2153 : v31 ∨ v13 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v29 := by
      rcases c2151 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v9 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u11
    have u17 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v2 := by
      rcases c2123 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v26 := by
      rcases c978 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u23 : v15 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact a
      · exact absurd a u1
    have u24 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u23 a
      · exact absurd u2 a
      · exact a
    have u25 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u2 a
    have u26 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd u23 a
      · exact absurd u2 a
      · exact a
    have u27 : v25 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    rcases c1874 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd u27 a
    · exact absurd a u22
    · exact absurd a n5
  have c2154 : v38 ∨ v13 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v31 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u3
    have u10 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v36 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd n6 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u11
    have u14 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v4 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n8
    have u17 : v12 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd u16 a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u16 a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u17 a
      · exact a
    rcases c1916 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u16 a
    · exact absurd u9 a
    · exact absurd a n1
    · exact absurd a u19
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2155 : v9 ∨ v1 ∨ v13 ∨ ¬v15 ∨ v16 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact a
    have u3 : v8 := by
      rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u3 a
      · exact a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n0
  have c2156 : ¬v9 ∨ v3 ∨ v4 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v20 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n14
    have u13 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a u12
    have u14 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v39 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u14
    have u16 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v33 := by
      rcases c2136 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u6
      · exact a
      · exact absurd a u16
      · exact absurd a n12
    rcases c1559 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u16
    · exact absurd a u7
  have c2157 : v38 ∨ v13 ∨ ¬v15 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
    have u7 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v2 := by
      rcases c2123 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n9
    have u15 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v9 := by
      rcases c2155 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n13
    have u17 : v35 := by
      rcases c2156 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v42 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact a
    have u20 : ¬v37 := by
      rcases c872 with a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
    have u21 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u19 a
      · exact a
    rcases c212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u22
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n11
  have c2160 : v49 ∨ v13 ∨ v20 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v38 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v23 := by
      rcases c2153 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
    have u13 : ¬v29 := by
      rcases c2154 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u14 : v15 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a u1
    have u15 : v34 := by
      rcases c2157 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u16 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u2 a
    have u17 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u8
    have u18 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v39 := by
      rcases c2040 with a|a|a
      · exact absurd u15 a
      · exact absurd a n4
      · exact a
    have u22 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd u15 a
      · exact absurd a n7
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u23 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u24
    have u26 : ¬v3 := by
      rcases c2099 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a n0
    have u27 : v4 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u10
      · exact a
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a n8
    have u28 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u27 a
    have u29 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u30 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u25 a
      · exact absurd u27 a
      · exact a
    have u31 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u30
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u23
    have u32 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u31 a
    rcases c278 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u28
    · exact absurd a n2
    · exact absurd a u29
    · exact absurd u31 a
    · exact absurd a u32
    · exact absurd a u30
  have c2161 : v27 ∨ v13 ∨ v20 ∨ v24 ∨ v31 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v30 := by
      rcases c2160 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n8
    have u10 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u6
    have u11 : ¬v2 := by
      rcases c2123 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v23 := by
      rcases c2153 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v15 := by
      rcases c2157 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u17
    have u20 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v21 := by
      rcases c436 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u21
      · exact a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u18
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u22 a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u20
  have c2162 : v28 ∨ v1 ∨ v16 ∨ ¬v17 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u2 : ¬v22 := by
      rcases c2116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
    have u4 : v8 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c41 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2163 : v21 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v8 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1653 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
  have c2164 : v26 ∨ v13 ∨ ¬v17 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v2 := by
      rcases c2123 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v9 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v15 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact a
      · exact absurd a u1
    have u14 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
    have u15 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n2 a
    have u16 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
    have u17 : ¬v25 := by
      rcases c1874 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a n5
    have u18 : v24 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a u17
    have u19 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u18 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd u13 a
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a n4
  have c2165 : v27 ∨ v13 ∨ v20 ∨ v24 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v31 := by
      rcases c2161 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n7
    have u15 : ¬v37 := by
      rcases c344 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
    have u16 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v42 := by
      rcases c501 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u16
    have u18 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u13
    have u19 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v26 := by
      rcases c978 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v23 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v21 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a n0
    have u27 : v39 := by
      rcases c207 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u8
    have u28 : v15 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u19
      · exact a
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u29 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u22
    have u31 : ¬v9 := by
      rcases c2087 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u29
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n7
    have u32 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u12
      · exact a
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a n5
      · exact absurd a u29
    have u33 : v8 := by
      rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u31
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n7
    have u34 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u32 a
      · exact absurd u18 a
      · exact a
    have u35 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u33 a
      · exact a
    rcases c1350 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u34
    · exact absurd a u35
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a n7
  have c2166 : ¬v6 ∨ ¬v4 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v12 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1916 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2167 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n3 a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
  have c2168 : v31 ∨ v22 ∨ v23 ∨ v27 ∨ v29 ∨ ¬v30 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n5 a
    rcases c481 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd n5 a
    · exact absurd a n12
  exact ⟨c2117, c2120, c2123, c2126, c2127, c2131, c2135, c2136, c2141, c2146, c2152, c2162, c2163, c2165, c2166, c2167, c2168⟩
