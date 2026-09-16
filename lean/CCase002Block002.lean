import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 100-149 of the 2934-step refutation of ccase002: 119 core clauses and 25 earlier-derived ones give 22 more. -/
theorem CCase002_block002
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c28 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
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
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c94 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v17)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c206 : v12 ∨ v47 ∨ v3 ∨ v5 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v11)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c233 : ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v15 ∨ v34 ∨ v27 ∨ v22)
    (c239 : v13 ∨ v8 ∨ v48 ∨ v6 ∨ ¬v7 ∨ v1 ∨ v49 ∨ v14)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c254 : v29 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v34 ∨ v20 ∨ v27 ∨ v22)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c298 : ¬v28 ∨ v35 ∨ v14 ∨ v34 ∨ v18 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v25 ∨ v27 ∨ v32 ∨ v21 ∨ v15)
    (c316 : v29 ∨ ¬v30 ∨ v22 ∨ v31 ∨ v24 ∨ v23 ∨ v38 ∨ v37)
    (c326 : v21 ∨ v13 ∨ v1 ∨ v6 ∨ v15 ∨ v8 ∨ ¬v14 ∨ v7)
    (c329 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v18 ∨ v4 ∨ v1 ∨ v3 ∨ ¬v11 ∨ v8 ∨ v10 ∨ v12 ∨ v9 ∨ v26)
    (c349 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v9 ∨ v21 ∨ v14 ∨ v8)
    (c366 : ¬v17 ∨ v18 ∨ v24 ∨ v23 ∨ v25 ∨ v9 ∨ v10 ∨ v16)
    (c371 : v15 ∨ v48 ∨ v19 ∨ v46 ∨ v20 ∨ v1 ∨ v4 ∨ v47 ∨ ¬v12 ∨ v13 ∨ v5 ∨ v8 ∨ v14 ∨ v11)
    (c373 : ¬v16 ∨ v22 ∨ v24 ∨ v23 ∨ v15 ∨ v9 ∨ v10 ∨ v17)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c390 : v12 ∨ v15 ∨ v18 ∨ v46 ∨ v1 ∨ v4 ∨ v5 ∨ v10 ∨ v8 ∨ v17 ∨ v9 ∨ v45 ∨ ¬v11 ∨ v47)
    (c398 : v21 ∨ v49 ∨ v20 ∨ ¬v13 ∨ v5 ∨ v16 ∨ v2 ∨ v6 ∨ v14 ∨ v12 ∨ v8 ∨ v47 ∨ v48 ∨ v9)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c460 : ¬v27 ∨ v34 ∨ v20 ∨ v35 ∨ v21 ∨ v19 ∨ v28 ∨ v26)
    (c466 : v19 ∨ v10 ∨ v17 ∨ v4 ∨ v18 ∨ v5 ∨ v12 ∨ ¬v11)
    (c507 : ¬v16 ∨ v22 ∨ v24 ∨ v23 ∨ v15 ∨ v8 ∨ v17 ∨ v9)
    (c522 : ¬v24 ∨ v31 ∨ v17 ∨ v35 ∨ v16 ∨ v23 ∨ v21 ∨ v28 ∨ v25 ∨ v32 ∨ v37 ∨ v22 ∨ v38 ∨ v39)
    (c526 : v26 ∨ v44 ∨ v3 ∨ v18 ∨ v2 ∨ v46 ∨ v45 ∨ v5 ∨ v24 ∨ v25 ∨ v12 ∨ v9 ∨ ¬v4 ∨ v11)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c545 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c546 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c547 : ¬v4 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c549 : v4 ∨ v3 ∨ v5 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c554 : v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c563 : ¬v3 ∨ ¬v5 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c564 : v19 ∨ v5 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c566 : v21 ∨ ¬v3 ∨ ¬v4 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c576 : v25 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ ¬v21 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c581 : ¬v13 ∨ v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c601 : v48 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c610 : ¬v4 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c620 : v21 ∨ ¬v9 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c641 : v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c643 : ¬v18 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    : (v19 ∨ ¬v9 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24) ∧ (¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28) ∧ (¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26) ∧ (v31 ∨ v18 ∨ ¬v19 ∨ ¬v20 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v6 ∨ ¬v10 ∨ v18 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47) ∧ (v40 ∨ v13 ∨ v18 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v17 ∨ ¬v18 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (v20 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48) ∧ (¬v28 ∨ ¬v18 ∨ v20 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48) ∧ (v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v25 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39) ∧ (¬v30 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39) ∧ (¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49) ∧ (v21 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v34 ∨ ¬v18 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v21 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v44 ∨ v4 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49) ∧ (¬v20 ∨ ¬v4 ∨ ¬v7 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47) ∧ (v24 ∨ v21 ∨ v22 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ v18 ∨ ¬v21 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c644 : v16 ∨ v3 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
    have u2 : v15 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n2
    have u3 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u1 a
    rcases c349 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u5
  have c645 : v16 ∨ v18 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n24
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v3 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n25
    have u3 : ¬v13 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n25
    have u4 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u1 a
      · exact a
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u5 : v17 := by
      rcases c644 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n21
    have u6 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n25
      · exact absurd a n19
    have u8 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u7 a
    have u9 : v8 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n24
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a n25
      · exact absurd a u6
    have u10 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u7 a
    have u11 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n20
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a n22
    · exact absurd a n21
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd u1 a
    · exact absurd a u13
  have c646 : v19 ∨ ¬v9 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
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
    have u4 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n9
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n12
    have u5 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n7
    have u6 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n8
    rcases c24 with a|a|a
    · exact absurd u4 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c647 : v26 ∨ ¬v2 ∨ ¬v3 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n9
    rcases c51 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c648 : v16 ∨ v18 ∨ v19 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v21 := by
      rcases c645 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u2 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u3 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n1
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
    have u4 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n20
      · exact a
    have u5 : ¬v3 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
      · exact absurd a n23
    have u6 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n21
      · exact absurd a n16
      · exact absurd a n11
    have u7 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v4 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
    have u10 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n13
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n23
      · exact absurd a n18
    rcases c19 with a|a|a
    · exact absurd u4 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v10 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
    have u2 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u1 a
    rcases c507 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n0
  have c650 : v44 ∨ v18 ∨ v19 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v20 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n2
    have u7 : v16 := by
      rcases c648 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
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
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u8 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u5
  have c651 : v3 ∨ v18 ∨ ¬v19 ∨ ¬v20 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
    have u4 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v2 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
    have u8 : v4 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u2
    have u9 : v5 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd u8 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u6
    rcases c19 with a|a|a
    · exact absurd u7 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c652 : ¬v19 ∨ v3 ∨ v18 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v20 := by
      rcases c651 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v21 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n4
      · exact a
    have u7 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u8 : ¬v13 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n16
    have u9 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n6
    have u10 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u9 a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
  have c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
  have c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c40 with a|a
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
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
  have c655 : ¬v19 ∨ ¬v3 ∨ v18 ∨ v20 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
    have u6 : v21 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n5
      · exact a
    have u7 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u8 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u9 : ¬v13 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v14 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u9
    have u11 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u10 a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u12
  have c656 : v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v27 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
    have u5 : v19 := by
      rcases c650 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a u4
      · exact a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v3 := by
      rcases c652 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u4
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v20 := by
      rcases c655 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact absurd a u4
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n15
    have u8 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u9 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u10 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u11 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u12 : ¬v5 := by
      rcases c563 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u13 : ¬v4 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u6 a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n18
    have u14 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n3
    have u15 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n13
      · exact a
    have u20 : v1 := by
      rcases c390 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n15
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n14
      · exact absurd u14 a
      · exact absurd a n16
    rcases c1 with a|a|a
    · exact absurd u20 a
    · exact absurd u19 a
    · exact absurd u6 a
  have c657 : ¬v28 ∨ ¬v11 ∨ v13 ∨ v15 ∨ v18 ∨ v21 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    rcases c298 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n3
  have c658 : ¬v4 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
      · exact a
    have u4 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n7
    rcases c15 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c659 : v17 ∨ v13 ∨ v15 ∨ v16 ∨ v18 ∨ v21 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v11 := by
      rcases c657 with a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a n9
    have u9 : ¬v14 := by
      rcases c658 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v8 := by
      rcases c298 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n2
    have u11 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n15
      · exact a
    have u14 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n8
    rcases c15 with a|a|a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd u8 a
  have c660 : v31 ∨ v18 ∨ ¬v19 ∨ ¬v20 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u5 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : v13 := by
      rcases c659 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n4 a
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
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v3 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a n10
    · exact absurd a n0
  have c661 : v18 ∨ ¬v13 ∨ v19 ∨ ¬v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v17 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
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
      · exact absurd a n16
    have u4 : v16 := by
      rcases c366 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact a
    rcases c75 with a|a|a
    · exact absurd u4 a
    · exact absurd n3 a
    · exact absurd u3 a
  have c662 : v10 ∨ v13 ∨ ¬v17 ∨ v18 ∨ ¬v20 ∨ ¬v28 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u4 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u9
    have u11 : v8 := by
      rcases c298 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
    have u12 : v9 := by
      rcases c366 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u2
    rcases c36 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c663 : ¬v20 ∨ v10 ∨ v18 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v19 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v13 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v17 := by
      rcases c662 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n5
    have u10 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u11 : ¬v2 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u12 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u11
    have u13 : v15 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u1
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u8
    rcases c61 with a|a|a
    · exact absurd u12 a
    · exact absurd u13 a
    · exact absurd n0 a
  have c664 : v31 ∨ v18 ∨ ¬v20 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v19 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
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
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v10 := by
      rcases c663 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
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
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n12
    have u13 : v21 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd n2 a
    have u14 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n5
    have u15 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u14 a
    have u16 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n2 a
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a u15
  have c665 : ¬v6 ∨ ¬v10 ∨ v18 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v19 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n7
    have u5 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n10
    rcases c30 with a|a|a
    · exact absurd u5 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c667 : v40 ∨ v13 ∨ v18 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n21
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n12
    have u2 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : ¬v10 := by
      rcases c665 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n19
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a n10
    have u5 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v19 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n11
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n20
      · exact absurd a n0
    have u10 : v21 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n21
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u11 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u12 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u13 : v15 := by
      rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u14 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n9
    rcases c66 with a|a|a
    · exact absurd u13 a
    · exact absurd u10 a
    · exact absurd u14 a
  have c668 : v45 ∨ v18 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v28 := by
      rcases c656 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v20 := by
      rcases c664 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v13 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v19 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
    have u14 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n4
    have u15 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n16
      · exact absurd a n11
    have u16 : ¬v3 := by
      rcases c546 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u17 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u15 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u15 a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v21 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n0
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd u9 a
    · exact absurd a u18
    · exact absurd a u10
  have c669 : ¬v17 ∨ ¬v18 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n2 a
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u4
  have c670 : v20 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
    have u5 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n8
    have u6 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n12
    have u7 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n10
    rcases c27 with a|a|a
    · exact absurd u7 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c671 : ¬v28 ∨ ¬v18 ∨ v20 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v17 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v19 := by
      rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u9 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u3
  have c672 : v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v28 := by
      rcases c656 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v18 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v17 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v20 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v19 := by
      rcases c89 with a|a|a
      · exact absurd u6 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
    have u12 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
    have u13 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    rcases c528 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd u8 a
  have c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v19 := by
      rcases c89 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
    have u5 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    rcases c528 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd n2 a
  have c674 : ¬v24 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v25 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    rcases c522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a n11
  have c675 : ¬v24 ∨ v16 ∨ v17 ∨ v21 ∨ v25 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    rcases c674 with a|a|a|a|a|a|a|a|a|a|a|a
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
  have c676 : ¬v30 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c675 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v26 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u6 a
    rcases c316 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n8
  have c677 : ¬v25 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n1 a
      · exact a
    rcases c316 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
  have c678 : ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n1 a
      · exact a
    rcases c316 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
  have c679 : ¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n6
    have u4 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n9
    rcases c29 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c680 : v17 ∨ ¬v6 ∨ v9 ∨ v14 ∨ v16 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n11
    have u2 : ¬v11 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
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
    have u3 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n8
    rcases c419 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n2
  have c681 : v21 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n19
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n15
      · exact absurd a n10
    have u2 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v14 := by
      rcases c680 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n9
    have u6 : ¬v5 := by
      rcases c27 with a|a|a
      · exact absurd u1 a
      · exact absurd u5 a
      · exact a
    rcases c554 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n15
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
  have c682 : v20 ∨ v17 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v19 := by
      rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u3 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
    have u6 : v13 := by
      rcases c681 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u7 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n8
    have u12 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n21
      · exact absurd a n17
    have u13 : ¬v5 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    have u14 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u11 a
      · exact absurd u12 a
      · exact a
    rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n21
    · exact absurd a n0
    · exact absurd u6 a
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a u5
  have c683 : v19 ∨ ¬v3 ∨ v4 ∨ ¬v7 ∨ v15 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
    have u2 : ¬v5 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
    have u3 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n8
    have u4 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u3 a
    rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd u3 a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u6
  have c684 : v15 ∨ v4 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n25
      · exact absurd a n19
    have u2 : ¬v27 := by
      rcases c460 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n8
    have u3 : ¬v3 := by
      rcases c683 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u4 : v5 := by
      rcases c549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u5 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
    have u6 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n24
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n18
      · exact absurd a n13
    have u7 : v12 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd u4 a
      · exact a
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    rcases c54 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c685 : v16 ∨ v4 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : ¬v27 := by
      rcases c460 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n8
    have u2 : v14 := by
      rcases c684 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
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
      · exact absurd a n26
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n25
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n19
      · exact absurd a n14
    have u6 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n13
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n24
      · exact absurd a n18
    have u7 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u8 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    rcases c639 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
  have c686 : v34 ∨ ¬v18 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v30 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v27 := by
      rcases c678 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v25 := by
      rcases c677 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v20 := by
      rcases c676 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v17 := by
      rcases c682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u7 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
    have u8 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u9 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u10 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u11 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c685 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
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
    · exact absurd a n19
    · exact absurd a n20
  have c687 : v21 ∨ v20 ∨ v22 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v30 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v27 := by
      rcases c678 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v25 := by
      rcases c677 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v23 := by
      rcases c316 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n9
    have u6 : ¬v28 := by
      rcases c254 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v18 := by
      rcases c686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
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
    have u9 : v13 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v19 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u3
    have u13 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a n17
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n5
    rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
  have c688 : v21 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
    rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n19
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c689 : v44 ∨ v4 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n9
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n8
    have u6 : v2 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a n14
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a u3
    have u7 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n13
    rcases c18 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c690 : ¬v20 ∨ ¬v4 ∨ ¬v7 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v19 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
    have u6 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
    have u8 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n9
    have u9 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    rcases c386 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u1
  have c691 : v24 ∨ v21 ∨ v22 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v30 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v23 := by
      rcases c316 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n8
    have u4 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
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
    have u8 : ¬v18 := by
      rcases c686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u5
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : v19 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u10 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
    have u11 : v4 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u12 : v20 := by
      rcases c687 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u13 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u9 a
    have u14 : ¬v7 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n17
    have u15 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n19
      · exact absurd a n13
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u11 a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u20 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n3
    have u21 : v1 := by
      rcases c326 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a u14
    rcases c6 with a|a|a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd u11 a
  have c692 : ¬v4 ∨ v18 ∨ ¬v20 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v3 := by
      rcases c576 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n8
    have u7 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v2 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n18
      · exact absurd a n14
    rcases c19 with a|a|a
    · exact absurd u9 a
    · exact absurd u10 a
    · exact absurd n0 a
  have c693 : v18 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v13 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
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
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v15 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v19 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n22
  have c694 : v26 ∨ v18 ∨ ¬v21 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v20 := by
      rcases c693 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v4 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u5 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n20
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n9
    have u6 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v5 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
    have u9 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n19
      · exact absurd a n13
      · exact absurd a n8
    have u10 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    rcases c27 with a|a|a
    · exact absurd u10 a
    · exact absurd u9 a
    · exact absurd u8 a
  exact ⟨c646, c649, c653, c654, c660, c665, c667, c669, c670, c671, c672, c673, c674, c676, c679, c681, c686, c688, c689, c690, c691, c694⟩
