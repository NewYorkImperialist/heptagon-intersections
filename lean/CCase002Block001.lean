import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 50-99 of the 2934-step refutation of ccase002: 120 core clauses and 18 earlier-derived ones give 24 more. -/
theorem CCase002_block001
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
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
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c118 : ¬v26 ∨ ¬v27)
    (c127 : ¬v29 ∨ ¬v35)
    (c139 : ¬v32 ∨ ¬v35)
    (c145 : ¬v39 ∨ ¬v36)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c213 : ¬v26 ∨ v33 ∨ v20 ∨ v32 ∨ v34 ∨ v19 ∨ v27 ∨ v25)
    (c221 : ¬v25 ∨ v32 ∨ v18 ∨ v33 ∨ v31 ∨ v26 ∨ v24 ∨ v19)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c234 : ¬v23 ∨ v30 ∨ v26 ∨ v24 ∨ v16 ∨ v31 ∨ v25 ∨ v9 ∨ v8 ∨ v19 ∨ v10 ∨ v15 ∨ v22 ∨ v33)
    (c239 : v13 ∨ v8 ∨ v48 ∨ v6 ∨ ¬v7 ∨ v1 ∨ v49 ∨ v14)
    (c249 : v22 ∨ ¬v21 ∨ v28 ∨ v14 ∨ v27 ∨ v20 ∨ v15 ∨ v8)
    (c257 : v12 ∨ v48 ∨ v4 ∨ v6 ∨ ¬v5 ∨ v47 ∨ v11 ∨ v46)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c262 : v13 ∨ ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v4 ∨ v12 ∨ v11)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c300 : v22 ∨ v16 ∨ v21 ∨ v28 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v8)
    (c315 : ¬v25 ∨ v32 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v17 ∨ v31)
    (c323 : v36 ∨ ¬v35 ∨ v42 ∨ v28 ∨ v29 ∨ v22 ∨ v41 ∨ v34)
    (c327 : ¬v18 ∨ v17 ∨ v20 ∨ v25 ∨ v10 ∨ v4 ∨ v11 ∨ v13 ∨ v26 ∨ v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c338 : v21 ∨ v19 ∨ v3 ∨ v18 ∨ v14 ∨ v4 ∨ v7 ∨ v13 ∨ ¬v11 ∨ v12 ∨ v10 ∨ v45 ∨ v46 ∨ v47)
    (c343 : v13 ∨ v6 ∨ v46 ∨ v48 ∨ v4 ∨ ¬v5 ∨ v47 ∨ v12)
    (c361 : ¬v23 ∨ v30 ∨ v31 ∨ v16 ∨ v15 ∨ v22 ∨ v24 ∨ v17)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c394 : v20 ∨ v27 ∨ v18 ∨ v25 ∨ v26 ∨ v12 ∨ ¬v19 ∨ v13)
    (c429 : ¬v24 ∨ v31 ∨ v18 ∨ v30 ∨ v32 ∨ v17 ∨ v25 ∨ v23)
    (c469 : ¬v35 ∨ v42 ∨ v20 ∨ v28 ∨ v22 ∨ v39 ∨ v29 ∨ v25 ∨ v32 ∨ v33 ∨ v34 ∨ v15 ∨ v41 ∨ v21)
    (c470 : ¬v14 ∨ v21 ∨ v1 ∨ v20 ∨ v8 ∨ v15 ∨ v7 ∨ v13)
    (c507 : ¬v16 ∨ v22 ∨ v24 ∨ v23 ∨ v15 ∨ v8 ∨ v17 ∨ v9)
    (c508 : ¬v19 ∨ v20 ∨ v18 ∨ v26 ∨ v25 ∨ v12 ∨ v27 ∨ v11)
    (c513 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v32 ∨ v27 ∨ v33 ∨ v19)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c537 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v10 ∨ v25 ∨ v11 ∨ v16)
    (c538 : ¬v24 ∨ v31 ∨ v16 ∨ v32 ∨ v30 ∨ v25 ∨ v17 ∨ v23)
    (c544 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c547 : ¬v4 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c548 : v19 ∨ ¬v4 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c549 : v4 ∨ v3 ∨ v5 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c554 : v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c556 : v48 ∨ ¬v3 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v49)
    (c560 : ¬v20 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c563 : ¬v3 ∨ ¬v5 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c564 : v19 ∨ v5 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c566 : v21 ∨ ¬v3 ∨ ¬v4 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c583 : v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c590 : ¬v23 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c592 : v19 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    : (v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v16 ∨ v17 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27) ∧ (v48 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v9 ∨ ¬v5 ∨ ¬v6 ∨ ¬v18 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49) ∧ (v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v4 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v21 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28) ∧ (v17 ∨ ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32) ∧ (¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24) ∧ (v44 ∨ ¬v7 ∨ v9 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v45 ∨ v48) ∧ (¬v19 ∨ ¬v17 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (v21 ∨ ¬v9 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49) ∧ (v19 ∨ v17 ∨ ¬v18 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47) ∧ (v26 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v45 ∨ ¬v17 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49) ∧ (v20 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48) ∧ (¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25) ∧ (v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21) ∧ (v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ ¬v18 ∨ ¬v19 ∨ v28 ∨ v33 ∨ v34 ∨ v41 ∨ v42) ∧ (¬v18 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v49) := by
  have c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v13 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n3 a
      · exact a
    have u2 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    rcases c508 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u2
  have c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c594 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c596 : v17 ∨ v19 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v18 := by
      rcases c592 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n19
      · exact absurd a n13
      · exact absurd a n8
    have u7 : ¬v20 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n22
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n11
    have u9 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n23
      · exact absurd a n17
    rcases c29 with a|a|a
    · exact absurd u6 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c597 : ¬v16 ∨ v17 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v19 := by
      rcases c596 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
      · exact absurd a n23
    have u2 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u4 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n23
      · exact absurd a n17
    have u9 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n22
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n11
    have u10 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u3
      · exact absurd a n20
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n9
    rcases c32 with a|a|a
    · exact absurd u10 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c598 : v17 ∨ v21 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v16 := by
      rcases c597 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
      · exact absurd a n23
      · exact absurd a n24
    have u2 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v15 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n0
    have u4 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n7
    have u5 : ¬v19 := by
      rcases c595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n11
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n22
      · exact absurd a n16
    have u7 : ¬v3 := by
      rcases c563 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n24
    have u8 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n20
      · exact absurd a n14
      · exact absurd a n9
    have u9 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u8 a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd u3 a
    · exact absurd a u11
  have c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u4 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u5
  have c600 : v21 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v20 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
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
      · exact absurd a n16
    have u2 : v5 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n14
    have u3 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    rcases c547 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n16
  have c601 : v48 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n8
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n10
    have u7 : v6 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n13
      · exact absurd a u3
    have u8 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    rcases c338 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c602 : ¬v5 ∨ v4 ∨ ¬v9 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n6
    have u5 : v6 := by
      rcases c257 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n7
    rcases c33 with a|a|a
    · exact absurd n0 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c603 : v21 ∨ v4 ∨ ¬v5 ∨ v10 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v9 := by
      rcases c602 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v8 := by
      rcases c234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n14
    have u4 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n20
      · exact absurd a n16
    have u9 : v6 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n2 a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
    rcases c33 with a|a|a
    · exact absurd n2 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c604 : ¬v5 ∨ v4 ∨ v15 ∨ v16 ∨ v19 ∨ v21 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v10 := by
      rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v6 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n0 a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
    have u7 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n19
      · exact absurd a n15
    rcases c33 with a|a|a
    · exact absurd n0 a
    · exact absurd u6 a
    · exact absurd u7 a
  have c605 : v21 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v17 := by
      rcases c598 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
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
      · exact absurd a n23
    have u2 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v4 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u4 : v18 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n22
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u5 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u6 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u8 : ¬v5 := by
      rcases c604 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u9 : v3 := by
      rcases c549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u10 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n21
      · exact absurd a n15
    have u11 : v13 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u9 a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    rcases c54 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c606 : v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v23 := by
      rcases c583 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
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
    have u2 : ¬v21 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    rcases c605 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n0
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
  have c607 : v9 ∨ ¬v5 ∨ ¬v6 ∨ ¬v18 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n10
    have u5 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u2
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v20 := by
      rcases c78 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
    rcases c470 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u7
  have c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v13 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n3
    have u2 : v11 := by
      rcases c257 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
    rcases c52 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c609 : v4 ∨ v12 ∨ ¬v18 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n17
      · exact absurd a n13
    have u2 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v9 := by
      rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u4 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u3 a
      · exact a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n19
    · exact absurd a n14
  have c610 : ¬v4 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v20 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v5 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n14
    have u3 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v3 := by
      rcases c563 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
    rcases c547 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n16
  have c611 : v21 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : v18 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n22
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u3 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u4 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n23
      · exact absurd a n17
    have u10 : ¬v20 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n22
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n11
    have u12 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u11 a
    have u13 : v17 := by
      rcases c327 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u14 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a u12
    rcases c73 with a|a|a
    · exact absurd u14 a
    · exact absurd u13 a
    · exact absurd u2 a
  have c612 : ¬v18 ∨ ¬v21 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c79 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n2 a
    rcases c538 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u3
  have c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    rcases c249 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
  have c614 : v25 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v24 := by
      rcases c606 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
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
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v21 := by
      rcases c611 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u5 : ¬v18 := by
      rcases c612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v17 := by
      rcases c429 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a u3
    have u7 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u6 a
    have u9 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n21
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n9
    have u11 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact a
    have u12 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u10 a
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u13 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u11 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a n19
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a n7
  have c615 : v17 ∨ ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : v16 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
    have u3 : v18 := by
      rcases c429 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
    rcases c77 with a|a|a
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd u3 a
  have c616 : v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v24 := by
      rcases c606 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
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
    have u2 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v19 := by
      rcases c614 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u4 : v17 := by
      rcases c615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u8 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    have u9 : ¬v3 := by
      rcases c556 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n21
    have u10 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n21
      · exact absurd a n15
    have u16 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n16
      · exact a
    have u17 : v1 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n16
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n17
      · exact absurd a u14
      · exact absurd a u13
    rcases c5 with a|a|a
    · exact absurd u17 a
    · exact absurd u16 a
    · exact absurd u15 a
  have c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
  have c618 : v44 ∨ ¬v7 ∨ v9 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n0
      · exact a
    have u2 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u5 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n8
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a u6
    · exact absurd a u7
  have c619 : ¬v19 ∨ ¬v17 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n17
      · exact absurd a n13
    have u6 : v9 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd u5 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u6 a
      · exact a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd n0 a
    · exact absurd a u9
    · exact absurd a u7
  have c620 : v21 ∨ ¬v9 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n7
    have u5 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n12
    have u6 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n8
    rcases c29 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c621 : v28 ∨ ¬v19 ∨ v21 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v17 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : v18 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n7
    have u5 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    have u6 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    have u8 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n16
      · exact a
    have u10 : ¬v7 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
    have u11 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd a n15
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v6 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a u13
    have u16 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n7
    rcases c17 with a|a|a
    · exact absurd u9 a
    · exact absurd u16 a
    · exact absurd u15 a
  have c622 : ¬v25 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v21 := by
      rcases c621 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
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
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    rcases c315 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n6
  have c623 : v19 ∨ v17 ∨ ¬v18 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v16 := by
      rcases c79 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v20 := by
      rcases c91 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact a
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n16
      · exact a
    have u10 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n11
    have u11 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n12
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n15
    rcases c16 with a|a|a
    · exact absurd u9 a
    · exact absurd u11 a
    · exact absurd u10 a
  have c624 : v28 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v21 := by
      rcases c623 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u2 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u3 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u4 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v20 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n20
      · exact absurd a n15
      · exact absurd a n10
    have u8 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n23
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n12
    have u9 : v5 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    rcases c27 with a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd u9 a
  have c625 : v26 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v17 := by
      rcases c624 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
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
      · exact absurd a n23
    have u2 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v4 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u6 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u7 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n23
      · exact absurd a n17
    rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n18
    · exact absurd u9 a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n16
    · exact absurd a n19
    · exact absurd a n22
  have c626 : v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v25 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v19 := by
      rcases c622 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u6 : ¬v18 := by
      rcases c625 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c221 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u5
  have c627 : ¬v18 ∨ ¬v17 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n2 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u3
  have c628 : v45 ∨ ¬v17 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v18 := by
      rcases c627 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v19 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n7
      · exact a
    have u6 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u7 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
    have u10 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n12
    have u11 : v9 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd u10 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n14
    have u12 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u11 a
      · exact a
    rcases c537 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u6
  have c629 : v9 ∨ ¬v7 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v16 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n19
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n22
    have u2 : ¬v6 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
    have u3 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n4 a
    have u4 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n22
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n18
      · exact absurd a n14
    have u5 : v8 := by
      rcases c507 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    rcases c40 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c630 : v20 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n8
    have u5 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n9
    have u6 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n7
    rcases c25 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u4 a
  have c631 : v20 ∨ v13 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n20
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n12
    have u2 : ¬v14 := by
      rcases c630 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v7 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u4 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n21
      · exact absurd a n17
    have u5 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n4 a
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u4 a
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u2
  have c632 : ¬v19 ∨ v17 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v13 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u2 : ¬v14 := by
      rcases c630 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c629 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u6 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n24
      · exact absurd a n19
    have u7 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    rcases c249 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u6 a
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u4
  have c633 : v16 ∨ ¬v13 ∨ v18 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v3 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
    rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
  have c634 : v16 ∨ ¬v3 ∨ v6 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
    have u2 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
    have u3 : v8 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n5
    have u4 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
    rcases c36 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c635 : v13 ∨ v14 ∨ v17 ∨ v18 ∨ ¬v19 ∨ ¬v20 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u3 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n22
      · exact absurd a n17
    have u4 : ¬v6 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v3 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
    have u6 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n19
      · exact absurd a n15
      · exact absurd a n11
    have u7 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v2 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u5
    have u11 : v4 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
    have u12 : v1 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n21
      · exact absurd a u4
      · exact absurd u3 a
      · exact a
      · exact absurd a n22
      · exact absurd a n1
    rcases c2 with a|a|a
    · exact absurd u12 a
    · exact absurd u10 a
    · exact absurd u11 a
  have c636 : v32 ∨ v18 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v17 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
    have u6 : v19 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact a
    have u7 : v20 := by
      rcases c632 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
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
      · exact absurd a n19
      · exact absurd a n20
    have u8 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u9 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u10 : ¬v13 := by
      rcases c633 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u11 : v14 := by
      rcases c635 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
    have u12 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n17
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n0
    have u15 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n11
      · exact absurd a n6
    rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n20
  have c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
  have c638 : v17 ∨ v13 ∨ ¬v18 ∨ ¬v20 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v19 := by
      rcases c89 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v12 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n14
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n15
      · exact a
    have u10 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n10
    rcases c18 with a|a|a
    · exact absurd u6 a
    · exact absurd u9 a
    · exact absurd u10 a
  have c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n3 a
    rcases c470 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
  have c640 : v28 ∨ v13 ∨ ¬v18 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v17 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v20 := by
      rcases c638 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u6 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n17
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n9
    have u7 : v19 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n4
      · exact absurd a u1
    have u8 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u9 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n2 a
    have u10 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n2 a
    have u11 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n15
      · exact a
    have u13 : ¬v7 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u14 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u6 a
    have u15 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u13
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n14
    rcases c639 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd u15 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u8
  have c641 : v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v26 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v17 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v18 := by
      rcases c636 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v13 := by
      rcases c640 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u6 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : v19 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u10
    have u14 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u13 a
    have u15 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u6 a
    have u16 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u13 a
    have u17 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n19
      · exact absurd a n13
    rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd u17 a
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a n15
    · exact absurd a n18
  have c642 : ¬v27 ∨ ¬v18 ∨ ¬v19 ∨ v28 ∨ v33 ∨ v34 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v35 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u1
    have u8 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v36 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n5
    have u11 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u10 a
    rcases c469 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u1
  have c643 : ¬v18 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v19 := by
      rcases c642 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : v20 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
    have u7 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u8 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
    have u11 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n12
    have u13 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n4
    have u16 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n13
      · exact a
    rcases c18 with a|a|a
    · exact absurd u12 a
    · exact absurd u16 a
    · exact absurd u15 a
  exact ⟨c594, c595, c597, c599, c601, c607, c608, c610, c611, c613, c615, c617, c618, c619, c620, c623, c625, c628, c630, c637, c639, c641, c642, c643⟩
