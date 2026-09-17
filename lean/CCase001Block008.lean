import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 400-449 of the 2915-step refutation of ccase001: 140 core clauses and 50 earlier-derived ones give 23 more. -/
theorem CCase001_block008
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v38)
    (c166 : ¬v41 ∨ ¬v42)
    (c169 : ¬v45 ∨ ¬v43)
    (c189 : v43 ∨ v48 ∨ v44 ∨ v47 ∨ v49 ∨ v45 ∨ v46)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c231 : ¬v18 ∨ v25 ∨ v5 ∨ v20 ∨ v26 ∨ v10 ∨ v4 ∨ v19 ∨ v14 ∨ v11 ∨ v21 ∨ v3 ∨ v17 ∨ v28)
    (c237 : ¬v39 ∨ v32 ∨ v45 ∨ v33 ∨ v47 ∨ v40 ∨ v46 ∨ v38)
    (c249 : v6 ∨ ¬v7 ∨ v49 ∨ v1 ∨ v48 ∨ v14 ∨ v13 ∨ v8)
    (c288 : v8 ∨ v9 ∨ v45 ∨ v3 ∨ v44 ∨ v1 ∨ ¬v2 ∨ v10)
    (c289 : v29 ∨ v22 ∨ v30 ∨ v24 ∨ v31 ∨ v17 ∨ ¬v23 ∨ v16)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c300 : v24 ∨ ¬v17 ∨ v23 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c301 : ¬v26 ∨ v33 ∨ v18 ∨ v25 ∨ v19 ∨ v20 ∨ v34 ∨ v27)
    (c314 : ¬v42 ∨ v36 ∨ v41 ∨ v6 ∨ v49 ∨ v31 ∨ v35 ∨ v1 ∨ v37 ∨ v38 ∨ v29 ∨ v45 ∨ v48 ∨ v7)
    (c322 : v36 ∨ ¬v43 ∨ v37 ∨ v42 ∨ v1 ∨ v7 ∨ v44 ∨ v49)
    (c333 : ¬v24 ∨ v38 ∨ v18 ∨ v23 ∨ v17 ∨ v30 ∨ v33 ∨ v26 ∨ v31 ∨ v25 ∨ v19 ∨ v44 ∨ v45 ∨ v46)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c343 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v29 ∨ v42 ∨ v34 ∨ v41)
    (c348 : ¬v18 ∨ v13 ∨ v45 ∨ v26 ∨ v25 ∨ v46 ∨ v27 ∨ v11 ∨ v4 ∨ v10 ∨ v19 ∨ v17 ∨ v47 ∨ v20)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c398 : v36 ∨ ¬v43 ∨ v37 ∨ v42 ∨ v1 ∨ v2 ∨ v44 ∨ v49)
    (c413 : ¬v24 ∨ v31 ∨ v18 ∨ v30 ∨ v23 ∨ v17 ∨ v25 ∨ v16)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c437 : ¬v39 ∨ v32 ∨ v45 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c452 : v36 ∨ v29 ∨ v35 ∨ v40 ∨ v37 ∨ v30 ∨ ¬v43 ∨ v5 ∨ v7 ∨ v1 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c456 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v8 ∨ v17 ∨ v3 ∨ v22 ∨ ¬v18 ∨ v11)
    (c457 : ¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v48 ∨ v49 ∨ v41 ∨ v36)
    (c477 : v29 ∨ v22 ∨ v15 ∨ v24 ∨ ¬v23 ∨ v31 ∨ v16 ∨ v30)
    (c479 : v29 ∨ ¬v28 ∨ v35 ∨ v34 ∨ v15 ∨ v27 ∨ v22 ∨ v21)
    (c495 : v29 ∨ ¬v22 ∨ v30 ∨ v35 ∨ v28 ∨ v23 ∨ v15 ∨ v16)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c559 : v36 ∨ ¬v43 ∨ v2 ∨ v8 ∨ v1 ∨ v9 ∨ v14 ∨ v5 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c575 : ¬v33 ∨ v40 ∨ v31 ∨ v37 ∨ v26 ∨ v34 ∨ v41 ∨ v23 ∨ v30 ∨ v32 ∨ v25 ∨ v46 ∨ v47 ∨ v48)
    (c590 : v36 ∨ ¬v30 ∨ v22 ∨ v38 ∨ v31 ∨ v29 ∨ v23 ∨ v37)
    (c592 : v11 ∨ v19 ∨ v16 ∨ v45 ∨ v24 ∨ v25 ∨ v4 ∨ v12 ∨ ¬v18 ∨ v17 ∨ v9 ∨ v23 ∨ v46 ∨ v47)
    (c597 : v22 ∨ ¬v15 ∨ v23 ∨ v21 ∨ v16 ∨ v14 ∨ v28 ∨ v8)
    (c612 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c617 : v21 ∨ ¬v4 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c654 : ¬v11 ∨ ¬v5 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c657 : ¬v20 ∨ ¬v25 ∨ v26 ∨ v32 ∨ v33)
    (c661 : ¬v12 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c667 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c671 : v20 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c684 : v46 ∨ v2 ∨ ¬v3 ∨ v10 ∨ v16 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c686 : v10 ∨ ¬v2 ∨ v12 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c688 : v15 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v19 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c692 : v47 ∨ ¬v10 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v49)
    (c693 : ¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c723 : ¬v21 ∨ v8 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28)
    (c751 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v21 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v49)
    (c768 : v21 ∨ ¬v10 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c770 : ¬v10 ∨ v12 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c788 : v10 ∨ v2 ∨ ¬v12 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c789 : ¬v2 ∨ ¬v9 ∨ ¬v12 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c792 : v27 ∨ v10 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c805 : v5 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47)
    (c816 : ¬v11 ∨ ¬v2 ∨ v10 ∨ v12 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c819 : ¬v11 ∨ v10 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c893 : ¬v19 ∨ ¬v22 ∨ v29 ∨ v30)
    (c898 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c932 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c943 : ¬v10 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c947 : ¬v5 ∨ ¬v6 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c958 : v36 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c980 : v28 ∨ v11 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c986 : v36 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c987 : v36 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c992 : v27 ∨ ¬v10 ∨ ¬v11 ∨ v20 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c999 : v44 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1000 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1002 : v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1004 : v18 ∨ v16 ∨ v17 ∨ v23 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1008 : v44 ∨ ¬v10 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1009 : v4 ∨ v11 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1010 : v10 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1012 : v20 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    : (v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48) ∧ (¬v4 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12) ∧ (v15 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35) ∧ (¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34) ∧ (¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35) ∧ (v41 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (v34 ∨ v20 ∨ ¬v27 ∨ v30 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48) ∧ (v29 ∨ v22 ∨ v23 ∨ ¬v30 ∨ v36 ∨ v37 ∨ v38) ∧ (¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38) ∧ (¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46) ∧ (¬v15 ∨ v8 ∨ v14 ∨ v16 ∨ v22 ∨ v23 ∨ v28) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31) ∧ (¬v3 ∨ ¬v2 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49) ∧ (v28 ∨ v2 ∨ ¬v10 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49) ∧ (¬v10 ∨ ¬v2 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v24 ∨ ¬v16 ∨ v19 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 ∨ v34) ∧ (v13 ∨ ¬v2 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48) ∧ (¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31) ∧ (v44 ∨ v20 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1013 : ¬v12 ∨ v10 ∨ v11 ∨ v19 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n21
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd u1 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u3 : ¬v27 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : v25 := by
      rcases c1010 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u5 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v20 := by
      rcases c657 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v18 := by
      rcases c1012 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd u1 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
    have u10 : v17 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v2 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n22
    have u13 : v9 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u10 a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u9
    rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd u13 a
    · exact absurd n0 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n21
    · exact absurd a n22
  have c1014 : v26 ∨ v11 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v10 := by
      rcases c1008 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v38 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u7 : v31 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v28 := by
      rcases c1013 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n9
      · exact a
      · exact absurd a u17
      · exact absurd a n3
    rcases c883 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a n0
  have c1015 : v34 ∨ v10 ∨ ¬v11 ∨ ¬v12 ∨ v19 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v16 := by
      rcases c678 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a n9
    have u5 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u6 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u8 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u9 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u2
    have u10 : ¬v15 := by
      rcases c932 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
    have u11 : ¬v20 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u12 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n0
    have u13 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v1 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u12 a
    rcases c288 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n13
    · exact absurd a u13
    · exact absurd a n12
    · exact absurd a u14
    · exact absurd u9 a
    · exact absurd a n1
  have c1016 : v14 ∨ ¬v6 ∨ v8 ∨ v9 ∨ ¬v11 ∨ v13 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v5 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n13
    have u2 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v7 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n11
      · exact a
      · exact absurd a n5
    have u4 : v1 := by
      rcases c559 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n9 a
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c15 with a|a|a
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd u3 a
  have c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n6
  have c1018 : v37 ∨ v10 ∨ ¬v11 ∨ ¬v12 ∨ v19 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u5 : ¬v28 := by
      rcases c1015 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
    have u6 : ¬v6 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u7 : v20 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n19
    have u8 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n14
    have u14 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v1 := by
      rcases c249 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u13 a
      · exact absurd a n20
      · exact a
      · exact absurd a n19
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u16 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u13 a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a u10
    · exact absurd a u14
  have c1019 : ¬v4 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c398 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
  have c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd a u3
  have c1021 : v15 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n3 a
    rcases c479 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
  have c1022 : v42 ∨ v19 ∨ v26 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v11 := by
      rcases c1014 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
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
    have u2 : ¬v10 := by
      rcases c1008 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
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
    have u3 : v38 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
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
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v31 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v12 := by
      rcases c1018 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n4
    have u15 : ¬v6 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n11
    have u16 : ¬v4 := by
      rcases c1019 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n11
    have u17 : v13 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n10
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd u14 a
    have u18 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u1 a
    have u19 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u17 a
    have u20 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u14 a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n11
    have u22 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd u21 a
      · exact absurd u14 a
      · exact a
    have u24 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u13
    have u25 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u11
      · exact a
      · exact absurd a n0
    have u26 : v20 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u15
    have u27 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : v15 := by
      rcases c479 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u25 a
      · exact absurd a u11
      · exact absurd a u8
      · exact a
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u24
    rcases c84 with a|a
    · exact absurd u29 a
    · exact absurd u26 a
  have c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    rcases c702 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1024 : v49 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v38 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v31 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c1022 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
  have c1025 : v27 ∨ v2 ∨ v10 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v23 ∨ v30 ∨ v34 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n15 a
      · exact absurd a n12
      · exact absurd a n14
      · exact a
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n18
    have u2 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n5
      · exact absurd a n8
    have u3 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n3 a
    have u5 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n10
    have u6 : v3 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n4
    rcases c8 with a|a|a
    · exact absurd u1 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c1026 : ¬v1 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n12
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n10
    have u4 : v12 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a n7
    rcases c70 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n5 a
  have c1027 : v27 ∨ v10 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v5 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
    have u2 : v2 := by
      rcases c1025 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd n20 a
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
    have u3 : ¬v3 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n23
      · exact absurd a n24
    have u4 : ¬v1 := by
      rcases c1026 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n23
    have u5 : v7 := by
      rcases c452 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd n20 a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u6 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u5 a
    have u7 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u5 a
    have u8 : v12 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a n6
    have u9 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n23
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n18
      · exact absurd a n13
    rcases c70 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd n2 a
  have c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    rcases c671 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1029 : v41 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v19 := by
      rcases c1024 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v10 := by
      rcases c1008 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v38 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v31 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
    have u21 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u18
    have u22 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
    have u23 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u15
    have u24 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u23
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v11 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u24
    · exact absurd a n1
  have c1030 : ¬v33 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    rcases c575 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1031 : v34 ∨ v20 ∨ ¬v27 ∨ v30 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v33 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v29 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
    have u8 : ¬v35 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n7
    rcases c671 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u8
  have c1032 : v29 ∨ v22 ∨ v23 ∨ ¬v30 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n3 a
    rcases c590 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n5
  have c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v29 := by
      rcases c1032 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c124 with a|a
    · exact absurd u1 a
    · exact absurd n0 a
  have c1035 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n1 a
    rcases c437 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u3
  have c1036 : v23 ∨ v10 ∨ ¬v11 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v24 := by
      rcases c413 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n3
    have u2 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n12
    have u3 : v12 := by
      rcases c819 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n2 a
    have u6 : v2 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
    have u7 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd u6 a
    · exact absurd u2 a
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n21
    · exact absurd a n22
  have c1037 : v33 ∨ ¬v11 ∨ v16 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : ¬v10 := by
      rcases c992 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd n20 a
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u2 : v17 := by
      rcases c1036 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n24
      · exact absurd a n25
    have u3 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v26 := by
      rcases c301 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n8
    have u6 : ¬v5 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n24
      · exact absurd a n25
    have u7 : ¬v13 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n25
    have u8 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n23
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n17
    have u9 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n24
    have u10 : v2 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n24
      · exact absurd a n25
    rcases c901 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd u9 a
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a n23
    · exact absurd a n24
    · exact absurd a n25
  have c1038 : v16 ∨ ¬v11 ∨ v12 ∨ ¬v17 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n14
    rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n19
    · exact absurd a n20
  have c1039 : ¬v15 ∨ v8 ∨ v14 ∨ v16 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v21 := by
      rcases c597 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n1
    rcases c85 with a|a
    · exact absurd n0 a
    · exact absurd u1 a
  have c1040 : v28 ∨ ¬v11 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a u4
    have u8 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v10 := by
      rcases c992 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : ¬v16 := by
      rcases c987 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u13 : v25 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v12 := by
      rcases c792 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u17 : ¬v17 := by
      rcases c1038 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u18 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u9
    have u19 : ¬v2 := by
      rcases c816 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u20 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n10
      · exact a
      · exact absurd a u19
      · exact absurd a n11
      · exact absurd a n16
    have u21 : v15 := by
      rcases c1025 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
    have u22 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd u20 a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u21 a
      · exact a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u22
    · exact absurd a n14
    · exact absurd a n6
    · exact absurd a u23
    · exact absurd a n8
  have c1041 : v33 ∨ ¬v11 ∨ v20 ∨ v22 ∨ v23 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u4
    have u8 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v10 := by
      rcases c992 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v16 := by
      rcases c987 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v18 := by
      rcases c1040 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v2 := by
      rcases c1025 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u19 : ¬v3 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
    have u20 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a u14
      · exact a
      · exact absurd a u9
    have u21 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v13 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
    have u23 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n14
    rcases c901 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd u23 a
    · exact absurd n1 a
    · exact absurd a u22
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1042 : v10 ∨ ¬v11 ∨ v16 ∨ v23 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v19 := by
      rcases c685 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
    have u7 : ¬v13 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u8 : v2 := by
      rcases c684 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    have u9 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
    have u10 : v12 := by
      rcases c686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u8 a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u11 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n19
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a n14
      · exact absurd a n9
    have u12 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
    have u14 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u11 a
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd u11 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1043 : v20 ∨ ¬v11 ∨ v23 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u4
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v10 := by
      rcases c992 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v16 := by
      rcases c987 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v28 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v22 := by
      rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v15 := by
      rcases c495 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n2
      · exact a
      · exact absurd a u13
    have u20 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u10
    have u23 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u22 a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    rcases c684 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u23
    · exact absurd u22 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
  have c1044 : v24 ∨ v4 ∨ v10 ∨ v17 ∨ v20 ∨ v23 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v11 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a u5
    have u8 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
    have u10 : v2 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n13
      · exact a
    have u11 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    have u12 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u10 a
      · exact absurd u9 a
      · exact a
    rcases c322 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n11
    · exact absurd a n16
  have c1045 : v10 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v39 := by
      rcases c1024 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v11 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd u3 a
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd u3 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u10 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u11 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a u5
    have u12 : v24 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v18 := by
      rcases c413 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u13
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n1
    have u18 : v2 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    have u19 : ¬v9 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
    have u20 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v13 := by
      rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n15
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n4
    have u22 : ¬v3 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd u18 a
      · exact a
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
    have u23 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u8 a
    have u24 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u21 a
    have u25 : v1 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a n14
      · exact absurd a u22
      · exact absurd a n13
      · exact a
      · exact absurd u18 a
      · exact absurd a n0
    have u26 : v5 := by
      rcases c231 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u15
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n7
    rcases c3 with a|a|a
    · exact absurd u25 a
    · exact absurd u18 a
    · exact absurd u26 a
  have c1046 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    rcases c413 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
  have c1047 : ¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v2 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u4 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u6 : v42 := by
      rcases c322 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n13
    have u7 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v34 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n6
    have u10 : v31 := by
      rcases c314 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n13
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u4
    rcases c137 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1048 : v20 ∨ v10 ∨ v16 ∨ v17 ∨ v23 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v11 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u9 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a u5
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v3 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n3
      · exact a
      · exact absurd a u11
    have u15 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v18 := by
      rcases c413 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n2
    have u18 : v19 := by
      rcases c1045 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c95 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c1049 : ¬v10 ∨ v11 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n19
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n17
    · exact absurd a n20
    · exact absurd a n21
  have c1050 : v20 ∨ v16 ∨ v17 ∨ v23 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v11 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v10 := by
      rcases c1048 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a u6
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v19 := by
      rcases c1049 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u4 a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v24 := by
      rcases c1046 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
    have u17 : v12 := by
      rcases c770 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u18 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u2 a
    have u19 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u2 a
    have u20 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u2 a
    have u21 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
    have u22 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n10
    have u23 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n3
    rcases c25 with a|a|a
    · exact absurd u23 a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1051 : ¬v3 ∨ ¬v2 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v45 := by
      rcases c169 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : v42 := by
      rcases c322 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v34 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n4
    have u9 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    rcases c314 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a u1
  have c1052 : v28 ∨ v2 ∨ ¬v10 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n15 a
      · exact absurd a n12
      · exact absurd a n14
      · exact a
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n18
    have u2 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n3
      · exact absurd a n6
    have u3 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
    have u5 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n9
    have u7 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd u1 a
      · exact absurd u6 a
      · exact a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n18
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n14
  have c1053 : ¬v10 ∨ ¬v2 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
    have u2 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u3 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    rcases c943 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1054 : v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n6 a
      · exact a
    rcases c592 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd n6 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
  have c1055 : v17 ∨ v16 ∨ v20 ∨ v23 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v11 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u5
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v10 := by
      rcases c1048 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v26 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v2 := by
      rcases c1052 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u18 : v13 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd u17 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u19 : ¬v3 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u20 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u12 a
    have u21 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u12 a
    have u22 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u12 a
    have u23 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u12 a
    have u24 : ¬v5 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u12 a
      · exact absurd a u21
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u25 : v18 := by
      rcases c805 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u26 : ¬v4 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n13
      · exact absurd a u19
      · exact absurd a n12
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a n11
      · exact a
    have u27 : ¬v15 := by
      rcases c1039 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u25 a
      · exact a
    rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd u25 a
    · exact absurd a u2
  have c1056 : ¬v24 ∨ ¬v16 ∨ v19 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n1 a
      · exact a
    rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1057 : v33 ∨ v17 ∨ v20 ∨ v23 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v16 := by
      rcases c1055 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v11 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u9
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v24 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : v26 := by
      rcases c980 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u17 a
    rcases c301 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u12
  have c1058 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    rcases c301 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n4
  have c1059 : v13 ∨ ¬v2 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v5 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n4 a
    have u2 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n9
    rcases c23 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd u2 a
  have c1060 : v42 ∨ v20 ∨ v23 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u5
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v17 := by
      rcases c1057 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v22 := by
      rcases c495 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
    have u20 : ¬v10 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u21 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u22 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u23 : v2 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd u21 a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u24 : v13 := by
      rcases c1059 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd u21 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n12
    have u25 : ¬v3 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u26 : ¬v9 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u27 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u21 a
    have u28 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u24 a
    have u29 : v1 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a n9
      · exact absurd a u25
      · exact absurd a n8
      · exact a
      · exact absurd u23 a
      · exact absurd a u20
    have u30 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u28
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n0
    rcases c5 with a|a|a
    · exact absurd u29 a
    · exact absurd u23 a
    · exact absurd u30 a
  have c1061 : v40 ∨ v20 ∨ v23 ∨ v33 ∨ v34 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u4
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v11 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
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
      · exact absurd a n12
    have u13 : v28 := by
      rcases c1060 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd a u11
    have u18 : ¬v16 := by
      rcases c678 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd a u11
    have u19 : ¬v19 := by
      rcases c685 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd a u11
    have u20 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u21 : ¬v10 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u22 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u10
    have u23 : v2 := by
      rcases c684 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    rcases c1051 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
  have c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n1 a
    rcases c477 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
  have c1063 : v44 ∨ v20 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u4
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v23 := by
      rcases c1061 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v17 := by
      rcases c1062 with a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u10
    have u18 : v16 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd u12 a
      · exact a
    have u19 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : v11 := by
      rcases c980 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u24 : v10 := by
      rcases c986 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u22
      · exact a
      · exact absurd u23 a
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u25 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
    have u28 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u13
      · exact a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n4
    have u29 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n6
    have u30 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n3
    rcases c35 with a|a|a
    · exact absurd u28 a
    · exact absurd u30 a
    · exact absurd u29 a
  exact ⟨c1017, c1019, c1020, c1021, c1023, c1028, c1029, c1030, c1031, c1032, c1033, c1035, c1039, c1046, c1051, c1052, c1053, c1054, c1056, c1058, c1059, c1062, c1063⟩
