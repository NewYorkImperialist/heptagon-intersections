import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 150-199 of the 2559-step refutation of ccase003: 114 core clauses and 32 earlier-derived ones give 22 more. -/
theorem CCase003_block003
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
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
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c103 : ¬v23 ∨ ¬v28 ∨ ¬v25)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c200 : ¬v31 ∨ v29 ∨ v24 ∨ v32 ∨ v28 ∨ v35 ∨ v23 ∨ v38 ∨ v30 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46)
    (c214 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v25)
    (c246 : ¬v16 ∨ v15 ∨ v23 ∨ v17 ∨ v8 ∨ v10 ∨ v9 ∨ v22)
    (c251 : ¬v25 ∨ v18 ∨ v33 ∨ v26 ∨ v17 ∨ v19 ∨ v24 ∨ v32)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c265 : v4 ∨ v6 ∨ v46 ∨ v12 ∨ v47 ∨ v48 ∨ ¬v5 ∨ v11)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c273 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v33 ∨ v46 ∨ v44 ∨ v37 ∨ v25 ∨ v32 ∨ v34 ∨ v41 ∨ v45 ∨ v27)
    (c286 : v3 ∨ ¬v2 ∨ v10 ∨ v8 ∨ v9 ∨ v44 ∨ v45 ∨ v1)
    (c296 : v16 ∨ v23 ∨ v24 ∨ ¬v17 ∨ v10 ∨ v18 ∨ v11 ∨ v9)
    (c324 : ¬v30 ∨ v23 ∨ v38 ∨ v37 ∨ v31 ∨ v24 ∨ v22 ∨ v29)
    (c335 : ¬v12 ∨ v6 ∨ v26 ∨ v21 ∨ v33 ∨ v7 ∨ v14 ∨ v5 ∨ v19 ∨ v13 ∨ v32 ∨ v11 ∨ v18 ∨ v34)
    (c337 : v6 ∨ v1 ∨ v13 ∨ v7 ∨ v15 ∨ v8 ∨ ¬v14 ∨ v21)
    (c338 : v11 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v45 ∨ v19 ∨ v13 ∨ v27 ∨ v10 ∨ v17 ∨ v20 ∨ v4 ∨ v46 ∨ v47)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c356 : ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v48 ∨ v4 ∨ v12 ∨ v13)
    (c408 : v4 ∨ v6 ∨ v27 ∨ v33 ∨ v21 ∨ v14 ∨ v5 ∨ v18 ∨ v12 ∨ v11 ∨ v35 ∨ v20 ∨ v34 ∨ ¬v13)
    (c433 : v29 ∨ v35 ∨ ¬v7 ∨ v2 ∨ v9 ∨ v8 ∨ v6 ∨ v14 ∨ v34 ∨ v1 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c442 : v4 ∨ v6 ∨ v19 ∨ v13 ∨ v11 ∨ ¬v12 ∨ v5 ∨ v18)
    (c450 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v39 ∨ v32)
    (c456 : ¬v32 ∨ v39 ∨ v31 ∨ v40 ∨ v33 ∨ v38 ∨ v25 ∨ v24)
    (c457 : ¬v32 ∨ v39 ∨ v31 ∨ v33 ∨ v40 ∨ v25 ∨ v38 ∨ v26)
    (c458 : ¬v19 ∨ v26 ∨ v12 ∨ v27 ∨ v32 ∨ v17 ∨ v9 ∨ v11 ∨ v18 ∨ v16 ∨ v23 ∨ v20 ∨ v33 ∨ v34)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c481 : ¬v12 ∨ v19 ∨ v5 ∨ v18 ∨ v20 ∨ v4 ∨ v13 ∨ v11)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c590 : ¬v6 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c603 : ¬v6 ∨ ¬v12 ∨ v16 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c605 : ¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c607 : v6 ∨ v7 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c608 : ¬v5 ∨ v6 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c609 : v18 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48)
    (c626 : v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c628 : v23 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c652 : v14 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v49)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c672 : v27 ∨ ¬v4 ∨ ¬v5 ∨ v12 ∨ v19 ∨ v24 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c680 : v27 ∨ ¬v19 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c683 : v14 ∨ v10 ∨ v11 ∨ v13 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c687 : v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c693 : v26 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v25 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c704 : ¬v11 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c713 : v38 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v26 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38) ∧ (¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v13 ∨ v15 ∨ v21) ∧ (¬v4 ∨ ¬v5 ∨ v6 ∨ v13 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v28 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38) ∧ (v45 ∨ v6 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v46 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30) ∧ (v17 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v30 ∨ v32 ∨ v33) ∧ (v5 ∨ v4 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47) ∧ (v46 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v48 ∨ ¬v13 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v49) ∧ (v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v13 ∨ v4 ∨ v5 ∨ v6 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v33 ∨ v34 ∨ v35) ∧ (v26 ∨ v14 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v28 ∨ ¬v14 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47) ∧ (v28 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23) ∧ (v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v22 ∨ ¬v14 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v47) ∧ (v38 ∨ ¬v28 ∨ ¬v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v18 ∨ v5 ∨ ¬v7 ∨ v16 ∨ v19 ∨ v21 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) := by
  have c714 : ¬v26 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n2 a
    rcases c324 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c715 : v28 ∨ ¬v13 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    rcases c652 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n5 a
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
  have c716 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v13 ∨ v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    rcases c337 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n6
  have c717 : ¬v4 ∨ ¬v5 ∨ v6 ∨ v13 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n6
    rcases c716 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c718 : v25 ∨ ¬v5 ∨ v6 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v13 := by
      rcases c715 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
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
    have u2 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v4 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n17
    have u7 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n11
    have u8 : v12 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u6
      · exact a
      · exact absurd a u1
    rcases c53 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c719 : ¬v28 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c324 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u2
  have c720 : v45 ∨ v6 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n3
    have u3 : ¬v13 := by
      rcases c715 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
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
    have u4 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v5 := by
      rcases c718 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd n4 a
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
    have u7 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n11
    have u8 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v4 := by
      rcases c442 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a u4
    have u12 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n7
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n8
    rcases c641 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a n14
  have c721 : v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v30 := by
      rcases c687 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v27 := by
      rcases c713 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v28 := by
      rcases c719 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v26 := by
      rcases c714 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
    have u7 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v25 := by
      rcases c693 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u13 : ¬v13 := by
      rcases c715 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u14 : v6 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n16
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n13
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n7
  have c722 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n6
  have c723 : v46 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n1
    have u3 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v25 := by
      rcases c722 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v6 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u6
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
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
    have u9 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n8
    have u10 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u7 a
    have u11 : v13 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n3
    rcases c58 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c724 : ¬v31 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v26 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
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
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    rcases c214 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u3
  have c725 : v28 ∨ v25 ∨ ¬v26 ∨ v27 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n1
    have u9 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u10 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u11 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n11
    have u12 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n14
      · exact a
      · exact absurd a u2
    have u16 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n19
      · exact absurd a n13
      · exact absurd a n0
    have u17 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n7
    rcases c23 with a|a|a
    · exact absurd u15 a
    · exact absurd u16 a
    · exact absurd u17 a
  have c726 : ¬v31 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v25 := by
      rcases c725 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
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
    have u3 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    rcases c450 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n4
  have c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
  have c728 : v17 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v30 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v18 := by
      rcases c251 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n7
    have u4 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u3 a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u1
  have c729 : v5 ∨ v4 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c481 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n9
  have c730 : v21 ∨ v4 ∨ v13 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
    have u2 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u3 : v5 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
    have u4 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n18
    · exact absurd a n15
    · exact absurd a n9
  have c731 : v46 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : v23 := by
      rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
    have u4 : v17 := by
      rcases c728 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
    have u7 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u12 : v13 := by
      rcases c730 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n3
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
    have u13 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n20
      · exact absurd a n15
      · exact absurd a n5
    have u17 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n3
      · exact a
      · exact absurd a n18
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n13
    have u18 : v6 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd u17 a
      · exact absurd a u13
    rcases c33 with a|a|a
    · exact absurd u17 a
    · exact absurd u16 a
    · exact absurd u18 a
  have c732 : v14 ∨ ¬v5 ∨ ¬v6 ∨ v9 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n6
    have u4 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n5
    rcases c70 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c733 : v48 ∨ ¬v13 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n12
    have u6 : ¬v6 := by
      rcases c732 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u5 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u7 : ¬v7 := by
      rcases c608 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u6
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
    rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n17
    · exact absurd a n0
    · exact absurd a n18
  have c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n5
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u1 a
    rcases c626 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
  have c735 : v23 ∨ ¬v5 ∨ ¬v6 ∨ v13 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v14 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
    have u5 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n11
      · exact a
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n9
    have u9 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u8 a
      · exact a
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n5
  have c736 : v23 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v13 := by
      rcases c733 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
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
      · exact absurd a n16
      · exact absurd a n18
    have u2 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n17
    have u3 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v5 := by
      rcases c735 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
    have u6 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n11
    have u7 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v18 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
    have u11 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n5
    have u12 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u10 a
    rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd u6 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n18
  have c737 : v5 ∨ ¬v6 ∨ ¬v7 ∨ v14 ∨ ¬v19 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v11 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n18
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n20
  have c738 : v11 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v13 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n4 a
    rcases c408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd n4 a
  have c739 : ¬v13 ∨ v4 ∨ v5 ∨ v6 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    rcases c738 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c740 : v14 ∨ v5 ∨ ¬v7 ∨ ¬v19 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u6 : ¬v6 := by
      rcases c737 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u7 : ¬v13 := by
      rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c593 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n14
    · exact absurd a n20
  have c741 : v26 ∨ v14 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v19 := by
      rcases c736 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n19
    have u5 : v5 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v2 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u7 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u5 a
      · exact absurd u4 a
      · exact a
    have u8 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a u2
      · exact a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n6
    have u9 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n18
    rcases c47 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c742 : v32 ∨ ¬v25 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v31 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n17
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v27 := by
      rcases c724 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
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
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v26 := by
      rcases c726 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
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
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v24 := by
      rcases c731 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n0
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
      · exact absurd a n17
    have u6 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u7 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u8 : v14 := by
      rcases c741 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v19 := by
      rcases c736 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
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
      · exact absurd a n17
    have u13 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u12 a
      · exact a
    rcases c458 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a n4
  have c743 : v28 ∨ ¬v14 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n10
    have u6 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
    have u7 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u9 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u10 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n9
    rcases c639 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a n16
  have c744 : v25 ∨ ¬v5 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v14 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n18
    have u7 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u5
      · exact a
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n6
    have u8 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n11
    have u9 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    rcases c343 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n3
  have c745 : v29 ∨ ¬v5 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v6 := by
      rcases c744 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v14 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
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
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v7 := by
      rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v13 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n19
    have u5 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u6 : ¬v2 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u7 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    rcases c433 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd u3 a
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n19
    · exact absurd a n20
  have c746 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    rcases c338 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n12
  have c747 : v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v5 := by
      rcases c745 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n8
    have u8 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n16
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n10
    rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c748 : v28 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v19 := by
      rcases c747 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n15
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n9
  have c749 : v44 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v31 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c742 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u4
    have u6 : ¬v27 := by
      rcases c724 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v26 := by
      rcases c748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n8
    have u17 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a u3
    have u21 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n16
      · exact absurd a n11
      · exact absurd a n1
    have u22 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a n15
      · exact absurd a n4
    rcases c23 with a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u22 a
  have c750 : v22 ∨ ¬v12 ∨ v14 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    rcases c683 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
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
  have c751 : v25 ∨ v12 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v19 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd n7 a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n17
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n14
    have u4 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n7 a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n11
      · exact a
    have u6 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a u4
      · exact absurd a n18
      · exact absurd a n11
    have u7 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v11 := by
      rcases c704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n16
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n13
  have c752 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n0 a
      · exact a
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
  have c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd n0 a
      · exact a
    rcases c752 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c754 : v37 ∨ v14 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : v24 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n11
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n4
    have u4 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u3 a
    have u5 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u3 a
    have u6 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v12 := by
      rcases c750 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a n18
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n13
    have u10 : v13 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u1
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
    have u11 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n12
    have u16 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u15 a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a n15
    · exact absurd a u17
    · exact absurd a u2
  have c755 : ¬v25 ∨ ¬v28 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c103 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n2 a
    rcases c450 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
  have c756 : v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v28 := by
      rcases c749 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
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
    have u2 : v31 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v25 := by
      rcases c755 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
    have u6 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
    have u7 : ¬v27 := by
      rcases c112 with a|a|a
      · exact absurd u5 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
    have u9 : ¬v26 := by
      rcases c111 with a|a|a
      · exact absurd u5 a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
    have u12 : v14 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
    have u13 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
    have u19 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact a
      · exact absurd a n13
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n7
    have u20 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u8
    have u21 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a n10
    · exact absurd a u21
    · exact absurd a u3
  have c757 : v25 ∨ ¬v28 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : v26 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact a
    have u3 : v24 := by
      rcases c456 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
    rcases c111 with a|a|a
    · exact absurd u3 a
    · exact absurd n1 a
    · exact absurd u2 a
  have c758 : v22 ∨ ¬v14 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a n6
    have u8 : ¬v3 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u9 : ¬v1 := by
      rcases c3 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u5 a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u7 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u9
  have c759 : v24 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd n8 a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v4 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
    have u3 : v6 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n18
      · exact absurd a n3
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd n1 a
      · exact absurd a n2
    have u4 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u5 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u7 : v10 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n13
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n16
    · exact absurd a u4
    · exact absurd a n9
  have c760 : v11 ∨ ¬v5 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd n7 a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v12 := by
      rcases c759 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v8 := by
      rcases c41 with a|a
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
    have u6 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n15
      · exact a
      · exact absurd a n8
    have u8 : ¬v17 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u4
    have u9 : ¬v3 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n13
    · exact absurd a n4
    · exact absurd a n16
    · exact absurd a n9
    · exact absurd a u8
  have c761 : v46 ∨ ¬v5 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd n7 a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v11 := by
      rcases c760 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
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
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n15
      · exact a
      · exact absurd a n8
    have u10 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n14
    · exact absurd a u10
    · exact absurd a n18
    · exact absurd a n10
  have c762 : v38 ∨ ¬v28 ∨ ¬v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v25 := by
      rcases c757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u5 : ¬v23 := by
      rcases c103 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u6 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u7 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v5 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u12 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n8
    have u13 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u19 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n10
      · exact a
      · exact absurd a u2
    have u20 : ¬v17 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u15
    have u21 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u20
    have u22 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u19 a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u19 a
      · exact absurd u21 a
      · exact a
    rcases c442 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a u9
  have c763 : v18 ∨ v5 ∨ ¬v7 ∨ v16 ∨ v19 ∨ v21 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n18
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n13
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n15
      · exact a
      · exact absurd a n9
    have u7 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v6 := by
      rcases c442 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c23 with a|a|a
    · exact absurd u6 a
    · exact absurd n2 a
    · exact absurd u8 a
  exact ⟨c714, c716, c717, c719, c720, c723, c727, c728, c729, c731, c733, c734, c739, c741, c743, c746, c748, c753, c756, c758, c762, c763⟩
