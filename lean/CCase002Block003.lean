import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 150-199 of the 2934-step refutation of ccase002: 113 core clauses and 34 earlier-derived ones give 20 more. -/
theorem CCase002_block003
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
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
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
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
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c122 : ¬v30 ∨ ¬v29)
    (c128 : ¬v30 ∨ ¬v31)
    (c164 : ¬v44 ∨ ¬v43)
    (c174 : ¬v44 ∨ ¬v49)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c206 : v12 ∨ v47 ∨ v3 ∨ v5 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v11)
    (c207 : ¬v31 ∨ v38 ∨ v25 ∨ v24 ∨ v37 ∨ v39 ∨ v32 ∨ v30)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c231 : ¬v4 ∨ v5 ∨ v45 ∨ v11 ∨ v47 ∨ v3 ∨ v46 ∨ v10)
    (c241 : ¬v16 ∨ v23 ∨ v17 ∨ v10 ∨ v15 ∨ v9 ∨ v22 ∨ v8)
    (c274 : ¬v30 ∨ v23 ∨ v2 ∨ v37 ∨ v38 ∨ v28 ∨ v1 ∨ v29 ∨ v3 ∨ v35 ∨ v31 ∨ v22 ∨ v42 ∨ v44)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c290 : v29 ∨ v16 ∨ v35 ∨ v23 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v28)
    (c302 : v29 ∨ ¬v22 ∨ v15 ∨ v35 ∨ v14 ∨ v26 ∨ v8 ∨ v23 ∨ v27 ∨ v19 ∨ v33 ∨ v28 ∨ v16 ∨ v9)
    (c316 : v29 ∨ ¬v30 ∨ v22 ∨ v31 ∨ v24 ∨ v23 ∨ v38 ∨ v37)
    (c322 : ¬v11 ∨ v10 ∨ v18 ∨ v5 ∨ v3 ∨ v17 ∨ v4 ∨ v12)
    (c327 : ¬v18 ∨ v17 ∨ v20 ∨ v25 ∨ v10 ∨ v4 ∨ v11 ∨ v13 ∨ v26 ∨ v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c364 : ¬v9 ∨ v8 ∨ v3 ∨ v17 ∨ v1 ∨ v16 ∨ v10 ∨ v2)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c373 : ¬v16 ∨ v22 ∨ v24 ∨ v23 ∨ v15 ∨ v9 ∨ v10 ∨ v17)
    (c387 : v15 ∨ v10 ∨ v17 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v2 ∨ v16)
    (c390 : v12 ∨ v15 ∨ v18 ∨ v46 ∨ v1 ∨ v4 ∨ v5 ∨ v10 ∨ v8 ∨ v17 ∨ v9 ∨ v45 ∨ ¬v11 ∨ v47)
    (c394 : v20 ∨ v27 ∨ v18 ∨ v25 ∨ v26 ∨ v12 ∨ ¬v19 ∨ v13)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c397 : ¬v24 ∨ v31 ∨ v16 ∨ v25 ∨ v32 ∨ v17 ∨ v18 ∨ v23)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c439 : ¬v32 ∨ v24 ∨ v33 ∨ v39 ∨ v38 ∨ v40 ∨ v31 ∨ v25)
    (c440 : ¬v32 ∨ v39 ∨ v26 ∨ v38 ∨ v40 ∨ v33 ∨ v25 ∨ v31)
    (c465 : ¬v12 ∨ v20 ∨ v18 ∨ v19 ∨ v4 ∨ v11 ∨ v13 ∨ v5)
    (c478 : ¬v30 ∨ v22 ∨ v23 ∨ v37 ∨ v31 ∨ v32 ∨ v38 ∨ v9 ∨ v29 ∨ v16 ∨ v25 ∨ v8 ∨ v10 ∨ v39)
    (c519 : v43 ∨ ¬v1 ∨ v49 ∨ v8 ∨ v14 ∨ v2 ∨ v7 ∨ v9)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c546 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c549 : v4 ∨ v3 ∨ v5 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c550 : v3 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c554 : v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c556 : v48 ∨ ¬v3 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v49)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c563 : ¬v3 ∨ ¬v5 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c566 : v21 ∨ ¬v3 ∨ ¬v4 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c576 : v25 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ ¬v21 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c581 : ¬v13 ∨ v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27)
    (c597 : ¬v16 ∨ v17 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c601 : v48 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c610 : ¬v4 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c611 : v21 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c618 : v44 ∨ ¬v7 ∨ v9 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v45 ∨ v48)
    (c619 : ¬v19 ∨ ¬v17 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c620 : v21 ∨ ¬v9 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c646 : v19 ∨ ¬v9 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c672 : v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c674 : ¬v24 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v25 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39)
    (c676 : ¬v30 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39)
    (c686 : v34 ∨ ¬v18 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c688 : v21 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c689 : v44 ∨ v4 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c691 : v24 ∨ v21 ∨ v22 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c694 : v26 ∨ v18 ∨ ¬v21 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v21 ∨ ¬v19 ∨ ¬v24 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39) ∧ (¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23) ∧ (v21 ∨ v4 ∨ ¬v10 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17) ∧ (v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44) ∧ (v16 ∨ ¬v5 ∨ v12 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48) ∧ (v12 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48) ∧ (v18 ∨ v4 ∨ v5 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v21 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v17 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45) ∧ (v4 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46) ∧ (v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40) ∧ (v24 ∨ ¬v4 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v21 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24) ∧ (¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20) ∧ (¬v16 ∨ v9 ∨ v10 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ ¬v9 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) := by
  have c695 : v47 ∨ v22 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
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
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v23 := by
      rcases c316 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
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
      · exact absurd a n2
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
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
    have u9 : v21 := by
      rcases c691 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
    rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd u9 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n3
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
    · exact absurd a n0
    · exact absurd a n17
    · exact absurd a n18
  have c696 : v17 ∨ v4 ∨ v18 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n9
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n8
    have u7 : v2 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n15
      · exact a
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n16
      · exact absurd a u3
    have u8 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u9 : v19 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a n17
      · exact absurd a n13
    have u10 : v20 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd u9 a
      · exact absurd a u5
    rcases c92 with a|a|a
    · exact absurd n3 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c697 : ¬v22 ∨ v18 ∨ ¬v20 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : v4 := by
      rcases c696 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u10 : ¬v3 := by
      rcases c576 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
    have u11 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n8
    have u12 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u11 a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u8
  have c698 : ¬v4 ∨ v3 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v27 ∨ v31 ∨ v34 ∨ v38 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v13 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n0 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n13
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n8
  have c699 : v20 ∨ ¬v4 ∨ v18 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v3 := by
      rcases c698 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : v19 := by
      rcases c546 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u4 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n12
    have u5 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c54 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c700 : v18 ∨ ¬v21 ∨ ¬v22 ∨ v24 ∨ v25 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v20 := by
      rcases c697 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
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
    have u5 : ¬v4 := by
      rcases c699 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u6 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n8
    have u7 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v19 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
    have u13 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n20
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n10
    have u14 : v15 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u11
      · exact a
      · exact absurd a u10
    have u15 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n9
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n19
      · exact absurd a n14
    have u16 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u15 a
    rcases c330 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a u9
  have c701 : v31 ∨ v24 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v30 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v22 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n1
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
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v18 := by
      rcases c686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n0
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
    have u10 : ¬v21 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
    have u11 : v19 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
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
    have u12 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : v4 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u14 : ¬v16 := by
      rcases c597 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u15 : v15 := by
      rcases c290 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
    have u16 : v12 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n16
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n4
    rcases c579 with a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u13 a
    · exact absurd u19 a
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c702 : v23 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v26 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : v24 := by
      rcases c316 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n9
    have u3 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u3
    have u6 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n5
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v16 := by
      rcases c478 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n11
    have u10 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u6
  have c703 : v18 ∨ ¬v19 ∨ ¬v24 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v20 := by
      rcases c702 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u7 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u2
  have c704 : v21 ∨ ¬v19 ∨ ¬v24 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v18 := by
      rcases c703 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u5 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    rcases c674 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c705 : v21 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v5 := by
      rcases c563 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u2 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n10
    have u3 : v13 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c54 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u2
  have c707 : v10 ∨ v4 ∨ v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v12 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    rcases c327 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c708 : v21 ∨ v4 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ ¬v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : v16 := by
      rcases c674 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
    have u8 : v10 := by
      rcases c707 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n11
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n20
      · exact absurd a n16
    have u12 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u13 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n22
      · exact absurd a n17
    rcases c33 with a|a|a
    · exact absurd u11 a
    · exact absurd u12 a
    · exact absurd u13 a
  have c709 : v21 ∨ v4 ∨ ¬v10 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n9
    have u4 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n8
    have u5 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c33 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd u3 a
  have c710 : ¬v12 ∨ v16 ∨ v22 ∨ v23 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v25 := by
      rcases c478 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u6 : v24 := by
      rcases c316 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
    rcases c111 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c711 : v31 ∨ v21 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v30 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v24 := by
      rcases c701 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v19 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : v18 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v20 := by
      rcases c676 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u12 a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v3 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u15 : v17 := by
      rcases c708 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u11
      · exact a
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u16 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u12 a
    have u17 : ¬v12 := by
      rcases c710 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n15
      · exact absurd a n9
    have u19 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u20 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u21 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    rcases c274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u7
    · exact absurd a u21
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n12
  have c712 : v23 ∨ ¬v5 ∨ ¬v6 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n5 a
      · exact a
    rcases c274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n11
  have c713 : v23 ∨ ¬v5 ∨ v12 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v6 := by
      rcases c712 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v4 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u5 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u6 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    rcases c274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n11
  have c714 : ¬v19 ∨ ¬v21 ∨ ¬v24 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n2 a
      · exact a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
  have c715 : ¬v12 ∨ ¬v21 ∨ v22 ∨ v23 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v24 := by
      rcases c316 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
    have u6 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v16 := by
      rcases c478 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u8 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
  have c716 : v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v24 := by
      rcases c701 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v21 := by
      rcases c711 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u7 : v30 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u8 : ¬v19 := by
      rcases c714 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
    have u9 : ¬v12 := by
      rcases c715 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n8
    rcases c713 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u10 a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd u7 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c717 : v27 ∨ v12 ∨ ¬v16 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n9
    have u8 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
    have u9 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n13
    have u10 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n17
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n11
  have c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n0 a
    rcases c364 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
  have c719 : v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
  have c720 : v16 ∨ ¬v5 ∨ v12 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u5 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n3
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u4
  have c721 : v27 ∨ ¬v5 ∨ v12 ∨ v16 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v17 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u4 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u5 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact a
    have u6 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n9
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a u8
  have c722 : v12 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v16 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v5 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : v19 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n18
      · exact absurd a n14
    have u4 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    rcases c594 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd u3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c723 : v18 ∨ v4 ∨ v5 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c322 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
    have u7 : v1 := by
      rcases c390 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n13
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd u1 a
      · exact absurd a n14
    have u8 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u10 : v44 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n12
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a u4
    have u11 : ¬v49 := by
      rcases c174 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    rcases c519 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u7 a
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u4
  have c724 : v21 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v3 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u2 : v11 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n13
      · exact absurd a n12
      · exact a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact a
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n10
    rcases c20 with a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd n1 a
  have c725 : v9 ∨ v3 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n15
      · exact a
    have u2 : ¬v7 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n18
      · exact absurd a n14
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v6 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a u5
    have u8 : v1 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a u6
    rcases c4 with a|a|a
    · exact absurd u1 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c726 : ¬v17 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c594 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c594 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c728 : v37 ∨ v12 ∨ v23 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v31 := by
      rcases c716 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v24 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n8
    have u4 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v21 := by
      rcases c722 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v19 := by
      rcases c611 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
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
    have u11 : ¬v16 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
    have u12 : ¬v17 := by
      rcases c726 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
    have u13 : ¬v15 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
    have u14 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v4 := by
      rcases c724 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u16 : v18 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u17 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u10 a
    have u18 : ¬v3 := by
      rcases c556 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd u10 a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
    have u19 : v9 := by
      rcases c725 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u20 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : v2 := by
      rcases c387 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd u19 a
      · exact a
      · exact absurd a u11
    have u25 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n11
    have u26 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n16
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n5
    rcases c23 with a|a|a
    · exact absurd u24 a
    · exact absurd u25 a
    · exact absurd u26 a
  have c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n4
  have c730 : v14 ∨ v5 ∨ v9 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n9
    have u2 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n12
      · exact a
    have u3 : v7 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n14
      · exact a
      · exact absurd a n3
    rcases c23 with a|a|a
    · exact absurd u2 a
    · exact absurd u3 a
    · exact absurd u1 a
  have c731 : ¬v2 ∨ v11 ∨ v14 ∨ ¬v19 ∨ ¬v20 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n10
    have u4 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n7
    rcases c20 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c732 : v11 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ v14 ∨ v16 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n20
      · exact a
    have u2 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n20
      · exact absurd a n21
    have u3 : v20 := by
      rcases c730 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u4 : ¬v19 := by
      rcases c731 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n22
      · exact absurd a n25
    have u5 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd u3 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u7 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a n22
      · exact absurd a n17
      · exact absurd a n8
      · exact absurd a n13
    have u8 : v3 := by
      rcases c231 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a n21
      · exact absurd a n0
      · exact absurd a n23
      · exact a
      · exact absurd a n22
      · exact absurd a n3
    rcases c15 with a|a|a
    · exact absurd u1 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c734 : v4 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
    have u5 : v24 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v12 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n1
    have u7 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u6 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u10
  have c735 : v10 ∨ v8 ∨ v9 ∨ v11 ∨ v13 ∨ v14 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : v16 := by
      rcases c732 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u2 : v4 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n24
    have u3 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u2 a
      · exact a
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u4 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n26
      · exact a
      · exact absurd a n10
      · exact absurd a n20
      · exact absurd a n15
    have u5 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
    have u6 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd u4 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c82 with a|a|a
    · exact absurd u1 a
    · exact absurd u6 a
    · exact absurd u4 a
  have c736 : v46 ∨ v23 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v31 := by
      rcases c716 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v24 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n8
    have u4 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v12 := by
      rcases c728 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
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
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u9 a
    rcases c735 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c737 : v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v31 := by
      rcases c716 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v23 := by
      rcases c736 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    rcases c207 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u2
  have c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v26 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
    have u2 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    rcases c439 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n0
  have c739 : v24 ∨ ¬v4 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v21 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u2 : ¬v3 := by
      rcases c546 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v13 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
    have u4 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n10
    rcases c579 with a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
  have c740 : ¬v21 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
  have c741 : v24 ∨ v3 ∨ ¬v14 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v5 := by
      rcases c550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n22
    · exact absurd a n17
  have c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    rcases c465 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n2
  have c744 : v48 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
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
      · exact absurd a n0
      · exact absurd a n24
    have u2 : ¬v3 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n0
      · exact absurd a n24
    have u3 : v5 := by
      rcases c549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n0
    have u4 : ¬v14 := by
      rcases c741 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n0
      · exact absurd a n24
    have u5 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n24
      · exact absurd a n19
    have u6 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
    have u7 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n18
      · exact absurd a n13
    have u8 : v12 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd u3 a
      · exact a
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n0
    rcases c54 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c745 : ¬v16 ∨ v9 ∨ v10 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : ¬v21 := by
      rcases c740 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v19 := by
      rcases c744 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n24
      · exact a
      · exact absurd a n3
      · exact absurd a u1
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
      · exact absurd a n25
    have u3 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v17 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n24
      · exact absurd a n25
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u4
  have c746 : v20 ∨ ¬v9 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v17 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v19 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n22
      · exact absurd a n17
    have u7 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n21
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n11
    have u8 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n20
      · exact absurd a n15
    rcases c33 with a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd u6 a
  exact ⟨c704, c706, c709, c718, c719, c720, c722, c723, c724, c726, c727, c729, c734, c737, c738, c739, c740, c742, c745, c746⟩
