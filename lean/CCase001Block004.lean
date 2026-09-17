import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 200-249 of the 2915-step refutation of ccase001: 138 core clauses and 23 earlier-derived ones give 20 more. -/
theorem CCase001_block004
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
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
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c202 : v7 ∨ v3 ∨ v30 ∨ v44 ∨ v14 ∨ v9 ∨ ¬v2 ∨ v29 ∨ v1 ∨ v31 ∨ v37 ∨ v8 ∨ v45 ∨ v49)
    (c208 : v22 ∨ ¬v21 ∨ v20 ∨ v28 ∨ v13 ∨ v14 ∨ v15 ∨ v8)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c230 : ¬v25 ∨ v18 ∨ v19 ∨ v31 ∨ v26 ∨ v33 ∨ v24 ∨ v32)
    (c249 : v6 ∨ ¬v7 ∨ v49 ∨ v1 ∨ v48 ∨ v14 ∨ v13 ∨ v8)
    (c252 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13)
    (c253 : v21 ∨ v6 ∨ v13 ∨ v47 ∨ v26 ∨ v27 ∨ v25 ∨ v18 ∨ v11 ∨ v19 ∨ v14 ∨ ¬v20 ∨ v48 ∨ v49)
    (c259 : ¬v19 ∨ v13 ∨ v25 ∨ v11 ∨ v26 ∨ v20 ∨ v12 ∨ v18)
    (c308 : v6 ∨ v20 ∨ v13 ∨ v18 ∨ v9 ∨ v25 ∨ v26 ∨ v5 ∨ v16 ∨ v12 ∨ v23 ∨ ¬v19 ∨ v17 ∨ v4)
    (c328 : ¬v35 ∨ v29 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42 ∨ v34)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c358 : ¬v35 ∨ v42 ∨ v28 ∨ v14 ∨ v13 ∨ v41 ∨ v22 ∨ v21 ∨ v8 ∨ v34 ∨ v29 ∨ v33 ∨ v26 ∨ v40)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c385 : ¬v33 ∨ v40 ∨ v41 ∨ v39 ∨ v26 ∨ v27 ∨ v34 ∨ v32)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c401 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v25)
    (c404 : ¬v18 ∨ v25 ∨ v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c407 : v11 ∨ ¬v12 ∨ v48 ∨ v1 ∨ v4 ∨ v20 ∨ v5 ∨ v46 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v47 ∨ v14)
    (c412 : ¬v16 ∨ v22 ∨ v24 ∨ v23 ∨ v15 ∨ v10 ∨ v17 ∨ v9)
    (c431 : v15 ∨ v12 ∨ v17 ∨ v1 ∨ v46 ∨ v4 ∨ v8 ∨ ¬v11 ∨ v9 ∨ v10 ∨ v18 ∨ v45 ∨ v5 ∨ v47)
    (c435 : ¬v19 ∨ v13 ∨ v18 ∨ v20 ∨ v26 ∨ v25 ∨ v12 ∨ v27)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c443 : v48 ∨ v14 ∨ v5 ∨ v12 ∨ v7 ∨ ¬v6 ∨ v47 ∨ v13)
    (c444 : v29 ∨ ¬v22 ∨ v30 ∨ v28 ∨ v21 ∨ v16 ∨ v15 ∨ v23)
    (c445 : ¬v16 ∨ v23 ∨ v8 ∨ v24 ∨ v10 ∨ v9 ∨ v17 ∨ v15)
    (c456 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v8 ∨ v17 ∨ v3 ∨ v22 ∨ ¬v18 ∨ v11)
    (c461 : ¬v19 ∨ v26 ∨ v13 ∨ v33 ∨ v39 ∨ v21 ∨ v20 ∨ v41 ∨ v18 ∨ v25 ∨ v28 ∨ v12 ∨ v40 ∨ v14)
    (c468 : v6 ∨ v3 ∨ ¬v10 ∨ v13 ∨ v9 ∨ v11 ∨ v12 ∨ v2 ∨ v18 ∨ v17 ∨ v20 ∨ v44 ∨ v45 ∨ v46)
    (c469 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v40 ∨ v35 ∨ v42 ∨ v33)
    (c546 : ¬v34 ∨ v41 ∨ v42 ∨ v35 ∨ v28 ∨ v27 ∨ v40 ∨ v33)
    (c564 : v12 ∨ ¬v19 ∨ v26 ∨ v46 ∨ v25 ∨ v24 ∨ v13 ∨ v18 ∨ v20 ∨ v10 ∨ v17 ∨ v5 ∨ v47 ∨ v48)
    (c576 : ¬v16 ∨ v22 ∨ v24 ∨ v9 ∨ v8 ∨ v17 ∨ v23 ∨ v15)
    (c600 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26 ∨ v10 ∨ v19 ∨ v17)
    (c604 : v10 ∨ v11 ∨ v23 ∨ v24 ∨ ¬v17 ∨ v16 ∨ v25 ∨ v18)
    (c651 : v10 ∨ v11 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c656 : ¬v11 ∨ ¬v2 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c658 : ¬v19 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c667 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c672 : v21 ∨ ¬v2 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c676 : ¬v9 ∨ ¬v4 ∨ ¬v5 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c686 : v10 ∨ ¬v2 ∨ v12 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c693 : ¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c694 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c709 : v11 ∨ ¬v6 ∨ v10 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c723 : ¬v21 ∨ v8 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c753 : v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c772 : ¬v12 ∨ ¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c776 : v37 ∨ ¬v10 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c793 : v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c794 : ¬v2 ∨ ¬v11 ∨ ¬v12 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c795 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c800 : v38 ∨ ¬v20 ∨ v27 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c801 : ¬v27 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41)
    (c804 : ¬v12 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c811 : v9 ∨ ¬v10 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25) ∧ (¬v11 ∨ ¬v2 ∨ v10 ∨ v12 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24) ∧ (¬v11 ∨ v10 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25) ∧ (¬v9 ∨ v7 ∨ ¬v13 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v27 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42) ∧ (v26 ∨ ¬v9 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v24 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47) ∧ (v47 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v48 ∨ ¬v9 ∨ ¬v11 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v49) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24) ∧ (v13 ∨ ¬v2 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33) ∧ (v20 ∨ v9 ∨ v11 ∨ v18 ∨ v22 ∨ v26 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30) ∧ (¬v12 ∨ v11 ∨ v13 ∨ v18 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ ¬v12 ∨ v18 ∨ v22 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24) := by
  have c812 : v12 ∨ ¬v9 ∨ ¬v10 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n10
    have u6 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n14
    have u8 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u7 a
    have u9 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u7 a
    have u10 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u11 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n15
      · exact a
      · exact absurd a n6
      · exact absurd a n12
    have u12 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u11 a
    rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd u11 a
    · exact absurd a u1
  have c813 : v11 ∨ ¬v2 ∨ v5 ∨ v12 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u2 : v3 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n10
      · exact a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd u1 a
    rcases c16 with a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd n1 a
  have c814 : v47 ∨ ¬v10 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v33 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c801 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v20 := by
      rcases c800 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u5
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v26 := by
      rcases c385 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
    have u8 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v12 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v9 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v17 := by
      rcases c811 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a u9
    have u19 : ¬v5 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u20 : v11 := by
      rcases c813 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u21 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v6 := by
      rcases c656 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u18 a
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n13
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n2
  have c815 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n6
  have c816 : ¬v11 ∨ ¬v2 ∨ v10 ∨ v12 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
    have u2 : v19 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
    have u3 : v21 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    rcases c99 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
  have c818 : v10 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v2 := by
      rcases c816 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
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
      · exact absurd a n23
    have u3 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a n16
    · exact absurd a n20
    · exact absurd a u3
    · exact absurd a n7
  have c819 : ¬v11 ∨ v10 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v9 := by
      rcases c818 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
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
    have u2 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u5 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n21
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n17
      · exact absurd a n13
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n22
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n18
    have u8 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u9 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u10 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u11 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n16
      · exact absurd a n20
      · exact a
      · exact absurd a n7
      · exact absurd a n12
    have u12 : v19 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n3
    rcases c92 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c820 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    rcases c604 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n3
  have c821 : ¬v9 ∨ v7 ∨ ¬v13 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
    rcases c723 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c822 : v23 ∨ v10 ∨ v18 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v12 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v11 := by
      rcases c819 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n23
      · exact absurd a n24
    have u3 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n11
      · exact absurd a n21
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n16
    have u5 : ¬v17 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n23
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n17
      · exact absurd a n12
    have u7 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n10
    have u8 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u7 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u4 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v9 := by
      rcases c821 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n24
    have u11 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n14
    · exact absurd a n19
    · exact absurd a u11
    · exact absurd a n0
  have c823 : v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v33 := by
      rcases c793 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c814 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
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
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v27 := by
      rcases c801 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v26 := by
      rcases c385 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u4
    have u8 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v20 := by
      rcases c800 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
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
    have u14 : v18 := by
      rcases c822 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u5
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
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
    have u15 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u3
    have u21 : ¬v12 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
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
    have u22 : v11 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u16
    have u23 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u20 a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u24 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a u9
    have u25 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u22 a
    have u26 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u24 a
      · exact absurd u22 a
      · exact a
    have u27 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u24 a
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u23
      · exact a
    have u28 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n0
    rcases c8 with a|a|a
    · exact absurd u27 a
    · exact absurd u20 a
    · exact absurd u28 a
  have c824 : v27 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v26 := by
      rcases c469 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n1
    have u2 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u1 a
    rcases c546 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n1
  have c825 : v26 ∨ ¬v9 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v24 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n11
    have u6 : ¬v1 := by
      rcases c7 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u7 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u6
  have c826 : v47 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v9 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n0
    have u2 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n7
    have u3 : ¬v12 := by
      rcases c794 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n23
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n17
    have u5 : v10 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a u1
      · exact a
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n0
      · exact absurd a n22
    rcases c693 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a n21
    · exact absurd a n0
    · exact absurd a n22
  have c827 : v20 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v11 := by
      rcases c826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
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
      · exact absurd a n19
      · exact absurd a n20
    have u7 : v12 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a u2
    have u8 : v10 := by
      rcases c600 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u1
    have u9 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u11 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u13 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n14
    have u14 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a u5
      · exact absurd a n2
    have u15 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u13 a
    have u16 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u13 a
    have u17 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u13 a
    rcases c407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u7 a
    · exact absurd a n19
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a n17
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a n18
    · exact absurd a u9
  have c828 : v9 ∨ ¬v4 ∨ ¬v10 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c772 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u4 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n5
    have u5 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    rcases c202 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a n13
  have c829 : ¬v4 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
    have u4 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n6
    rcases c16 with a|a|a
    · exact absurd n0 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd u1 a
  have c831 : v11 ∨ v9 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n20
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n16
    have u2 : v10 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v12 := by
      rcases c828 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n22
    have u4 : ¬v2 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u5 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n18
      · exact a
      · exact absurd a n5
    have u6 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n8
      · exact a
      · exact absurd a n21
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n17
    have u10 : v8 := by
      rcases c576 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u6
    have u11 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u1 a
    have u12 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u1 a
    have u13 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u2 a
    rcases c468 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u2 a
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
  have c832 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
  have c833 : v22 ∨ ¬v4 ∨ ¬v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v18 ∨ v20 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u4 : ¬v19 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v21 := by
      rcases c832 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
    have u6 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n13
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n14
    rcases c33 with a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd u7 a
  have c834 : v28 ∨ ¬v4 ∨ ¬v9 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
    have u2 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
    have u3 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
    have u4 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v21 := by
      rcases c832 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u6 : ¬v17 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n14
    have u8 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n11
    rcases c28 with a|a|a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd u7 a
  have c835 : v26 ∨ v11 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v18 := by
      rcases c827 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
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
      · exact absurd a n23
      · exact absurd a n24
    have u2 : v9 := by
      rcases c831 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n24
    have u3 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n21
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n16
    have u4 : ¬v12 := by
      rcases c834 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n24
    have u5 : ¬v10 := by
      rcases c833 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
      · exact absurd a n24
    have u6 : ¬v17 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u8 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n10
    have u9 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u8 a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u3 a
    have u11 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n22
      · exact absurd a n12
      · exact a
      · exact absurd a n17
    have u12 : v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n21
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n22
      · exact absurd a n23
    have u13 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u2 a
      · exact absurd u12 a
      · exact a
    rcases c252 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd u12 a
  have c836 : v48 ∨ ¬v9 ∨ ¬v11 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c832 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u5 : ¬v19 := by
      rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a u1
    have u6 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n15
    have u7 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n8
      · exact a
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n13
    have u8 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u9 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    rcases c249 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u6 a
    · exact absurd a n17
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c837 : v15 ∨ v8 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    rcases c576 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n0
  have c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    rcases c837 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c839 : v13 ∨ ¬v2 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v6 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n3 a
    rcases c23 with a|a|a
    · exact absurd n3 a
    · exact absurd n1 a
    · exact absurd u1 a
  have c840 : v6 ∨ v4 ∨ v5 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v23 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n8 a
    rcases c308 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd n8 a
    · exact absurd a u1
    · exact absurd a n1
  have c841 : v4 ∨ ¬v2 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v16 ∨ v18 ∨ v20 ∨ v23 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v5 := by
      rcases c839 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n12
      · exact a
      · exact absurd a n13
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v27 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n4
      · exact a
    have u5 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v10 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
    have u8 : v6 := by
      rcases c840 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v7 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd u8 a
      · exact absurd a n15
      · exact absurd a n5
    rcases c25 with a|a|a
    · exact absurd n1 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c842 : v4 ∨ v8 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a u1
      · exact absurd a n8
    have u3 : v13 := by
      rcases c841 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u5 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u6 : v19 := by
      rcases c686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u7 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v3 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
    have u9 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u2 a
    rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n20
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n19
    · exact absurd a u5
    · exact absurd a n21
  have c843 : v4 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v8 := by
      rcases c842 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
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
    have u2 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n12
    have u7 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a u5
      · exact absurd a n7
    have u8 : v19 := by
      rcases c686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u9 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u8 a
    · exact absurd a n10
    · exact absurd a n19
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a n20
    · exact absurd a n21
  have c844 : ¬v16 ∨ v9 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v8 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v10 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c44 with a|a|a
    · exact absurd u2 a
    · exact absurd u3 a
    · exact absurd n2 a
  have c845 : v20 ∨ v12 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v34 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v27 := by
      rcases c824 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : v11 := by
      rcases c835 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
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
      · exact absurd a n14
    have u15 : ¬v18 := by
      rcases c827 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
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
    have u16 : ¬v9 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n14
    have u17 : v4 := by
      rcases c843 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v16 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
    have u19 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u11
    have u20 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u17 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u19 a
    have u22 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u19 a
    have u23 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a n12
      · exact absurd a u6
      · exact a
      · exact absurd a n6
    have u24 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a u20
      · exact a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n8
    have u27 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u4
    rcases c66 with a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd u14 a
  have c846 : v35 ∨ v20 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v34 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v27 := by
      rcases c824 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : v11 := by
      rcases c835 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
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
    have u15 : v12 := by
      rcases c845 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u16 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
    have u17 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
    have u19 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u20 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u14 a
    have u21 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u11
    have u22 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u21
      · exact absurd a u11
    have u23 : ¬v21 := by
      rcases c832 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u9
    have u24 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n7
    have u25 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
    rcases c249 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd u24 a
    · exact absurd a n13
    · exact absurd a u26
    · exact absurd a n12
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u18
  have c847 : v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v20 := by
      rcases c846 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v34 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v27 := by
      rcases c824 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v11 := by
      rcases c826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u20 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n3
    have u21 : ¬v2 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u22 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u17
    have u23 : ¬v5 := by
      rcases c676 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd u20 a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
    have u24 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n4
    have u25 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
    have u26 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u22 a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
    have u28 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u22 a
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u26
      · exact absurd a u21
      · exact a
    have u29 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n6
    rcases c12 with a|a|a
    · exact absurd u28 a
    · exact absurd u20 a
    · exact absurd u29 a
  have c848 : v14 ∨ v6 ∨ v8 ∨ v11 ∨ v13 ∨ v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n9 a
      · exact a
    have u6 : v27 := by
      rcases c253 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u6 a
    rcases c358 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n12
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n10
  have c849 : ¬v25 ∨ v18 ∨ v24 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n5
    rcases c658 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    rcases c849 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c851 : v8 ∨ ¬v9 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v18 ∨ v25 ∨ v26 ∨ ¬v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v20 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a u3
    have u10 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v21 := by
      rcases c358 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n10
    have u13 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u12 a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u12 a
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a n0
  have c852 : v9 ∨ v11 ∨ v18 ∨ v20 ∨ v22 ∨ v26 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n6 a
      · exact a
    rcases c831 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
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
  have c853 : v20 ∨ v9 ∨ v11 ∨ v18 ∨ v22 ∨ v26 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v28 := by
      rcases c852 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u9 : v27 := by
      rcases c328 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
    have u10 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u9 a
      · exact a
    rcases c831 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c854 : ¬v9 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v18 ∨ v25 ∨ v26 ∨ ¬v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c851 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n7 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c855 : v13 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v20 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n8
    have u8 : ¬v9 := by
      rcases c854 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v22 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
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
    have u10 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v10 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u2
    have u13 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd u7 a
      · exact absurd u12 a
      · exact a
    have u15 : v5 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd u12 a
      · exact a
      · exact absurd a u13
      · exact absurd a n15
      · exact absurd a u14
      · exact absurd a n0
    rcases c32 with a|a|a
    · exact absurd u12 a
    · exact absurd u15 a
    · exact absurd u7 a
  have c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    rcases c444 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
  have c857 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    rcases c856 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c858 : v22 ∨ ¬v4 ∨ v9 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v25 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : v10 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v16 := by
      rcases c772 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd u3 a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
    have u6 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u3 a
    have u7 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a u1
    have u8 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    rcases c202 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd u7 a
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u6
    · exact absurd a n14
    · exact absurd a n15
  have c859 : ¬v12 ∨ v11 ∨ v13 ∨ v18 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
    have u9 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n7
    have u10 : v20 := by
      rcases c855 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n0 a
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
      · exact absurd a n16
    have u11 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v9 := by
      rcases c854 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : ¬v22 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u2
    have u17 : ¬v27 := by
      rcases c858 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u9 a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u18 : v28 := by
      rcases c328 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u17
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
    have u19 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v10 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u21 a
    have u23 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u21 a
    rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a u23
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c860 : v11 ∨ ¬v12 ∨ v18 ∨ v22 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v13 := by
      rcases c859 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
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
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v20 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u2 a
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
    have u12 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n7
    have u15 : ¬v27 := by
      rcases c858 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u16 : v28 := by
      rcases c328 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u15
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
    have u17 : ¬v24 := by
      rcases c651 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
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
    have u18 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u16 a
      · exact a
    rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n12
  have c861 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    rcases c445 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
  exact ⟨c815, c816, c817, c819, c820, c821, c824, c825, c826, c830, c836, c838, c839, c847, c850, c853, c856, c859, c860, c861⟩
