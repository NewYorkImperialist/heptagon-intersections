import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 100-149 of the 2559-step refutation of ccase003: 111 core clauses and 20 earlier-derived ones give 28 more. -/
theorem CCase003_block002
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c181 : ¬v45 ∨ ¬v49)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c198 : ¬v30 ∨ v37 ∨ v15 ∨ v33 ∨ v22 ∨ v23 ∨ v17 ∨ v16 ∨ v29 ∨ v31 ∨ v40 ∨ v38 ∨ v26 ∨ v32)
    (c225 : ¬v3 ∨ v2 ∨ v45 ∨ v46 ∨ v44 ∨ v4 ∨ v9 ∨ v10)
    (c228 : ¬v25 ∨ v24 ∨ v18 ∨ v26 ∨ v31 ∨ v33 ∨ v32 ∨ v19)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c250 : v6 ∨ v27 ∨ v14 ∨ v21 ∨ v25 ∨ v13 ∨ v26 ∨ v18 ∨ ¬v20 ∨ v19 ∨ v11 ∨ v47 ∨ v48 ∨ v49)
    (c255 : ¬v19 ∨ v12 ∨ v18 ∨ v26 ∨ v25 ∨ v20 ∨ v13 ∨ v11)
    (c259 : v23 ∨ ¬v20 ∨ v33 ∨ v27 ∨ v26 ∨ v13 ∨ v19 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v9 ∨ v34 ∨ v35)
    (c265 : v4 ∨ v6 ∨ v46 ∨ v12 ∨ v47 ∨ v48 ∨ ¬v5 ∨ v11)
    (c284 : ¬v30 ∨ v37 ∨ v28 ∨ v2 ∨ v3 ∨ v22 ∨ v23 ∨ v29 ∨ v31 ∨ v35 ∨ v1 ∨ v38 ∨ v42 ∨ v44)
    (c289 : v15 ∨ v12 ∨ v1 ∨ v33 ∨ v20 ∨ v7 ∨ v19 ∨ v14 ∨ v8 ∨ ¬v13 ∨ v27 ∨ v6 ∨ v34 ∨ v35)
    (c320 : v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v26 ∨ v33 ∨ v30 ∨ v17 ∨ v19 ∨ v18 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c323 : ¬v25 ∨ v32 ∨ v33 ∨ v26 ∨ v24 ∨ v31 ∨ v17 ∨ v18)
    (c324 : ¬v30 ∨ v23 ∨ v38 ∨ v37 ∨ v31 ∨ v24 ∨ v22 ∨ v29)
    (c329 : v10 ∨ v12 ∨ v17 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v4 ∨ v3)
    (c337 : v6 ∨ v1 ∨ v13 ∨ v7 ∨ v15 ∨ v8 ∨ ¬v14 ∨ v21)
    (c338 : v11 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v45 ∨ v19 ∨ v13 ∨ v27 ∨ v10 ∨ v17 ∨ v20 ∨ v4 ∨ v46 ∨ v47)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c351 : v12 ∨ v7 ∨ v18 ∨ v4 ∨ v14 ∨ v10 ∨ v13 ∨ v19 ∨ v21 ∨ ¬v11 ∨ v3 ∨ v45 ∨ v46 ∨ v47)
    (c356 : ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v48 ∨ v4 ∨ v12 ∨ v13)
    (c363 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v46 ∨ v10 ∨ v4)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c384 : v48 ∨ v19 ∨ v5 ∨ v4 ∨ v15 ∨ v20 ∨ v13 ∨ v8 ∨ v11 ∨ v1 ∨ ¬v12 ∨ v46 ∨ v47 ∨ v14)
    (c403 : ¬v3 ∨ v2 ∨ v46 ∨ v11 ∨ v44 ∨ v45 ∨ v4 ∨ v10)
    (c409 : v14 ∨ v47 ∨ v5 ∨ v48 ∨ v49 ∨ v7 ∨ ¬v6 ∨ v13)
    (c410 : v23 ∨ ¬v24 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17 ∨ v16)
    (c443 : v22 ∨ v13 ∨ v26 ∨ v32 ∨ v25 ∨ v12 ∨ v20 ∨ v21 ∨ v18 ∨ v15 ∨ v8 ∨ ¬v19 ∨ v33 ∨ v34)
    (c447 : v29 ∨ ¬v28 ∨ v35 ∨ v15 ∨ v22 ∨ v34 ∨ v27 ∨ v21)
    (c467 : v9 ∨ v10 ∨ v31 ∨ v25 ∨ v18 ∨ v2 ∨ v3 ∨ v4 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v11 ∨ v32 ∨ v33)
    (c477 : v33 ∨ v26 ∨ v32 ∨ v4 ∨ v17 ∨ v3 ∨ v10 ∨ v34 ∨ v19 ∨ v13 ∨ v5 ∨ v20 ∨ ¬v12 ∨ v11)
    (c481 : ¬v12 ∨ v19 ∨ v5 ∨ v18 ∨ v20 ∨ v4 ∨ v13 ∨ v11)
    (c514 : v44 ∨ ¬v17 ∨ v26 ∨ v24 ∨ v25 ∨ v10 ∨ v45 ∨ v46 ∨ v12 ∨ v19 ∨ v18 ∨ v3 ∨ v9 ∨ v16)
    (c546 : ¬v20 ∨ v21 ∨ v14 ∨ v26 ∨ v27 ∨ v19 ∨ v12 ∨ v13)
    (c564 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c566 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c590 : ¬v6 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c594 : v18 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c607 : v6 ∨ v7 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c608 : ¬v5 ∨ v6 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c628 : v23 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c655 : v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c659 : ¬v4 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c660 : v23 ∨ ¬v4 ∨ v19 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c661 : ¬v5 ∨ v4 ∨ ¬v10 ∨ v12 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    : (¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46) ∧ (v25 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v11 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v34) ∧ (v31 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27) ∧ (v27 ∨ ¬v4 ∨ ¬v5 ∨ v12 ∨ v19 ∨ v24 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48) ∧ (¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26) ∧ (v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (v27 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33) ∧ (v26 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35) ∧ (v27 ∨ ¬v19 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v14 ∨ v10 ∨ v11 ∨ v13 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v32 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ ¬v26 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38) ∧ (v26 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v25 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40) ∧ (v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (v23 ∨ ¬v12 ∨ v13 ∨ v15 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35) ∧ (v31 ∨ ¬v5 ∨ ¬v6 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49) ∧ (¬v11 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47) ∧ (v25 ∨ v19 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v38 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v9 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u2 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    rcases c403 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
  have c664 : v12 ∨ v2 ∨ v4 ∨ ¬v5 ∨ v10 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v1 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact a
    have u4 : v13 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n2
      · exact absurd a n0
      · exact a
    have u5 : v11 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd n3 a
      · exact a
    rcases c54 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c665 : v46 ∨ v12 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n13
    have u2 : ¬v4 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v10 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u4 : v2 := by
      rcases c664 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u4 a
      · exact absurd u1 a
      · exact a
    have u6 : v11 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd u1 a
      · exact a
    have u7 : v13 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a n1
      · exact a
    rcases c54 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c666 : v25 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v4 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u2 : v12 := by
      rcases c665 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n12
    have u7 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
  have c667 : ¬v11 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    rcases c443 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n6
    · exact absurd a n7
  have c668 : v31 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u5 : v19 := by
      rcases c666 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n1
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v11 := by
      rcases c667 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n10
    have u12 : ¬v12 := by
      rcases c659 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v13 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a u10
    have u14 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n12
      · exact a
      · exact absurd a n4
    have u17 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u7
    rcases c14 with a|a|a
    · exact absurd u16 a
    · exact absurd u17 a
    · exact absurd u11 a
  have c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c594 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c670 : v27 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v24 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v23 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n8
      · exact a
    have u3 : ¬v22 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u1 a
    have u4 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u2 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    rcases c546 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
  have c672 : v27 ∨ ¬v4 ∨ ¬v5 ∨ v12 ∨ v19 ∨ v24 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u5 : v10 := by
      rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n14
      · exact a
      · exact absurd a n17
      · exact absurd a n10
    rcases c671 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n0
  have c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c674 : v26 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v24 ∨ v25 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v19 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u2 : ¬v4 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u3 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n19
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n15
  have c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n1 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
  have c676 : v27 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n2 a
    have u2 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n2 a
    have u3 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v17 := by
      rcases c320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u4 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c677 : v34 ∨ v12 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v27 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v19 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
    have u3 : ¬v24 := by
      rcases c676 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n18
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n13
    have u5 : ¬v4 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u6 : v11 := by
      rcases c674 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
    have u7 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v6 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u8
    have u11 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u10 a
    have u12 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n6
      · exact a
    have u13 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u12 a
    rcases c514 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd u12 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u13
  have c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := by
      rcases c228 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact a
    have u2 : v17 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n0
    rcases c72 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c679 : v26 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u2 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u3 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c680 : v27 ∨ ¬v19 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
  have c681 : ¬v6 ∨ ¬v4 ∨ v7 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c409 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
  have c682 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    rcases c250 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c683 : v14 ∨ v10 ∨ v11 ∨ v13 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd n8 a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd n8 a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n12
    have u4 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v6 := by
      rcases c681 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v20 := by
      rcases c682 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n13
    · exact absurd a u6
    · exact absurd a n17
    · exact absurd a n10
  have c684 : v14 ∨ ¬v3 ∨ v11 ∨ v13 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n12
    have u3 : v20 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    rcases c682 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c685 : v32 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v27 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v25 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v12 := by
      rcases c677 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n2 a
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v22 := by
      rcases c683 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u9 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u9 a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
    have u13 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a u12
    have u14 : v19 := by
      rcases c684 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u13 a
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u15 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n13
      · exact a
      · exact absurd a n3
    have u18 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a u16
      · exact absurd a n17
      · exact absurd a n6
    rcases c16 with a|a|a
    · exact absurd u17 a
    · exact absurd u13 a
    · exact absurd u18 a
  have c687 : v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v28 := by
      rcases c655 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v26 := by
      rcases c685 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u4 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u6 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c680 with a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
  have c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n6
    have u2 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u3 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : v14 := by
      rcases c409 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n2
    rcases c638 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
  have c689 : ¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    rcases c680 with a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
  have c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v13 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n0
    rcases c641 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c691 : ¬v25 ∨ ¬v26 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n2 a
    rcases c324 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
  have c692 : v45 ∨ ¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v25 := by
      rcases c691 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v28 := by
      rcases c689 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n11
    have u10 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a u2
    have u15 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n7
    have u16 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u17 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    rcases c329 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd u9 a
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u16
  have c693 : v26 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v25 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v24 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u1 a
    have u4 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u1 a
    rcases c198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n8
  have c694 : v49 ∨ ¬v19 ∨ v27 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v26 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
    have u8 : ¬v25 := by
      rcases c693 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u9 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
    have u10 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
    have u11 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n16
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n11
    have u12 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u10 a
      · exact a
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n13
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n0
  have c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v14 := by
      rcases c409 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n3
    rcases c57 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c696 : v23 ∨ ¬v12 ∨ v13 ∨ v15 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    rcases c259 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n5 a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
  have c697 : v13 ∨ ¬v4 ∨ v15 ∨ v19 ∨ v26 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v6 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v28 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
    have u3 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a n8
    have u4 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v22 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a u4
    have u6 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u5 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v12 := by
      rcases c696 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v14 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
    have u10 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u12 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    rcases c337 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd u8 a
    · exact absurd a u4
  have c698 : v15 ∨ ¬v4 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v13 := by
      rcases c697 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n5
      · exact a
      · exact absurd a n20
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n15
    have u8 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u10 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u11 : v28 := by
      rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u12 : v20 := by
      rcases c289 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n10
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v24 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u16 : v23 := by
      rcases c410 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u14
    rcases c100 with a|a|a
    · exact absurd u16 a
    · exact absurd u11 a
    · exact absurd u15 a
  have c699 : v18 ∨ v15 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v4 := by
      rcases c698 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n18
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n13
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a n19
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n14
    have u10 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a u8
      · exact absurd a n20
      · exact absurd a n10
    have u11 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    have u14 : v21 := by
      rcases c351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u15 : v16 := by
      rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    rcases c70 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c700 : v31 ∨ ¬v5 ∨ ¬v6 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v28 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    have u6 : v22 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n3 a
      · exact a
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u8 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a u4
    have u9 : v11 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    rcases c49 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c701 : ¬v18 ∨ v13 ∨ v15 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n18
      · exact absurd a n9
    have u5 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v5 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u7 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n12
    have u8 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u7 a
    rcases c338 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n15
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n16
    · exact absurd a n17
  have c702 : v15 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v18 := by
      rcases c699 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v13 := by
      rcases c701 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
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
    have u4 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    rcases c381 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n1
  have c703 : v25 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v24 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n19
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n14
    have u6 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n20
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n15
    have u7 : v23 := by
      rcases c410 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n2
    have u8 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u4 a
    rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u10
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n22
  have c704 : ¬v11 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    rcases c343 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n4
  have c705 : v25 ∨ v19 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v15 := by
      rcases c702 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c703 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
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
      · exact absurd a n19
    have u7 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a n18
      · exact absurd a n8
    have u8 : ¬v11 := by
      rcases c704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n17
    have u9 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n16
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n11
  have c706 : v23 ∨ ¬v5 ∨ ¬v6 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n5 a
    rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c707 : v4 ∨ ¬v6 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v25 ∨ v26 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v24 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v11 := by
      rcases c704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n20
    have u3 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd u1 a
    have u4 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd u1 a
    have u5 : ¬v5 := by
      rcases c706 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n20
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n17
    rcases c481 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u2
  have c708 : ¬v6 ∨ v4 ∨ v5 ∨ v11 ∨ v13 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v26 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v1 := by
      rcases c384 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u4
    have u7 : v3 := by
      rcases c477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n3
    have u8 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u10 : v49 := by
      rcases c409 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n2
      · exact absurd a n16
      · exact a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n4
    have u11 : v45 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a n1
    rcases c181 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c709 : v28 ∨ ¬v6 ∨ v13 ∨ v17 ∨ v19 ∨ v20 ∨ ¬v25 ∨ v26 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : v18 := by
      rcases c707 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u3 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n22
    have u6 : v5 := by
      rcases c708 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u7 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u8 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    rcases c639 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a n17
    · exact absurd a n22
  have c710 : v19 ∨ v13 ∨ ¬v25 ∨ v26 ∨ v27 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v28 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
    have u3 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n19
    have u4 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : v17 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
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
      · exact absurd a n19
      · exact absurd a n20
    have u6 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v24 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n20
    have u10 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
    have u11 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
    have u12 : ¬v5 := by
      rcases c706 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u13 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n13
    rcases c481 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u9
  have c711 : ¬v25 ∨ ¬v5 ∨ ¬v6 ∨ v14 ∨ v26 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n3
      · exact a
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n5
    have u5 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u4 a
      · exact a
    rcases c693 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c712 : v48 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v30 := by
      rcases c687 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n18
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
    have u4 : v25 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
    have u5 : ¬v28 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v13 := by
      rcases c710 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
    have u7 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n11
    have u11 : ¬v6 := by
      rcases c711 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u10 a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n18
    have u12 : ¬v7 := by
      rcases c608 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
    rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n17
    · exact absurd a n0
    · exact absurd a n18
  have c713 : v38 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v30 := by
      rcases c687 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v26 := by
      rcases c712 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u3 : ¬v25 := by
      rcases c691 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n0
    have u4 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v28 := by
      rcases c689 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n8
    have u13 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n17
      · exact absurd a n11
      · exact absurd a u5
    have u18 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a n5
    have u19 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    have u20 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    rcases c329 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd u12 a
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u19
  exact ⟨c663, c666, c667, c668, c669, c671, c672, c673, c675, c676, c678, c679, c680, c682, c683, c685, c687, c688, c689, c690, c691, c693, c695, c696, c700, c704, c705, c713⟩
