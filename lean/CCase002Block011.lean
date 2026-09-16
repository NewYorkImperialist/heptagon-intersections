import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 550-599 of the 2934-step refutation of ccase002: 124 core clauses and 57 earlier-derived ones give 15 more. -/
theorem CCase002_block011
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c36 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c54 : ¬v12 ∨ ¬v13)
    (c56 : ¬v14 ∨ ¬v13)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c96 : v15 ∨ v21 ∨ v17 ∨ v20 ∨ v19 ∨ v16)
    (c99 : v16 ∨ v21 ∨ v18 ∨ v20 ∨ v17 ∨ v19)
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
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c132 : ¬v35 ∨ ¬v30)
    (c136 : ¬v31 ∨ ¬v35)
    (c139 : ¬v32 ∨ ¬v35)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c148 : ¬v42 ∨ ¬v36)
    (c153 : ¬v42 ∨ ¬v37)
    (c157 : ¬v42 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v39)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c185 : v43 ∨ v44 ∨ v48 ∨ v47 ∨ v46 ∨ v45 ∨ v49)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c206 : v12 ∨ v47 ∨ v3 ∨ v5 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v11)
    (c221 : ¬v25 ∨ v32 ∨ v18 ∨ v33 ∨ v31 ∨ v26 ∨ v24 ∨ v19)
    (c236 : v16 ∨ v20 ∨ v8 ∨ v19 ∨ v27 ∨ v26 ∨ v6 ∨ v2 ∨ v12 ∨ v14 ∨ v28 ∨ v9 ∨ v7 ∨ ¬v13)
    (c241 : ¬v16 ∨ v23 ∨ v17 ∨ v10 ∨ v15 ∨ v9 ∨ v22 ∨ v8)
    (c242 : v21 ∨ v20 ∨ v12 ∨ v5 ∨ v14 ∨ v7 ∨ v6 ∨ ¬v13)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c258 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v30 ∨ v28 ∨ ¬v29 ∨ v23)
    (c268 : v36 ∨ ¬v43 ∨ v37 ∨ v44 ∨ v7 ∨ v2 ∨ v1 ∨ v49)
    (c277 : v29 ∨ ¬v23 ∨ v31 ∨ v16 ∨ v22 ∨ v30 ∨ v24 ∨ v17)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c281 : v36 ∨ v37 ∨ v14 ∨ v7 ∨ v9 ∨ v4 ∨ v8 ∨ v1 ∨ ¬v43 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c295 : ¬v34 ∨ v27 ∨ v41 ∨ v35 ∨ v28 ∨ v26 ∨ v40 ∨ v33)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c300 : v22 ∨ v16 ∨ v21 ∨ v28 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v8)
    (c343 : v13 ∨ v6 ∨ v46 ∨ v48 ∨ v4 ∨ ¬v5 ∨ v47 ∨ v12)
    (c412 : ¬v42 ∨ v36 ∨ v48 ∨ v41 ∨ v29 ∨ v35 ∨ v49 ∨ v34)
    (c420 : ¬v27 ∨ v34 ∨ v33 ∨ v26 ∨ v28 ∨ v48 ∨ v47 ∨ v15 ∨ v21 ∨ v22 ∨ v41 ∨ v20 ∨ v29 ∨ v49)
    (c426 : v29 ∨ v22 ∨ v24 ∨ v30 ∨ v15 ∨ v31 ∨ ¬v23 ∨ v16)
    (c429 : ¬v24 ∨ v31 ∨ v18 ∨ v30 ∨ v32 ∨ v17 ∨ v25 ∨ v23)
    (c454 : ¬v24 ∨ v31 ∨ v17 ∨ v30 ∨ v18 ∨ v27 ∨ v37 ∨ v20 ∨ v26 ∨ v25 ∨ v34 ∨ v23 ∨ v38 ∨ v39)
    (c485 : v36 ∨ ¬v23 ∨ v15 ∨ v31 ∨ v30 ∨ v28 ∨ v34 ∨ v16 ∨ v22 ∨ v27 ∨ v37 ∨ v38 ∨ v20 ∨ v24)
    (c489 : ¬v20 ∨ v27 ∨ v19 ∨ v26 ∨ v12 ∨ v13 ∨ v28 ∨ v21)
    (c493 : ¬v19 ∨ v26 ∨ v24 ∨ v18 ∨ v48 ∨ v25 ∨ v20 ∨ v10 ∨ v13 ∨ v12 ∨ v17 ∨ v46 ∨ v47 ∨ v5)
    (c495 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v28 ∨ v15 ∨ ¬v29 ∨ v16 ∨ v25 ∨ v32 ∨ v30 ∨ v21 ∨ v31 ∨ v39)
    (c513 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v32 ∨ v27 ∨ v33 ∨ v19)
    (c517 : v36 ∨ ¬v43 ∨ v41 ∨ v37 ∨ v7 ∨ v28 ∨ v6 ∨ v29 ∨ v1 ∨ v22 ∨ v23 ∨ v44 ∨ v48 ∨ v49)
    (c529 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v8 ∨ v21 ∨ v14)
    (c538 : ¬v24 ∨ v31 ∨ v16 ∨ v32 ∨ v30 ∨ v25 ∨ v17 ∨ v23)
    (c545 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c554 : v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c564 : v19 ∨ v5 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c590 : ¬v23 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c601 : v48 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c615 : v17 ∨ ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c623 : v19 ∨ v17 ∨ ¬v18 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c719 : v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c723 : v18 ∨ v4 ∨ v5 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c734 : v4 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c754 : ¬v3 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v48 ∨ v49)
    (c775 : v44 ∨ ¬v14 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v45 ∨ v48)
    (c776 : v9 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c785 : v18 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c787 : v17 ∨ ¬v4 ∨ v14 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v49)
    (c829 : v16 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c830 : v15 ∨ ¬v9 ∨ v16 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c836 : v19 ∨ ¬v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c837 : v19 ∨ ¬v16 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c838 : v27 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c839 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30)
    (c847 : v20 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c849 : ¬v27 ∨ ¬v17 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c925 : ¬v27 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v34 ∨ v35)
    (c929 : ¬v32 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c952 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c969 : v24 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v32 ∨ v33)
    (c980 : ¬v26 ∨ v19 ∨ v20 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1080 : ¬v24 ∨ v17 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v32)
    (c1093 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1094 : ¬v26 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1096 : v17 ∨ v18 ∨ v19 ∨ ¬v20 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1098 : v17 ∨ ¬v18 ∨ v19 ∨ ¬v20 ∨ v24 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34) ∧ (¬v18 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48) ∧ (v26 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23) ∧ (¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ ¬v16 ∨ v17 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48) ∧ (¬v17 ∨ ¬v16 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v24 ∨ ¬v16 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37) ∧ (¬v27 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37) ∧ (v17 ∨ v16 ∨ ¬v18 ∨ ¬v19 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v4 ∨ ¬v3 ∨ v7 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (v45 ∨ v16 ∨ v17 ∨ v26 ∨ v34 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1099 : v29 ∨ v17 ∨ v19 ∨ ¬v20 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v18 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v15 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
    have u3 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
    have u5 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n16
    have u7 : v26 := by
      rcases c1098 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
    have u9 : ¬v23 := by
      rcases c277 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
    have u10 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
    have u17 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
    have u18 : v12 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u16
    have u19 : ¬v4 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u20 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n11
      · exact a
    have u24 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a n7
    have u25 : ¬v7 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n11
      · exact absurd a n12
    have u26 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd u6 a
    · exact absurd a u11
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n16
  have c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    rcases c980 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1101 : ¬v18 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v20 := by
      rcases c1099 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
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
    have u3 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
    have u8 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n8
    have u11 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n10
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a u5
    have u12 : ¬v6 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
    have u13 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    rcases c343 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a n14
    · exact absurd a n16
    · exact absurd a u13
    · exact absurd u11 a
    · exact absurd a n15
    · exact absurd a u9
  have c1102 : v17 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v15 := by
      rcases c96 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
    have u2 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u3 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n12
    have u4 : ¬v4 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    have u5 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u7 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
    have u8 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u3 a
    have u9 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u7
    rcases c718 with a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n0
  have c1103 : v34 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v25 := by
      rcases c1101 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v20 := by
      rcases c1099 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : ¬v21 := by
      rcases c623 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u13 : v16 := by
      rcases c1102 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n2 a
    have u15 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u16 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n10
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a u3
    have u20 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n8
    have u21 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n0
    rcases c27 with a|a|a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd u19 a
  have c1104 : v24 ∨ v17 ∨ v19 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v18 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v25 := by
      rcases c969 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v26 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v20 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n0
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
    have u11 : v27 := by
      rcases c838 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v16 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1105 : ¬v18 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v20 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n15
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n9
    have u5 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n7
    have u8 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n11
    rcases c27 with a|a|a
    · exact absurd u4 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c1106 : v24 ∨ v17 ∨ v19 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v28 := by
      rcases c1104 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v18 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v20 := by
      rcases c838 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v16 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1107 : ¬v27 ∨ ¬v16 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
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
  have c1108 : v19 ∨ ¬v16 ∨ ¬v17 ∨ v24 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n0
    have u6 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v27 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v13 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u13 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u7
    have u16 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u15 a
      · exact absurd u10 a
      · exact a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd u12 a
    · exact absurd a u16
    · exact absurd a u13
  have c1109 : v20 ∨ v16 ∨ v18 ∨ v19 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v23 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v21 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : v15 := by
      rcases c485 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u9 a
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
    have u15 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : v13 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u18 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n9
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a u5
    have u19 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u20 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u18 a
      · exact absurd u15 a
      · exact a
    have u24 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u15 a
    rcases c236 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd u17 a
  have c1110 : v26 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v9 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v13 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n13
      · exact a
    have u4 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n15
    · exact absurd a n11
  have c1111 : v34 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v17 := by
      rcases c1106 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
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
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v16 := by
      rcases c1108 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
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
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v18 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
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
    have u8 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u7 a
    have u9 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u7 a
    have u10 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v23 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n7
      · exact a
      · exact absurd a u3
    have u12 : v27 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u12 a
      · exact a
    rcases c420 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u13
    · exact absurd a n14
    · exact absurd a n13
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n15
  have c1112 : v24 ∨ v19 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v20 := by
      rcases c1111 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
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
    have u7 : v17 := by
      rcases c1106 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u8 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u9 : ¬v15 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u10 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v16 := by
      rcases c1108 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n2
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
    have u12 : ¬v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
    have u13 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v23 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a u11
    rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1113 : v24 ∨ v19 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n13
    have u3 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v26 := by
      rcases c1112 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u11 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : v20 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v18 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n1
    have u15 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    have u17 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u14 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u8
    have u19 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u8
    have u20 : v12 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u11
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u19
    have u21 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n8
      · exact a
    have u25 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n4
    have u26 : ¬v7 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u25 a
    have u28 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u24 a
      · exact absurd u25 a
      · exact a
    rcases c517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u26
    · exact absurd a u10
    · exact absurd a u28
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a n13
  have c1114 : v28 ∨ ¬v17 ∨ v19 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u2 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u3 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n14
    have u5 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : v5 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n12
    have u16 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n7
    have u17 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u4 a
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n14
  have c1115 : ¬v24 ∨ v19 ∨ ¬v20 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v17 := by
      rcases c1114 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v18 := by
      rcases c429 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u8 : v16 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
    rcases c78 with a|a|a
    · exact absurd u8 a
    · exact absurd n2 a
    · exact absurd u7 a
  have c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u2
  have c1117 : v44 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n15
    have u8 : v16 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
    have u9 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u15 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
    have u16 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
    have u17 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n10
    have u18 : ¬v4 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u19 : v10 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u16
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n12
    have u20 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n9
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a u11
    have u22 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u23 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u17 a
    have u24 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u21 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u7 a
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a n15
  have c1118 : v20 ∨ ¬v18 ∨ v19 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v17 := by
      rcases c1117 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
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
    have u9 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u10 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1119 : v18 ∨ v16 ∨ ¬v17 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n16
      · exact absurd a n19
    have u7 : v15 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u8 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n2 a
    have u9 : v8 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n10
      · exact a
      · exact absurd a u8
      · exact absurd a u6
    have u10 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u11 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u9 a
      · exact a
    rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
  have c1120 : v44 ∨ v19 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n12
    have u3 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v24 := by
      rcases c1113 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v20 := by
      rcases c1115 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
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
    have u17 : ¬v18 := by
      rcases c1118 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a n3
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
    have u18 : v17 := by
      rcases c454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
    have u19 : v16 := by
      rcases c1119 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
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
    have u20 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
    have u21 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : v13 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u23 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n6
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a u5
    have u25 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u26 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u24 a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u21 a
    rcases c517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u25
    · exact absurd a u12
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
  have c1121 : v16 ∨ ¬v12 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
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
  have c1122 : ¬v19 ∨ v13 ∨ v16 ∨ v18 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v9 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u2 : ¬v12 := by
      rcases c1121 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
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
    have u3 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u2
  have c1123 : v23 ∨ ¬v17 ∨ ¬v19 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v27 := by
      rcases c849 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v12 := by
      rcases c1121 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a u3
    have u7 : v13 := by
      rcases c1122 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u7 a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u10
  have c1124 : v34 ∨ ¬v17 ∨ ¬v19 ∨ v23 ∨ v29 ∨ v30 ∨ v33 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : v26 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
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
    have u5 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
    have u9 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1125 : v16 ∨ ¬v8 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
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
  have c1126 : v47 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
    have u6 : v9 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n9
    have u9 : ¬v5 := by
      rcases c27 with a|a|a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact a
    rcases c554 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n15
  have c1127 : v44 ∨ v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v13 := by
      rcases c1126 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : v35 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a n15
      · exact absurd a u9
      · exact absurd a n7
      · exact a
      · exact absurd a n16
      · exact absurd a n11
    have u15 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n0
      · exact a
    have u16 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a n9
    have u17 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v7 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n12
    have u19 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n12
    have u20 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u15 a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u15 a
      · exact absurd u16 a
      · exact a
    have u22 : v19 := by
      rcases c1120 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u23 : v21 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd u1 a
    have u24 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u22 a
    have u25 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a n13
      · exact absurd a u11
      · exact a
      · exact absurd a n10
    rcases c952 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u24
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1128 : v28 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
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
    have u4 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n15
      · exact a
    have u5 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n9
    have u6 : ¬v7 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u8 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    rcases c517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n14 a
    · exact absurd a n13
    · exact absurd a n11
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n15
    · exact absurd a n17
    · exact absurd a n18
  have c1129 : v33 ∨ v16 ∨ v20 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v19 := by
      rcases c1120 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
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
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n14
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v17 := by
      rcases c1124 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v24 := by
      rcases c1080 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v27 := by
      rcases c1127 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact a
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
    have u12 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v13 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v21 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
    have u18 : v15 := by
      rcases c420 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a n12
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n14
    have u19 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u14
    have u20 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd u18 a
      · exact absurd u1 a
      · exact a
    have u21 : v11 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u16
      · exact a
      · exact absurd a u19
    have u22 : ¬v14 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u12
    have u24 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u21 a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd u18 a
    · exact absurd a u23
  have c1130 : v46 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v19 := by
      rcases c1120 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v20 := by
      rcases c1129 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u1 a
    have u9 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u1 a
    have u10 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u1 a
    have u11 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v25 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u13 : ¬v14 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u14 : ¬v4 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u15 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n6
    have u16 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n5
    have u20 : v5 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u21 : v6 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u14
      · exact absurd u20 a
      · exact absurd a n11
      · exact absurd a u17
    rcases c27 with a|a|a
    · exact absurd u21 a
    · exact absurd u19 a
    · exact absurd u20 a
  have c1131 : ¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    rcases c420 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n11
  have c1132 : ¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1131 with a|a|a|a|a|a|a|a|a|a|a|a
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
  have c1133 : v45 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v19 := by
      rcases c1120 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v16 := by
      rcases c1130 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd u6 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v24 := by
      rcases c1080 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v27 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v26 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
    have u15 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n1
    have u18 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n1
    have u19 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n5
    have u20 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u19 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a n11
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a n7
  have c1134 : ¬v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v19 := by
      rcases c1120 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v23 := by
      rcases c1133 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
    have u19 : v16 := by
      rcases c277 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a u4
      · exact a
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u18
    have u20 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd u19 a
      · exact absurd u11 a
      · exact a
    have u21 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u11 a
    rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd u11 a
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
  have c1135 : v20 ∨ ¬v16 ∨ v17 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v24 := by
      rcases c1080 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a u2
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
  have c1136 : v27 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v29 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n7
    have u9 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
    have u10 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v19 := by
      rcases c1135 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u14 : ¬v18 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    rcases c838 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1137 : v26 ∨ ¬v16 ∨ v17 ∨ v21 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
    have u9 : ¬v34 := by
      rcases c295 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u8
    have u10 : ¬v32 := by
      rcases c929 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : v29 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a u9
    have u12 : v20 := by
      rcases c1136 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v18 := by
      rcases c78 with a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
    have u16 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u16 a
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1138 : ¬v17 ∨ ¬v16 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c1108 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
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
  have c1139 : v24 ∨ ¬v16 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v17 := by
      rcases c1138 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
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
    rcases c1137 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c1140 : v19 ∨ ¬v15 ∨ v16 ∨ ¬v17 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v20 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
    have u5 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v27 := by
      rcases c925 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
    have u13 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v23 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v13 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u15 a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd n1 a
    · exact absurd a u19
  have c1141 : ¬v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u16 : ¬v34 := by
      rcases c295 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u15
    have u17 : v29 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u16
    have u18 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v21 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v16 := by
      rcases c1139 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v15 := by
      rcases c495 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd u17 a
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u12
    have u24 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u2
    have u25 : ¬v19 := by
      rcases c595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u23 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
    have u26 : ¬v17 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd u23 a
      · exact absurd a u22
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v18 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u28 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u29 : v20 := by
      rcases c99 with a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u27
      · exact a
      · exact absurd a u26
      · exact absurd a u25
    rcases c489 with a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u1
    · exact absurd a u25
    · exact absurd a u4
    · exact absurd a u24
    · exact absurd a u28
    · exact absurd a u2
    · exact absurd a u21
  have c1142 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37 := by
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
    have u3 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n1 a
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a u1
  have c1143 : ¬v27 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37 := by
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
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n1 a
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a u1
  have c1144 : v27 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v24 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n4
    have u2 : v18 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
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
    rcases c1105 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n18
    · exact absurd a n20
    · exact absurd a n21
  have c1145 : v17 ∨ v16 ∨ ¬v18 ∨ ¬v19 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v29 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n4
    have u11 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v25 := by
      rcases c1142 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
    have u15 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
    have u16 : ¬v14 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n9
    have u17 : ¬v24 := by
      rcases c615 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n3 a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u18 : ¬v12 := by
      rcases c1121 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v8 := by
      rcases c1125 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v13 := by
      rcases c1126 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n5
      · exact a
    have u24 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u13
    have u25 : ¬v7 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u23 a
      · exact absurd u24 a
      · exact a
    rcases c242 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a u26
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd u20 a
  have c1146 : ¬v4 ∨ ¬v3 ∨ v7 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n7
  have c1147 : v17 ∨ v10 ∨ v16 ∨ v18 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n14
    have u2 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v24 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u2
    have u5 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
    have u12 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n7
    have u13 : ¬v14 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v19 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v13 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n11
    have u16 : ¬v7 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v4 := by
      rcases c1146 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n14
    have u18 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n8
    have u19 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n9
      · exact a
    have u22 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u12 a
    have u23 : v15 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u20
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u24 : v20 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u22
    rcases c70 with a|a|a
    · exact absurd u23 a
    · exact absurd u24 a
    · exact absurd u14 a
  have c1148 : v45 ∨ v16 ∨ v17 ∨ v26 ∨ v34 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v29 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n4
    have u11 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
    have u12 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v25 := by
      rcases c1142 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u9
    have u16 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u9
    have u17 : v19 := by
      rcases c1144 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v18 := by
      rcases c1145 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v10 := by
      rcases c1147 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n5
      · exact a
    have u24 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u13
    have u25 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v5 := by
      rcases c19 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u24 a
    rcases c206 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n7
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd u24 a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u22
  exact ⟨c1100, c1105, c1110, c1116, c1132, c1134, c1135, c1138, c1139, c1141, c1142, c1143, c1145, c1146, c1148⟩
