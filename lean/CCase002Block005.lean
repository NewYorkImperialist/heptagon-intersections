import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 250-299 of the 2934-step refutation of ccase002: 123 core clauses and 39 earlier-derived ones give 22 more. -/
theorem CCase002_block005
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v7 ∨ ¬v2 ∨ ¬v5)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c28 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
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
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c120 : ¬v27 ∨ ¬v28)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c221 : ¬v25 ∨ v32 ∨ v18 ∨ v33 ∨ v31 ∨ v26 ∨ v24 ∨ v19)
    (c239 : v13 ∨ v8 ∨ v48 ∨ v6 ∨ ¬v7 ∨ v1 ∨ v49 ∨ v14)
    (c241 : ¬v16 ∨ v23 ∨ v17 ∨ v10 ∨ v15 ∨ v9 ∨ v22 ∨ v8)
    (c242 : v21 ∨ v20 ∨ v12 ∨ v5 ∨ v14 ∨ v7 ∨ v6 ∨ ¬v13)
    (c243 : v13 ∨ v6 ∨ v25 ∨ v47 ∨ v26 ∨ v21 ∨ v27 ∨ v19 ∨ v18 ∨ v11 ∨ v14 ∨ ¬v20 ∨ v48 ∨ v49)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c260 : ¬v27 ∨ v34 ∨ v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c277 : v29 ∨ ¬v23 ∨ v31 ∨ v16 ∨ v22 ∨ v30 ∨ v24 ∨ v17)
    (c278 : v21 ∨ v13 ∨ v1 ∨ v20 ∨ v6 ∨ ¬v14 ∨ v8 ∨ v7)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c307 : v29 ∨ ¬v35 ∨ v34 ∨ v27 ∨ v41 ∨ v22 ∨ v28 ∨ v42)
    (c315 : ¬v25 ∨ v32 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v17 ∨ v31)
    (c343 : v13 ∨ v6 ∨ v46 ∨ v48 ∨ v4 ∨ ¬v5 ∨ v47 ∨ v12)
    (c350 : v4 ∨ v11 ∨ v45 ∨ v2 ∨ v9 ∨ ¬v3 ∨ v10 ∨ v46)
    (c366 : ¬v17 ∨ v18 ∨ v24 ∨ v23 ∨ v25 ∨ v9 ∨ v10 ∨ v16)
    (c373 : ¬v16 ∨ v22 ∨ v24 ∨ v23 ∨ v15 ∨ v9 ∨ v10 ∨ v17)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c400 : v29 ∨ v30 ∨ v15 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v16 ∨ v28)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c529 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v8 ∨ v21 ∨ v14)
    (c537 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v10 ∨ v25 ∨ v11 ∨ v16)
    (c544 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c545 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c549 : v4 ∨ v3 ∨ v5 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c554 : v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c581 : ¬v13 ∨ v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c590 : ¬v23 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c601 : v48 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c630 : v20 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c646 : v19 ∨ ¬v9 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c665 : ¬v6 ∨ ¬v10 ∨ v18 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c667 : v40 ∨ v13 ∨ v18 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c670 : v20 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c689 : v44 ∨ v4 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c719 : v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c720 : v16 ∨ ¬v5 ∨ v12 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c734 : v4 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c740 : ¬v21 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c775 : v44 ∨ ¬v14 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v45 ∨ v48)
    (c776 : v9 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c785 : v18 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c786 : v9 ∨ ¬v4 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c787 : v17 ∨ ¬v4 ∨ v14 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v49)
    (c790 : v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c791 : v27 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42)
    (c796 : v4 ∨ v14 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v14 ∨ ¬v9 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49) ∧ (¬v21 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28) ∧ (¬v17 ∨ ¬v14 ∨ v16 ∨ ¬v19 ∨ v23 ∨ v24) ∧ (¬v18 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v4 ∨ ¬v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47) ∧ (v48 ∨ ¬v4 ∨ v14 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49) ∧ (v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v9 ∨ v10 ∨ v13 ∨ ¬v16 ∨ v19 ∨ v21 ∨ v23 ∨ v26 ∨ v28) ∧ (¬v2 ∨ ¬v10 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47) ∧ (v24 ∨ v9 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (v16 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (v15 ∨ ¬v9 ∨ v16 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48) ∧ (¬v24 ∨ ¬v35 ∨ v41 ∨ v42) ∧ (v19 ∨ ¬v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v19 ∨ ¬v16 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v27 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v41 ∨ v19 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v23 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v29 ∨ v30) ∧ (¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30) ∧ (v20 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48) ∧ (v41 ∨ v20 ∨ v26 ∨ v27 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c797 : v26 ∨ v14 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v4 := by
      rcases c796 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
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
    have u2 : v9 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
    have u3 : ¬v5 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n20
    have u4 : v15 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n25
    have u5 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v19 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n23
      · exact absurd a n18
    have u8 : v21 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u6
      · exact a
      · exact absurd a n1
    rcases c71 with a|a|a
    · exact absurd u4 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c798 : v14 ∨ ¬v9 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
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
    have u4 : v18 := by
      rcases c537 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n2
    have u5 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u4 a
    have u6 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u4 a
    have u8 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n12
    have u9 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n11
    have u10 : ¬v3 := by
      rcases c28 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u12 : ¬v2 := by
      rcases c22 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    rcases c586 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n2
  have c799 : v14 ∨ ¬v4 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n15
      · exact a
    have u2 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v7 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n14
    have u5 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u4 a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd n4 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n4 a
    have u8 : ¬v13 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
    have u9 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n8
    have u10 : v27 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n8
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
    have u11 : v25 := by
      rcases c366 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
    rcases c116 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c800 : ¬v21 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u4 : v10 := by
      rcases c366 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    rcases c653 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n8
  have c801 : v18 ∨ v4 ∨ v9 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v10 := by
      rcases c366 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u2 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n8
    rcases c47 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c802 : v46 ∨ v14 ∨ v16 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v34 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v27 := by
      rcases c791 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v17 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v9 := by
      rcases c798 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
    have u16 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact a
    have u17 : ¬v4 := by
      rcases c799 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
    have u18 : ¬v21 := by
      rcases c800 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v18 := by
      rcases c801 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n0
    have u20 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n9
    have u21 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u14 a
    have u22 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u14 a
    have u23 : ¬v5 := by
      rcases c22 with a|a|a
      · exact absurd u20 a
      · exact absurd u16 a
      · exact a
    have u24 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd u20 a
      · exact absurd u16 a
      · exact a
    rcases c549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n13
  have c803 : ¬v17 ∨ ¬v14 ∨ v16 ∨ ¬v19 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    rcases c617 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c804 : v38 ∨ v16 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v34 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v27 := by
      rcases c791 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v14 := by
      rcases c802 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact a
    have u18 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v19 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u8
      · exact a
      · exact absurd a n11
      · exact absurd a n5
    have u20 : ¬v17 := by
      rcases c803 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd u19 a
      · exact absurd a u7
      · exact absurd a u10
    have u21 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u5
    have u22 : v18 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u21 a
    have u24 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u21 a
    have u25 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u22 a
    have u26 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u19 a
    have u27 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u19 a
    rcases c639 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u14
    · exact absurd u11 a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u27
  have c805 : ¬v18 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c706 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c806 : ¬v4 ∨ ¬v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n6
    have u4 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n9
    rcases c24 with a|a|a
    · exact absurd u4 a
    · exact absurd n0 a
    · exact absurd u3 a
  have c807 : v17 ∨ ¬v16 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v18 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v15 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u6 : v4 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n22
    have u7 : ¬v14 := by
      rcases c806 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n20
    have u8 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact a
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u9 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n22
      · exact absurd a n16
    have u10 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u9 a
    have u11 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u9 a
    have u12 : v8 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n21
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n22
      · exact absurd a u7
    have u13 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n20
      · exact absurd a n15
    rcases c39 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c808 : v26 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v18 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u2 : v19 := by
      rcases c807 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u5 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u5 a
      · exact a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u7
  have c810 : v48 ∨ ¬v4 ∨ v14 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n10
    have u2 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u3 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n9
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u5 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a n2
  have c811 : v25 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v17 := by
      rcases c808 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u7 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v14 := by
      rcases c810 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n19
      · exact absurd u7 a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n20
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u7 a
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u13 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n9
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n13
    have u14 : v7 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u10
    rcases c31 with a|a|a
    · exact absurd u13 a
    · exact absurd u7 a
    · exact absurd u14 a
  have c812 : v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v34 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v27 := by
      rcases c791 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v16 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    rcases c811 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u12 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n0
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
  have c813 : v2 ∨ v1 ∨ v6 ∨ v7 ∨ ¬v14 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v15 := by
      rcases c760 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v20 := by
      rcases c278 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n3
    have u6 : v27 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u7 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n0
  have c814 : ¬v23 ∨ ¬v21 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
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
  have c815 : v28 ∨ ¬v4 ∨ ¬v14 ∨ v19 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u7 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n8
    have u14 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u17 : v21 := by
      rcases c813 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n11
    have u18 : ¬v23 := by
      rcases c814 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
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
    have u19 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u14
    have u20 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact a
    have u23 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a u20
      · exact a
      · exact absurd a n9
      · exact absurd a u9
    have u24 : v22 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u2
      · exact a
      · exact absurd a u1
    rcases c104 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c816 : ¬v21 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v19 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v2 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n19
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n20
      · exact absurd a n3
      · exact absurd a n5
    have u2 : ¬v23 := by
      rcases c814 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
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
    have u3 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n4
      · exact a
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a u1
    have u4 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u6 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a n20
      · exact absurd a n15
      · exact absurd a n10
    have u7 : v22 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a n3
    rcases c101 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c817 : ¬v20 ∨ v9 ∨ v10 ∨ v13 ∨ ¬v16 ∨ v19 ∨ v21 ∨ v23 ∨ v26 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v27 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
    have u2 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
  have c819 : v19 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v16 ∨ v21 ∨ v26 ∨ v28 ∨ ¬v35 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n12 a
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n12 a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : v25 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n8 a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n17
    have u5 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u4 a
      · exact a
    rcases c307 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n12 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n14
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n15
  have c820 : v41 ∨ ¬v14 ∨ v19 ∨ v26 ∨ v28 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v4 := by
      rcases c815 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n8
    have u16 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u17 : v6 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u7
      · exact absurd u15 a
      · exact absurd a n13
      · exact absurd a u6
    have u18 : ¬v3 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a u16
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a n12
    have u19 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u15 a
    have u20 : ¬v21 := by
      rcases c816 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u21 : ¬v16 := by
      rcases c819 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u22 : v23 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u16
    have u23 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u22 a
    rcases c307 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u8 a
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a n9
  have c821 : ¬v18 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v17 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c73 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c822 : v26 ∨ ¬v14 ∨ v19 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u8 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n6
    have u14 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v28 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
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
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u14
    have u22 : ¬v18 := by
      rcases c821 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
    have u23 : v4 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd u21 a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n11
    have u24 : v20 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u22
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u25 : v17 := by
      rcases c806 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
    rcases c75 with a|a|a
    · exact absurd u21 a
    · exact absurd u24 a
    · exact absurd u25 a
  have c823 : v19 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v14 := by
      rcases c822 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
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
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v13 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
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
    have u9 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n12
    have u11 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u10 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u10 a
      · exact absurd u7 a
      · exact a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd u8 a
    · exact absurd a u11
    · exact absurd a u9
  have c824 : v24 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v18 := by
      rcases c821 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v21 := by
      rcases c740 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u3 : v20 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u2
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u4 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n3 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u3 a
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u4
  have c825 : ¬v16 ∨ ¬v9 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v17 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u10 : v4 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n16
    have u11 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u10 a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a n18
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a u5
  have c826 : v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v14 := by
      rcases c822 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
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
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v18 := by
      rcases c821 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v9 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v10 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd n1 a
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
      · exact absurd a n18
      · exact absurd a n19
    have u8 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a u4
    have u11 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u10 a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u12 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n18
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u3
    have u13 : v21 := by
      rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n17
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a n18
      · exact absurd a n19
    rcases c82 with a|a|a
    · exact absurd n1 a
    · exact absurd u13 a
    · exact absurd u12 a
  have c827 : ¬v2 ∨ ¬v10 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n9
    have u4 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n6
    rcases c19 with a|a|a
    · exact absurd n0 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c828 : v24 ∨ v9 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n16
      · exact a
    have u2 : ¬v10 := by
      rcases c827 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v17 := by
      rcases c366 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
    have u4 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n9
    have u5 : ¬v4 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u4 a
    have u7 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a n10
    have u8 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n19
      · exact absurd a n15
    rcases c51 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c829 : v16 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v9 := by
      rcases c828 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v17 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u1 a
      · exact a
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
    rcases c537 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n0
  have c830 : v15 ∨ ¬v9 ∨ v16 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n9
    have u5 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n8
    have u6 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    have u7 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u8 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    rcases c586 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n2
  have c831 : v19 ∨ v26 ∨ ¬v28 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v16 := by
      rcases c826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
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
    have u13 : v18 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v20 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u13 a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
    have u15 : v17 := by
      rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
    have u17 : ¬v9 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u18 : v13 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u19 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n9
      · exact a
    have u20 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n9
      · exact absurd a n10
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n6
  have c832 : ¬v24 ∨ ¬v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n1 a
    rcases c307 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
  have c833 : v16 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v24 := by
      rcases c832 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v22 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n11
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v18 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v20 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u11 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    have u13 : v17 := by
      rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u11 a
    have u15 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u11 a
    rcases c400 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd u8 a
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n4
  have c834 : v33 ∨ v14 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v21 := by
      rcases c260 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v15 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u6 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
    have u7 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u6 a
      · exact a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u8
  have c835 : v26 ∨ v16 ∨ v19 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c822 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v28 := by
      rcases c831 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
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
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c832 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v27 := by
      rcases c833 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
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
    have u11 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v18 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v20 := by
      rcases c834 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd u13 a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u5
    have u15 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u16 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n0
    have u17 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n6
    rcases c720 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c836 : v19 ∨ ¬v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v18 := by
      rcases c78 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u3
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
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c837 : v19 ∨ ¬v16 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v20 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v21 := by
      rcases c260 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u6 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
  have c838 : v27 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v14 := by
      rcases c630 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u3 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n11
    have u4 : ¬v7 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v10 := by
      rcases c665 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v5 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n21
      · exact absurd a n19
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n20
      · exact absurd a u4
      · exact absurd a u1
    have u7 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n17
      · exact absurd a n12
      · exact absurd a n8
    rcases c27 with a|a|a
    · exact absurd u3 a
    · exact absurd u7 a
    · exact absurd u6 a
  have c839 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n7
    rcases c579 with a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c840 : ¬v22 ∨ v14 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n4
    have u2 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v17 := by
      rcases c838 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
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
    have u4 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u3 a
    have u5 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v13 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u7 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n19
      · exact absurd a n14
    have u9 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u8 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact absurd u5 a
      · exact a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd u6 a
    · exact absurd a u9
    · exact absurd a u7
  have c841 : v28 ∨ v14 ∨ ¬v16 ∨ v18 ∨ v19 ∨ ¬v22 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n4
    have u2 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : v20 := by
      rcases c840 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u4 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n2 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u3 a
    have u6 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n0
    rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
  have c842 : v41 ∨ v19 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v16 := by
      rcases c835 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
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
    have u2 : ¬v28 := by
      rcases c831 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
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
    have u3 : ¬v14 := by
      rcases c822 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
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
    have u4 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v24 := by
      rcases c832 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n7
    have u12 : ¬v27 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v22 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n7
    have u14 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v18 := by
      rcases c841 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
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
    have u16 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v20 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u15 a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u12
    rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd u15 a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
  have c843 : v23 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n4 a
      · exact a
    rcases c400 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
  have c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    rcases c843 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c845 : v4 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v9 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n9
    rcases c554 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c846 : v20 ∨ ¬v18 ∨ ¬v19 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u5 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v23 := by
      rcases c277 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u1
    have u7 : ¬v14 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n17
    have u8 : ¬v4 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
    have u9 : v13 := by
      rcases c845 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
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
    have u10 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n13
      · exact a
    have u14 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u15 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n7
    have u16 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u13 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u15 a
    rcases c242 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd u9 a
  have c847 : v20 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v25 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n7
    have u2 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n10
    have u7 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n8
    have u8 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n7
    rcases c25 with a|a|a
    · exact absurd u6 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c848 : v41 ∨ v20 ∨ v26 ∨ v27 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v19 := by
      rcases c842 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
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
    have u2 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n14
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c832 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n8
    have u10 : ¬v18 := by
      rcases c846 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : v17 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u12 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u1 a
    have u13 : ¬v15 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u1 a
    have u14 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u1 a
    have u15 : v25 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
    have u17 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u15 a
      · exact a
    rcases c307 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u2 a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a n8
  exact ⟨c798, c800, c803, c805, c806, c810, c812, c817, c827, c828, c829, c830, c832, c836, c837, c838, c839, c842, c843, c844, c847, c848⟩
