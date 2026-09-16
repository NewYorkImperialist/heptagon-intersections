import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 200-249 of the 2934-step refutation of ccase002: 126 core clauses and 32 earlier-derived ones give 19 more. -/
theorem CCase002_block004
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
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
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c97 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v20)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c125 : ¬v33 ∨ ¬v29)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c137 : ¬v32 ∨ ¬v33)
    (c166 : ¬v43 ∨ ¬v46)
    (c167 : ¬v47 ∨ ¬v43)
    (c176 : ¬v45 ∨ ¬v47)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c206 : v12 ∨ v47 ∨ v3 ∨ v5 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v11)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c239 : v13 ∨ v8 ∨ v48 ∨ v6 ∨ ¬v7 ∨ v1 ∨ v49 ∨ v14)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c306 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v9 ∨ v21 ∨ v8)
    (c317 : ¬v33 ∨ v40 ∨ v41 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v34)
    (c326 : v21 ∨ v13 ∨ v1 ∨ v6 ∨ v15 ∨ v8 ∨ ¬v14 ∨ v7)
    (c340 : ¬v11 ∨ v12 ∨ v18 ∨ v5 ∨ v4 ∨ v3 ∨ v10 ∨ v19)
    (c351 : ¬v33 ∨ v40 ∨ v27 ∨ v26 ∨ v32 ∨ v34 ∨ v41 ∨ v39)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c422 : ¬v34 ∨ v27 ∨ v41 ∨ v40 ∨ v42 ∨ v35 ∨ v26 ∨ v33)
    (c424 : v4 ∨ v6 ∨ v18 ∨ v11 ∨ v13 ∨ v19 ∨ v5 ∨ ¬v12)
    (c449 : v16 ∨ v23 ∨ v18 ∨ v26 ∨ v19 ∨ v10 ∨ ¬v17 ∨ v12 ∨ v24 ∨ v11 ∨ v31 ∨ v37 ∨ v38 ∨ v39)
    (c453 : ¬v4 ∨ v5 ∨ v45 ∨ v12 ∨ v3 ∨ v10 ∨ v11 ∨ v46)
    (c466 : v19 ∨ v10 ∨ v17 ∨ v4 ∨ v18 ∨ v5 ∨ v12 ∨ ¬v11)
    (c483 : ¬v34 ∨ v41 ∨ v42 ∨ v33 ∨ v35 ∨ v28 ∨ v40 ∨ v27)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c529 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v8 ∨ v21 ∨ v14)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c547 : ¬v4 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c549 : v4 ∨ v3 ∨ v5 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c554 : v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c560 : ¬v20 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c564 : v19 ∨ v5 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c581 : ¬v13 ∨ v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c610 : ¬v4 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c619 : ¬v19 ∨ ¬v17 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c620 : v21 ∨ ¬v9 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c625 : v26 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c630 : v20 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c689 : v44 ∨ v4 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c709 : v21 ∨ v4 ∨ ¬v10 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c720 : v16 ∨ ¬v5 ∨ v12 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c724 : v21 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c737 : v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c739 : v24 ∨ ¬v4 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20)
    (c745 : ¬v16 ∨ v9 ∨ v10 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c746 : v20 ∨ ¬v9 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    : (¬v3 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v48 ∨ v49) ∧ (v8 ∨ v1 ∨ v6 ∨ v7 ∨ ¬v14 ∨ v15 ∨ v21) ∧ (¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21) ∧ (v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19) ∧ (¬v7 ∨ ¬v6 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (v18 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49) ∧ (¬v27 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41) ∧ (v16 ∨ v14 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (v44 ∨ ¬v14 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v45 ∨ v48) ∧ (v9 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v24 ∨ ¬v9 ∨ v13 ∨ v16 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (v21 ∨ ¬v2 ∨ v13 ∨ v14 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v48 ∨ v49) ∧ (v18 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (v9 ∨ ¬v4 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45) ∧ (v17 ∨ ¬v4 ∨ v14 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v49) ∧ (v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42) ∧ (v4 ∨ v14 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c747 : ¬v16 ∨ v10 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v9 := by
      rcases c745 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
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
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u2 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v21 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u1 a
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u5 : v15 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a u2
    rcases c62 with a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u5 a
  have c748 : v16 ∨ ¬v9 ∨ v10 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n17
      · exact absurd a n14
    have u4 : v17 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c449 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c749 : ¬v3 ∨ ¬v2 ∨ v4 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
    have u4 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    rcases c352 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u4
  have c750 : ¬v21 ∨ v10 ∨ v19 ∨ v20 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v32 := by
      rcases c737 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v16 := by
      rcases c747 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : ¬v18 := by
      rcases c625 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u13 : ¬v4 := by
      rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u14 : ¬v9 := by
      rcases c748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u15 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n13
      · exact a
    have u16 : ¬v3 := by
      rcases c749 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n16
    have u17 : v5 := by
      rcases c549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u18 : ¬v13 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n14
    have u19 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u15 a
      · exact absurd u17 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n17
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a n5
  have c751 : v37 ∨ v10 ∨ v20 ∨ ¬v21 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v32 := by
      rcases c737 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
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
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v25 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v19 := by
      rcases c750 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
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
    have u9 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u10 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u11 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a u2
    have u12 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n5
    have u14 : v5 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c27 with a|a|a
    · exact absurd u13 a
    · exact absurd u11 a
    · exact absurd u14 a
  have c752 : v21 ∨ v10 ∨ v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
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
    have u2 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n10
    have u3 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n17
      · exact a
    have u4 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
    have u6 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n19
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n15
      · exact absurd a n11
    have u7 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n20
      · exact absurd a n16
    rcases c56 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c753 : v37 ∨ v10 ∨ v20 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v32 := by
      rcases c737 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v21 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : ¬v16 := by
      rcases c747 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
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
    have u13 : v17 := by
      rcases c752 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v19 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v18 := by
      rcases c625 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
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
    have u16 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u13 a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u10
    have u17 : v15 := by
      rcases c97 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a n2
    have u18 : v8 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u9
      · exact a
      · exact absurd a u11
      · exact absurd a u16
    have u19 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u18 a
      · exact a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u13 a
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a u20
  have c754 : ¬v3 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : v8 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n3
    have u5 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
    rcases c36 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c755 : v30 ∨ v10 ∨ v13 ∨ v14 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n19
      · exact absurd a n15
    have u2 : v19 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u2 a
    have u4 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u2 a
    have u5 : ¬v3 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n17
    · exact absurd a n14
    · exact absurd a n11
  have c756 : v37 ∨ ¬v9 ∨ v10 ∨ ¬v20 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
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
    have u4 : v21 := by
      rcases c755 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
    have u5 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u6 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u4 a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u8 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n19
    · exact absurd a n14
  have c757 : v26 ∨ v9 ∨ v10 ∨ ¬v20 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u5 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n13
      · exact a
    have u6 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n8
    have u7 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u10 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n12
    have u11 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u10 a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd u10 a
  have c758 : v9 ∨ v10 ∨ v19 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : ¬v21 := by
      rcases c757 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
    have u2 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u4 : v5 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n23
    have u5 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u8 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n25
      · exact absurd a n19
    rcases c33 with a|a|a
    · exact absurd u4 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c759 : v8 ∨ v1 ∨ v6 ∨ v7 ∨ ¬v14 ∨ v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n4 a
      · exact a
    rcases c326 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd a n3
  have c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    rcases c759 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c761 : v35 ∨ v10 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v32 := by
      rcases c737 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
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
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : v20 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
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
      · exact absurd a n15
    have u12 : ¬v9 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v21 := by
      rcases c757 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd u11 a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u14 : v19 := by
      rcases c758 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u14 a
    have u17 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u14 a
    have u18 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n10
      · exact a
    have u19 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a u2
    have u20 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u21 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u23 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u13
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n15
    · exact absurd a n9
  have c762 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v19 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u2 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n20
      · exact absurd a n14
    have u3 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u6 : ¬v3 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
    have u7 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n10
    have u9 : ¬v4 := by
      rcases c724 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u10 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    rcases c222 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u3
  have c763 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v21 := by
      rcases c762 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u5 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n20
    · exact absurd a n15
  have c764 : v12 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v15 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a n3
    have u2 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n17
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n11
    have u3 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u1 a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n14
      · exact a
    have u7 : v7 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd u2 a
      · exact a
      · exact absurd a n17
      · exact absurd a n3
    rcases c23 with a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd u2 a
  have c765 : v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v10 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
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
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v32 := by
      rcases c737 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u9 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v25 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v20 := by
      rcases c763 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n13
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n1
    have u19 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u18 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u20 : ¬v21 := by
      rcases c764 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u17
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u21 : v19 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd u1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u22 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n14
      · exact absurd a n8
    have u23 : v18 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd u21 a
      · exact absurd a u4
      · exact absurd a u2
    have u24 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u18 a
    have u25 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a u24
  have c766 : v20 ∨ ¬v16 ∨ v17 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n22
      · exact absurd a n23
    have u2 : v15 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u4 : v4 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n23
    have u5 : ¬v14 := by
      rcases c630 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n23
      · exact absurd a n17
    have u7 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u4 a
    have u9 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n22
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n12
    rcases c547 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u8
    · exact absurd u9 a
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a n17
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n23
  have c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n4 a
      · exact a
    rcases c340 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
  have c768 : ¬v7 ∨ ¬v6 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v12 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
    rcases c767 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a n4
  have c769 : v18 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n16
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n10
    have u2 : ¬v7 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
    have u3 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n14
    have u4 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v1 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n9
    have u9 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u1 a
    have u11 : v47 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u12 : v45 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n15
    rcases c176 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c770 : v25 ∨ ¬v16 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v17 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
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
    have u2 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u5 : v13 := by
      rcases c769 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
    have u6 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n22
      · exact absurd a n16
    have u10 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a n19
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n10
    have u11 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u9 a
    rcases c206 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n20
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u10 a
    · exact absurd a n19
    · exact absurd a n18
    · exact absurd a u8
  have c771 : ¬v27 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n1 a
    rcases c317 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n2
  have c772 : v21 ∨ ¬v13 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n9
      · exact a
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n8
    have u7 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u5 a
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a u3
  have c773 : v16 ∨ v14 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n17
      · exact absurd a n13
    have u2 : ¬v13 := by
      rcases c772 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u3 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n9
    have u4 : ¬v3 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u6 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u7 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u6
    have u8 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v15 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a n0
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a n1
  have c774 : v44 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v16 := by
      rcases c770 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : v14 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd a n22
      · exact absurd a n23
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n0
      · exact a
    have u7 : ¬v15 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u3
    have u8 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n22
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n17
      · exact absurd a n12
    have u9 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u8 a
    rcases c639 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd u2 a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n2
  have c775 : v44 ∨ ¬v14 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n0
      · exact a
    have u6 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n7
    have u7 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a u4
  have c776 : v9 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
      · exact a
    have u2 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n7
    have u3 : ¬v14 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    have u4 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    rcases c396 with a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd a n12
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a n13
    · exact absurd a u5
    · exact absurd a n1
  have c777 : v16 ∨ ¬v13 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v15 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v3 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
    have u3 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n18
  have c778 : v47 ∨ v16 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v14 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n21
    have u2 : ¬v13 := by
      rcases c777 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n21
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n13
    have u4 : v9 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n0
      · exact absurd a n21
      · exact absurd a n22
    have u5 : v15 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u1
    have u6 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n21
      · exact absurd a n22
    have u7 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u5 a
      · exact absurd n3 a
      · exact a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n20
    · exact absurd a n16
    · exact absurd a n7
    · exact absurd a n12
  have c779 : v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v16 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n19
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
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c630 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u6 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u5
  have c780 : v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v21 := by
      rcases c774 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    rcases c779 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
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
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n22
  have c781 : ¬v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u5 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u5 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u7
  have c782 : v24 ∨ ¬v9 ∨ v13 ∨ v16 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v19 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a u3
    have u5 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n18
      · exact absurd a n14
    have u6 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u4 a
    have u7 : ¬v3 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a n13
    · exact absurd a n10
  have c783 : v21 ∨ ¬v2 ∨ v13 ∨ v14 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n11
    have u2 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u5 : v8 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n3
    have u6 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n8
    have u9 : v19 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    rcases c89 with a|a|a
    · exact absurd u8 a
    · exact absurd n4 a
    · exact absurd u9 a
  have c784 : v24 ∨ v13 ∨ v16 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v9 := by
      rcases c782 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
    have u2 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n17
      · exact a
    have u3 : v14 := by
      rcases c783 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v4 := by
      rcases c724 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u10 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a n19
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a n11
    have u11 : ¬v19 := by
      rcases c89 with a|a|a
      · exact absurd u10 a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u10 a
      · exact absurd n3 a
      · exact a
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u6
  have c785 : v18 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n13
      · exact a
    have u5 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n9
    have u6 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n8
    rcases c15 with a|a|a
    · exact absurd u4 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c786 : v9 ∨ ¬v4 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
      · exact a
    have u2 : ¬v5 := by
      rcases c19 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u5 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n7
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v43 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u8
    have u10 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v46 := by
      rcases c166 with a|a
      · exact absurd u9 a
      · exact a
    rcases c206 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u11
    · exact absurd a n11
    · exact absurd a u7
  have c787 : v17 ∨ ¬v4 ∨ v14 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v9 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n9
    have u5 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u6 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u6
  have c788 : v25 ∨ v16 ∨ ¬v20 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u5 : ¬v14 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v4 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
    have u7 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n9
    have u8 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v5 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd u7 a
    rcases c720 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u10 a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c789 : v21 ∨ v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v13 := by
      rcases c784 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v3 := by
      rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
    have u5 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n18
      · exact a
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n23
      · exact absurd a n17
    rcases c18 with a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c790 : v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v33 := by
      rcases c765 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c771 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v26 := by
      rcases c351 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n4
    have u8 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v20 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u10
    have u15 : ¬v21 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd u13 a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd u13 a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n1
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
    · exact absurd a n13
  have c791 : v27 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v28 := by
      rcases c483 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    rcases c422 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n1
  have c792 : v14 ∨ ¬v3 ∨ v9 ∨ v16 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n14
      · exact a
    have u2 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n13
    have u7 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u6 a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n4 a
    have u9 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a n12
    have u10 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd u9 a
  have c793 : v17 ∨ v4 ∨ v10 ∨ v14 ∨ v16 ∨ ¬v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n22
      · exact absurd a n17
      · exact absurd a n12
    have u2 : v9 := by
      rcases c792 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n24
      · exact absurd a n25
    have u3 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a n23
      · exact absurd a n18
      · exact absurd a n8
      · exact absurd a n13
    have u6 : v19 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
    rcases c89 with a|a|a
    · exact absurd u5 a
    · exact absurd n5 a
    · exact absurd u6 a
  have c794 : ¬v9 ∨ ¬v3 ∨ v4 ∨ v14 ∨ v16 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd a n11
    have u6 : ¬v7 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v19 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u8 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n19
      · exact absurd a n15
    rcases c90 with a|a|a
    · exact absurd u8 a
    · exact absurd u5 a
    · exact absurd u7 a
  have c795 : v33 ∨ v4 ∨ v10 ∨ v14 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n22
      · exact absurd a n17
      · exact absurd a n13
    have u2 : ¬v20 := by
      rcases c793 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
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
      · exact absurd a n26
    have u3 : ¬v9 := by
      rcases c794 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n25
      · exact absurd a n26
    have u4 : v2 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n22
      · exact a
      · exact absurd a n21
      · exact absurd a n2
      · exact absurd a n23
      · exact absurd a u3
    have u5 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
    have u6 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n26
      · exact absurd a n20
    have u7 : v19 := by
      rcases c749 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd a n24
    have u8 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u10 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v13 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n23
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u11
  have c796 : v4 ∨ v14 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v10 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
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
      · exact absurd a n25
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u8 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n20
      · exact a
    have u9 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a n22
      · exact absurd a n17
      · exact absurd a n7
      · exact absurd a n12
    have u10 : v19 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n8
      · exact a
      · exact absurd a n23
      · exact absurd a n18
    have u11 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    have u12 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n25
      · exact absurd a n19
    have u13 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u12 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n24
    · exact absurd a u13
    · exact absurd u12 a
    · exact absurd a u14
    · exact absurd a n25
    · exact absurd a n1
  exact ⟨c754, c759, c760, c767, c768, c769, c771, c773, c775, c776, c780, c782, c783, c785, c786, c787, c790, c791, c796⟩
