import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 50-99 of the 2915-step refutation of ccase001: 126 core clauses and 16 earlier-derived ones give 32 more. -/
theorem CCase001_block001
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
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
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c107 : ¬v22 ∨ ¬v28)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c201 : ¬v30 ∨ v23 ∨ v40 ∨ v17 ∨ v16 ∨ v31 ∨ v26 ∨ v38 ∨ v37 ∨ v32 ∨ v33 ∨ v22 ∨ v15 ∨ v29)
    (c212 : ¬v27 ∨ v34 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v33 ∨ v28)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c216 : ¬v21 ∨ v28 ∨ v8 ∨ v14 ∨ v20 ∨ v27 ∨ v13 ∨ v15)
    (c220 : ¬v26 ∨ v33 ∨ v34 ∨ v20 ∨ v25 ∨ v27 ∨ v19 ∨ v32)
    (c230 : ¬v25 ∨ v18 ∨ v19 ∨ v31 ∨ v26 ∨ v33 ∨ v24 ∨ v32)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c244 : ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v22 ∨ v15 ∨ v27 ∨ v34)
    (c251 : ¬v16 ∨ v22 ∨ v17 ∨ v9 ∨ v8 ∨ v15 ∨ v23 ∨ v10)
    (c257 : ¬v18 ∨ v25 ∨ v13 ∨ v12 ∨ v11 ∨ v32 ∨ v24 ∨ v19 ∨ v20 ∨ v27 ∨ v38 ∨ v17 ∨ v39 ∨ v40)
    (c263 : ¬v20 ∨ v35 ∨ v9 ∨ v27 ∨ v33 ∨ v34 ∨ v21 ∨ v15 ∨ v16 ∨ v19 ∨ v13 ∨ v26 ∨ v14 ∨ v23)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c273 : ¬v27 ∨ v34 ∨ v19 ∨ v35 ∨ v20 ∨ v33 ∨ v26 ∨ v28)
    (c287 : ¬v30 ∨ v23 ∨ v1 ∨ v28 ∨ v22 ∨ v3 ∨ v2 ∨ v37 ∨ v31 ∨ v35 ∨ v29 ∨ v38 ∨ v42 ∨ v44)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c337 : ¬v30 ∨ v37 ∨ v22 ∨ v23 ∨ v24 ∨ v38 ∨ v31 ∨ v29)
    (c344 : v22 ∨ v13 ∨ v17 ∨ v10 ∨ v1 ∨ v23 ∨ v3 ∨ ¬v16 ∨ v20 ∨ v9 ∨ v21 ∨ v2 ∨ v15 ∨ v27)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c401 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v25)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c435 : ¬v19 ∨ v13 ∨ v18 ∨ v20 ∨ v26 ∨ v25 ∨ v12 ∨ v27)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c441 : ¬v24 ∨ v31 ∨ v17 ∨ v32 ∨ v25 ∨ v18 ∨ v23 ∨ v16)
    (c466 : ¬v10 ∨ v9 ∨ v17 ∨ v16 ∨ v2 ∨ v4 ∨ v11 ∨ v3)
    (c472 : v20 ∨ v11 ∨ v14 ∨ v17 ∨ v10 ∨ v19 ∨ v7 ∨ v6 ∨ ¬v13 ∨ v12 ∨ v3 ∨ v47 ∨ v48 ∨ v49)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c533 : ¬v20 ∨ v27 ∨ v14 ∨ v13 ∨ v21 ∨ v8 ∨ v26 ∨ v15 ∨ v41 ∨ v22 ∨ v34 ∨ v40 ∨ v19 ∨ v42)
    (c558 : ¬v20 ∨ v27 ∨ v12 ∨ v26 ∨ v28 ∨ v21 ∨ v13 ∨ v19)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c582 : ¬v26 ∨ v33 ∨ v18 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v19)
    (c600 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26 ∨ v10 ∨ v19 ∨ v17)
    (c616 : ¬v4 ∨ ¬v10 ∨ ¬v12 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c617 : v21 ∨ ¬v4 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c619 : v21 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c626 : v20 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v48)
    (c634 : v20 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48)
    (c639 : ¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c641 : ¬v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c654 : ¬v11 ∨ ¬v5 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c655 : v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c656 : ¬v11 ∨ ¬v2 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c657 : ¬v20 ∨ ¬v25 ∨ v26 ∨ v32 ∨ v33)
    (c658 : ¬v19 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c659 : v23 ∨ ¬v11 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c660 : v4 ∨ v2 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c661 : ¬v12 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    : (¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34) ∧ (¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v11 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35) ∧ (v21 ∨ ¬v2 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v9 ∨ ¬v4 ∨ ¬v5 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49) ∧ (¬v16 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (v2 ∨ ¬v3 ∨ v10 ∨ ¬v12 ∨ v16 ∨ v17 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48) ∧ (¬v19 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v27) ∧ (v18 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v19 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v27) ∧ (v46 ∨ v2 ∨ ¬v3 ∨ v10 ∨ v16 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48) ∧ (¬v19 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (v10 ∨ ¬v2 ∨ v12 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v17 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (v15 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v19 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35) ∧ (v27 ∨ ¬v3 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v48) ∧ (v25 ∨ v10 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v47 ∨ ¬v10 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42) ∧ (v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38) ∧ (v25 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (v16 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34) ∧ (v23 ∨ ¬v19 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40) ∧ (v17 ∨ v16 ∨ v23 ∨ ¬v24 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40) ∧ (¬v11 ∨ v10 ∨ ¬v13 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23) ∧ (v11 ∨ ¬v6 ∨ v10 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v17 ∨ v23 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v25 ∨ ¬v16 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c662 : v20 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v2 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v3 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n23
      · exact absurd a n24
    have u3 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
    have u4 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u3 a
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n23
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n14
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n24
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n19
    rcases c25 with a|a|a
    · exact absurd u1 a
    · exact absurd u6 a
    · exact absurd u7 a
  have c663 : v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v25 := by
      rcases c655 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v19 := by
      rcases c658 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v20 := by
      rcases c657 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v18 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n5
    have u7 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u12 : ¬v11 := by
      rcases c659 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u3
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u13 : ¬v12 := by
      rcases c662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
    have u14 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a n18
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n12
    have u15 : v6 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n18
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a u13
    have u16 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u14 a
      · exact absurd u15 a
      · exact a
    have u19 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n4
    have u20 : v9 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
    have u21 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd a u18
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n14
    rcases c57 with a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u19 a
  have c664 : v28 ∨ v2 ∨ v11 ∨ v12 ∨ v20 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v19 := by
      rcases c220 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n9
    have u5 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a u5
      · exact absurd a u1
    have u10 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n20
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n15
    have u11 : ¬v5 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u10 a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n22
    have u12 : v3 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n21
      · exact a
      · exact absurd a n20
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n19
      · exact absurd u10 a
    have u13 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u10 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u12 a
      · exact absurd u10 a
      · exact a
    have u15 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n22
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n11
    have u16 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n23
      · exact absurd a u14
      · exact a
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n17
    rcases c63 with a|a|a
    · exact absurd u9 a
    · exact absurd u15 a
    · exact absurd u16 a
  have c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n1 a
    rcases c582 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
  have c666 : v27 ∨ v2 ∨ v12 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v20 := by
      rcases c665 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v19 := by
      rcases c220 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a u6
      · exact absurd a u1
    have u10 : v11 := by
      rcases c664 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd n3 a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u11 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    have u13 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    have u14 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n6
    have u15 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n1
      · exact a
    have u16 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n9
    rcases c8 with a|a|a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd u16 a
  have c667 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n11
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
    have u4 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    rcases c72 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n0 a
  have c668 : ¬v2 ∨ ¬v11 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v5 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
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
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v3 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n22
    have u3 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
    have u4 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v6 := by
      rcases c656 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n21
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n16
    · exact absurd a n12
  have c669 : v45 ∨ v12 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c665 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v19 := by
      rcases c220 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v2 := by
      rcases c666 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
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
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u11 : ¬v11 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u12 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a n17
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n13
    have u13 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u10 a
    have u14 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n18
    · exact absurd a u14
    · exact absurd a n17
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd u12 a
  have c670 : v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v26 := by
      rcases c663 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v20 := by
      rcases c665 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v19 := by
      rcases c220 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n4
    have u7 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v12 := by
      rcases c669 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u12 : ¬v3 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
    have u13 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n3
    have u14 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u13 a
    have u15 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd u13 a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v4 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u11 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd u13 a
    · exact absurd a u15
  have c671 : v20 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v21 := by
      rcases c212 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
    have u2 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    rcases c273 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
  have c672 : v21 ∨ ¬v2 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n12
    have u2 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u5 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd u1 a
    have u6 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
    have u7 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n13
    rcases c68 with a|a|a
    · exact absurd u5 a
    · exact absurd u7 a
    · exact absurd u6 a
  have c673 : ¬v2 ∨ ¬v10 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n9
    have u4 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    rcases c24 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c674 : v21 ∨ ¬v2 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v11 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n26
    have u2 : ¬v10 := by
      rcases c673 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n24
      · exact absurd a n26
    have u3 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n17
      · exact absurd a n22
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
    have u4 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u6 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u7 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n26
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a n20
    have u8 : v12 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u5
    rcases c71 with a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd u1 a
  have c675 : v19 ∨ v2 ∨ ¬v9 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u5 : v3 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n4
    have u6 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n1
      · exact a
    rcases c7 with a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c676 : ¬v9 ∨ ¬v4 ∨ ¬v5 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    have u4 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    rcases c57 with a|a|a
    · exact absurd n0 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c677 : v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v27 := by
      rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v2 := by
      rcases c674 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u14 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a u4
    have u15 : ¬v11 := by
      rcases c675 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd u14 a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n16
    have u16 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n9
    have u17 : ¬v5 := by
      rcases c676 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd u16 a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n18
    have u18 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a n16
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n10
    have u19 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u14 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u18 a
    have u21 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n2
    have u22 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u13
      · exact a
    rcases c6 with a|a|a
    · exact absurd u22 a
    · exact absurd u21 a
    · exact absurd u16 a
  have c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n1 a
    rcases c244 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n2
  have c679 : v2 ∨ ¬v3 ∨ v10 ∨ ¬v12 ∨ v16 ∨ v17 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u3 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u4 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n3 a
    have u5 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
    have u6 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u7 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
    have u8 : v15 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
    have u9 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n9
    rcases c84 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c680 : ¬v19 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    rcases c577 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
  have c681 : v26 ∨ v2 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v27 ∨ v33 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n1
    have u2 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n13
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n9
  have c682 : v18 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    rcases c435 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n6
  have c683 : ¬v19 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    rcases c682 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c684 : v46 ∨ v2 ∨ ¬v3 ∨ v10 ∨ v16 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v12 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n19
    have u3 : v11 := by
      rcases c681 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
    have u4 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n18
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n14
    have u7 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u6 a
      · exact absurd n2 a
      · exact a
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n19
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n18
    · exact absurd u6 a
  have c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n1 a
    rcases c244 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n2
  have c686 : v10 ∨ ¬v2 ∨ v12 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n8
      · exact a
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n12
    have u2 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u5 : v13 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n16
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd u1 a
    have u6 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n13
      · exact a
      · exact absurd a n6
      · exact absurd a n9
    have u7 : v11 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n2
    have u8 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u9 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u6 a
      · exact a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u6 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n7
  have c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n1 a
    rcases c244 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n2
  have c688 : v15 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v19 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n6 a
      · exact a
    rcases c263 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n7
  have c689 : ¬v20 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c690 : v27 ∨ ¬v3 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n6
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n10
    rcases c18 with a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd u5 a
  have c691 : v25 ∨ v10 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n16
      · exact absurd a n21
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
    have u2 : v2 := by
      rcases c684 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n22
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
    have u3 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u4 : v12 := by
      rcases c686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u5 : ¬v11 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u1 a
      · exact a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n24
    have u6 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n22
      · exact a
      · exact absurd a n0
      · exact absurd a n17
    rcases c600 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
  have c692 : v47 ∨ ¬v10 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
    have u5 : ¬v20 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n10
    have u7 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd u4 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u6 a
    rcases c440 with a|a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd u6 a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u1
  have c693 : ¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : v11 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n3
    have u4 : v13 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd n1 a
    rcases c65 with a|a|a
    · exact absurd n2 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c694 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    rcases c533 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n11
  have c695 : v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v28 := by
      rcases c677 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v19 := by
      rcases c685 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v16 := by
      rcases c678 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v10 := by
      rcases c691 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
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
    have u12 : ¬v12 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd u11 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u13 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u3
      · exact a
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n9
    have u14 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u6
    have u16 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u15 a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u11 a
    have u19 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u11 a
    have u20 : ¬v20 := by
      rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v18 := by
      rcases c257 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v4 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a n14
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a n8
  have c696 : v16 ∨ v12 ∨ v13 ∨ v19 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v27 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : v22 := by
      rcases c201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a u1
      · exact absurd a u4
    have u6 : v28 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
    rcases c107 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n1 a
    rcases c337 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u4
  have c698 : v25 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n14
      · exact a
      · exact absurd a n0
      · exact absurd a n12
    rcases c257 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a n12
    · exact absurd a n13
  have c699 : ¬v10 ∨ ¬v6 ∨ ¬v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : v21 := by
      rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u3 a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u5
  have c700 : v32 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v17 := by
      rcases c698 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n13
      · exact a
      · exact absurd a n8
      · exact absurd a n11
    rcases c91 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c701 : v16 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n21
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n15
    have u2 : v30 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v20 := by
      rcases c696 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n22
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n10
    have u7 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u6 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u6 a
    have u10 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u6 a
    have u11 : v22 := by
      rcases c287 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    have u12 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v11 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n20
    have u15 : ¬v10 := by
      rcases c699 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n23
    have u16 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n19
      · exact a
      · exact absurd a u13
      · exact absurd a n7
    have u17 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u16 a
      · exact a
    rcases c304 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u17
  have c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c665 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c220 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
  have c703 : v35 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v30 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
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
    have u3 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n19
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n13
    have u4 : v16 := by
      rcases c701 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
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
    have u5 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n9
    have u12 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u3 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u11 a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u11 a
    have u16 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u11 a
    have u17 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n21
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n15
    have u18 : v8 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd u17 a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u15
    have u19 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u18 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd u18 a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd u18 a
      · exact absurd u17 a
      · exact a
    have u22 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n18
      · exact absurd a u7
      · exact a
      · exact absurd a n12
    have u23 : v22 := by
      rcases c344 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n5
    rcases c104 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c704 : v23 ∨ ¬v19 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v22 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
    have u8 : v26 := by
      rcases c201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u5
    have u9 : v24 := by
      rcases c337 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u5
    rcases c114 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c705 : v17 ∨ v16 ∨ v23 ∨ ¬v24 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v15 := by
      rcases c201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact a
      · exact absurd a u1
    have u6 : v18 := by
      rcases c441 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n1
    rcases c82 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c706 : ¬v11 ∨ v10 ∨ ¬v13 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n3 a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n1
  have c707 : v22 ∨ v12 ∨ ¬v16 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n22
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n16
    have u8 : ¬v10 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u9 : v13 := by
      rcases c703 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n4
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
      · exact absurd a n23
      · exact absurd a n24
    have u10 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u11 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n9
      · exact absurd a n21
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n15
    have u12 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u7 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u14 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u11 a
    have u15 : v14 := by
      rcases c472 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u16 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u15 a
    have u17 : ¬v8 := by
      rcases c53 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u15 a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u8
  have c708 : ¬v13 ∨ v10 ∨ ¬v12 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n3 a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n1
  have c709 : v11 ∨ ¬v6 ∨ v10 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c710 : v17 ∨ v23 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v30 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u7 : ¬v19 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u8 : v16 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u9 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v10 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u14 : v12 := by
      rcases c707 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
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
    have u15 : ¬v13 := by
      rcases c708 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u14 a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n1
    have u16 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a n6
    have u17 : v11 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u18 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u17 a
    have u19 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u14 a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u13
  have c711 : v25 ∨ ¬v16 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n1 a
      · exact a
    rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u3
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
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n22
    · exact absurd a n23
  exact ⟨c665, c667, c668, c671, c672, c676, c678, c679, c680, c682, c683, c684, c685, c686, c687, c688, c690, c691, c692, c693, c694, c695, c697, c698, c701, c702, c704, c705, c706, c709, c710, c711⟩
