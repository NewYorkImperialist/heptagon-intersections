import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 100-149 of the 2915-step refutation of ccase001: 124 core clauses and 25 earlier-derived ones give 20 more. -/
theorem CCase001_block002
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
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
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
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
    (c101 : v15 ∨ v20 ∨ v16 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c130 : ¬v31 ∨ ¬v30)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c214 : ¬v31 ∨ v38 ∨ v37 ∨ v25 ∨ v39 ∨ v32 ∨ v24 ∨ v30)
    (c216 : ¬v21 ∨ v28 ∨ v8 ∨ v14 ∨ v20 ∨ v27 ∨ v13 ∨ v15)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c251 : ¬v16 ∨ v22 ∨ v17 ∨ v9 ∨ v8 ∨ v15 ∨ v23 ∨ v10)
    (c262 : v22 ∨ ¬v21 ∨ v15 ∨ v27 ∨ v28 ∨ v14 ∨ v8 ∨ v20)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c315 : v24 ∨ ¬v17 ∨ v25 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c320 : v29 ∨ ¬v22 ∨ v19 ∨ v26 ∨ v8 ∨ v16 ∨ v33 ∨ v15 ∨ v23 ∨ v27 ∨ v28 ∨ v14 ∨ v9 ∨ v35)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c337 : ¬v30 ∨ v37 ∨ v22 ∨ v23 ∨ v24 ∨ v38 ∨ v31 ∨ v29)
    (c347 : v15 ∨ v6 ∨ v13 ∨ v7 ∨ v8 ∨ v21 ∨ v1 ∨ ¬v14)
    (c348 : ¬v18 ∨ v13 ∨ v45 ∨ v26 ∨ v25 ∨ v46 ∨ v27 ∨ v11 ∨ v4 ∨ v10 ∨ v19 ∨ v17 ∨ v47 ∨ v20)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c368 : v21 ∨ v10 ∨ v46 ∨ v14 ∨ v47 ∨ v7 ∨ v12 ∨ v13 ∨ v45 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v3 ∨ v18)
    (c382 : v22 ∨ ¬v15 ∨ v21 ∨ v9 ∨ v23 ∨ v14 ∨ v16 ∨ v8)
    (c405 : ¬v18 ∨ v25 ∨ v12 ∨ v26 ∨ v10 ∨ v17 ∨ v11 ∨ v19)
    (c417 : ¬v18 ∨ v32 ∨ v9 ∨ v10 ∨ v19 ∨ v11 ∨ v26 ∨ v23 ∨ v17 ∨ v16 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c442 : v20 ∨ v47 ∨ v5 ∨ v16 ∨ v9 ∨ v6 ∨ v21 ∨ v2 ∨ v12 ∨ v14 ∨ ¬v13 ∨ v8 ∨ v48 ∨ v49)
    (c466 : ¬v10 ∨ v9 ∨ v17 ∨ v16 ∨ v2 ∨ v4 ∨ v11 ∨ v3)
    (c471 : v21 ∨ v41 ∨ v8 ∨ v40 ∨ v5 ∨ v14 ∨ v20 ∨ v12 ∨ v1 ∨ ¬v13 ∨ v6 ∨ v15 ∨ v42 ∨ v48)
    (c483 : ¬v31 ∨ v38 ∨ v37 ∨ v24 ∨ v39 ∨ v30 ∨ v32 ∨ v23)
    (c505 : v12 ∨ v9 ∨ v31 ∨ v16 ∨ v18 ∨ v32 ∨ v3 ∨ v25 ∨ v4 ∨ v2 ∨ v10 ∨ ¬v11 ∨ v33 ∨ v19)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c538 : v10 ∨ v13 ∨ v5 ∨ v9 ∨ v2 ∨ v46 ∨ v18 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v47 ∨ v48)
    (c540 : ¬v30 ∨ v23 ∨ v31 ∨ v9 ∨ v32 ∨ v8 ∨ v37 ∨ v22 ∨ v29 ∨ v25 ∨ v10 ∨ v16 ∨ v38 ∨ v39)
    (c558 : ¬v20 ∨ v27 ∨ v12 ∨ v26 ∨ v28 ∨ v21 ∨ v13 ∨ v19)
    (c584 : v24 ∨ ¬v17 ∨ v9 ∨ v8 ∨ v15 ∨ v22 ∨ v18 ∨ v16 ∨ v10 ∨ v25 ∨ v31 ∨ v37 ∨ v38 ∨ v39)
    (c591 : v22 ∨ ¬v21 ∨ v28 ∨ v13 ∨ v14 ∨ v27 ∨ v20 ∨ v15)
    (c600 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26 ∨ v10 ∨ v19 ∨ v17)
    (c616 : ¬v4 ∨ ¬v10 ∨ ¬v12 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c617 : v21 ∨ ¬v4 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c618 : v20 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c619 : v21 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c628 : v12 ∨ ¬v10 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c639 : ¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c641 : ¬v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c654 : ¬v11 ∨ ¬v5 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c667 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c672 : v21 ∨ ¬v2 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c680 : ¬v19 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c682 : v18 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c683 : ¬v19 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v27)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c693 : ¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c695 : v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c701 : v16 ∨ v12 ∨ v13 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c704 : v23 ∨ ¬v19 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40)
    (c705 : v17 ∨ v16 ∨ v23 ∨ ¬v24 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40)
    (c709 : v11 ∨ ¬v6 ∨ v10 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c710 : v17 ∨ v23 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c711 : v25 ∨ ¬v16 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v13 ∨ ¬v9 ∨ v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v5 ∨ v10 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48) ∧ (¬v21 ∨ v8 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28) ∧ (¬v3 ∨ ¬v12 ∨ ¬v13 ∨ v18 ∨ v21 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v49) ∧ (v13 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v11 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49) ∧ (v25 ∨ ¬v10 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49) ∧ (v27 ∨ ¬v3 ∨ v11 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v3 ∨ v2 ∨ v10 ∨ ¬v11 ∨ ¬v12 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48) ∧ (v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23) ∧ (¬v25 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39) ∧ (v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v21 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v49) ∧ (v33 ∨ v10 ∨ ¬v11 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v45 ∨ v10 ∨ v11 ∨ v13 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v13 ∨ v10 ∨ v11 ∨ ¬v20 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26) ∧ (v11 ∨ v10 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40) := by
  have c712 : ¬v22 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v16 := by
      rcases c711 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
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
    have u5 : v20 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
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
    have u6 : v15 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact a
    rcases c84 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c713 : v20 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n17
      · exact absurd a n22
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n12
    have u2 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : v4 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
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
      · exact absurd a n25
    have u6 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u5 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
    have u8 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n25
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n20
      · exact absurd a n15
    have u9 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n24
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a n19
    have u10 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u8 a
    rcases c320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd n7 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n14
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n16
  have c714 : ¬v13 ∨ ¬v10 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v33 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n5 a
      · exact a
    rcases c320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n10
  have c715 : v23 ∨ v17 ∨ v18 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v30 := by
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
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v19 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u5 : ¬v24 := by
      rcases c710 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v22 := by
      rcases c337 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u2
    have u7 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v16 := by
      rcases c711 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
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
    have u11 : v21 := by
      rcases c712 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u12 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v10 := by
      rcases c713 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u15 : ¬v13 := by
      rcases c714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
    have u16 : v12 := by
      rcases c701 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
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
    have u17 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u14 a
    have u18 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u14 a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u3
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u12
  have c716 : v23 ∨ v17 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v30 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v18 := by
      rcases c715 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v22 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u5
    have u9 : ¬v24 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    rcases c337 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a u2
  have c717 : v23 ∨ v13 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v17 := by
      rcases c716 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n18
    have u2 : v30 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v22 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
    have u12 : v24 := by
      rcases c337 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u10
    have u13 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n5
    have u17 : ¬v10 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u18 : v11 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u19 : v12 := by
      rcases c701 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
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
    have u20 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u21 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    rcases c540 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a u20
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n9
  have c718 : ¬v13 ∨ ¬v9 ∨ v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n12
    have u5 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
    have u6 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    rcases c296 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u6
  have c719 : v33 ∨ v23 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v17 := by
      rcases c716 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v13 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
      · exact absurd a n16
      · exact absurd a n17
    have u10 : v30 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n16
      · exact absurd a n17
    have u11 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v22 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u6
    have u13 : v24 := by
      rcases c337 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u11
    have u14 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v10 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u18 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u19 : v8 := by
      rcases c540 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd u19 a
      · exact absurd u9 a
      · exact a
    have u21 : ¬v11 := by
      rcases c49 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u9 a
    have u22 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u19 a
      · exact absurd u9 a
      · exact a
    have u23 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u14
      · exact a
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n9
    have u24 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a n8
    have u25 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u26 : v7 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd u9 a
      · exact absurd a u20
      · exact a
      · exact absurd a u22
      · exact absurd a u25
    rcases c33 with a|a|a
    · exact absurd u23 a
    · exact absurd u24 a
    · exact absurd u26 a
  have c720 : ¬v13 ∨ v9 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v22 ∨ v24 ∨ v25 ∨ v31 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v11 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u2 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    rcases c584 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c721 : ¬v5 ∨ v10 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
    have u2 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u5 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n16
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n12
    have u6 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n17
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n10
    have u7 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n15
    rcases c59 with a|a|a
    · exact absurd u7 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c722 : v19 ∨ ¬v5 ∨ v10 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v17 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n25
    have u2 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v9 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c718 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n22
    · exact absurd a n23
    · exact absurd a n24
  have c723 : ¬v21 ∨ v8 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
  have c724 : v19 ∨ v10 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v20 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v23 := by
      rcases c719 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
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
    have u2 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v5 := by
      rcases c722 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
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
    have u9 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n20
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n14
    have u10 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u9 a
    have u12 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    have u13 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u9 a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v17 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v15 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
    rcases c101 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u14
  have c725 : ¬v3 ∨ ¬v12 ∨ ¬v13 ∨ v18 ∨ v21 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    have u4 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
    rcases c28 with a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c726 : v10 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v19 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v23 := by
      rcases c719 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
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
      · exact absurd a n21
    have u2 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v20 := by
      rcases c724 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u7 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n5
    have u10 : ¬v12 := by
      rcases c725 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n21
    have u11 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u2
      · exact a
      · exact absurd a n19
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n13
    have u12 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u9 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd u11 a
      · exact absurd u9 a
      · exact a
    have u14 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n12
    have u15 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n21
      · exact absurd a u13
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n15
    rcases c72 with a|a|a
    · exact absurd u15 a
    · exact absurd n1 a
    · exact absurd u14 a
  have c727 : v13 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n16
      · exact absurd a n22
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n11
    have u2 : v20 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v12 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n4
    have u5 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n5
    have u6 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    have u8 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n12
      · exact absurd a n23
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n17
    have u9 : ¬v2 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n26
    have u10 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u11 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
    rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n23
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n24
    · exact absurd a n25
  have c728 : ¬v11 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n3
    have u5 : v8 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd u4 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
    rcases c50 with a|a|a
    · exact absurd u5 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c729 : ¬v17 ∨ v10 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v22 ∨ v24 ∨ v25 ∨ v31 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    rcases c584 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c730 : v10 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v13 := by
      rcases c726 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
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
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v23 := by
      rcases c719 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
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
      · exact absurd a n21
    have u3 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : v17 := by
      rcases c727 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
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
    have u10 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n8
    have u13 : v11 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u14 : ¬v4 := by
      rcases c728 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u15 : ¬v12 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u3
      · exact a
      · exact absurd a n19
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n13
    have u17 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u16 a
      · exact absurd u12 a
      · exact a
    have u20 : v14 := by
      rcases c368 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n18
      · exact a
      · exact absurd a n19
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n17
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n2
    have u21 : v9 := by
      rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a n7
      · exact absurd a n3
    rcases c60 with a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u13 a
  have c731 : v34 ∨ v10 ∨ v16 ∨ v18 ∨ v19 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v23 := by
      rcases c719 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v13 := by
      rcases c726 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : v21 := by
      rcases c730 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u10 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v14 := by
      rcases c591 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
    have u14 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n19
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a n0
    have u15 : ¬v5 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
    have u16 : v11 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u17 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a n18
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n12
    rcases c71 with a|a|a
    · exact absurd u17 a
    · exact absurd u13 a
    · exact absurd u16 a
  have c732 : v18 ∨ ¬v10 ∨ v13 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v14 := by
      rcases c591 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u1
    have u4 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n12
    have u5 : ¬v12 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u6 : ¬v11 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u7 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n7
      · exact a
      · exact absurd a n17
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n14
    have u8 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n13
    rcases c32 with a|a|a
    · exact absurd u4 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c733 : ¬v10 ∨ v13 ∨ v18 ∨ v19 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v21 := by
      rcases c732 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n1
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : v20 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u3 : v12 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
    have u4 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u1
    rcases c68 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c734 : v19 ∨ v16 ∨ v18 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v23 := by
      rcases c719 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
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
    have u2 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v10 := by
      rcases c731 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v13 := by
      rcases c733 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u10 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u11 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u12 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u13 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u2
      · exact a
      · exact absurd a n17
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n11
    have u14 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n10
    have u15 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u16 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    have u18 : v17 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd u7 a
    have u19 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n19
      · exact absurd a u16
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n13
    rcases c94 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c735 : ¬v16 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
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
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u6 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
      · exact absurd a n22
    have u7 : v13 := by
      rcases c727 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u3
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
    have u8 : ¬v5 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
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
      · exact absurd a n19
      · exact absurd a n21
    have u9 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n12
      · exact absurd a n18
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n7
    have u10 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n19
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n13
    have u11 : v12 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u6
    rcases c725 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd u11 a
    · exact absurd u7 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n16
    · exact absurd a n19
    · exact absurd a n22
  have c736 : ¬v10 ∨ ¬v13 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    rcases c335 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n2 a
    · exact absurd a n3
  have c737 : v4 ∨ ¬v13 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c736 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v11 := by
      rcases c600 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u1
    have u6 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n9
    have u7 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u8 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n17
    · exact absurd a u4
    · exact absurd u6 a
    · exact absurd a n15
    · exact absurd a n16
  have c738 : v4 ∨ ¬v6 ∨ v10 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : v11 := by
      rcases c600 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
    have u3 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n8
    have u4 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u6 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n11
    rcases c58 with a|a|a
    · exact absurd u6 a
    · exact absurd u2 a
    · exact absurd u7 a
  have c739 : v37 ∨ v19 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v23 := by
      rcases c719 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u2 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v16 := by
      rcases c735 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
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
    have u8 : v18 := by
      rcases c734 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a n2
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
    have u9 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
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
    have u13 : ¬v13 := by
      rcases c737 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u14 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n5
    have u15 : v10 := by
      rcases c738 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u14 a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v11 := by
      rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n17
    have u17 : v12 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a n1
    have u18 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u15 a
    have u20 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n11
    have u21 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u14 a
    have u22 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u20 a
    rcases c466 with a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u22
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u21
  have c740 : v25 ∨ ¬v10 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v12 := by
      rcases c628 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v4 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n9
  have c741 : v27 ∨ ¬v3 ∨ v11 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v12 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v10 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v13 := by
      rcases c725 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n17
    have u7 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n16
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a n8
  have c742 : ¬v3 ∨ v2 ∨ v10 ∨ ¬v11 ∨ ¬v12 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u2 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u3 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n7
    rcases c27 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c743 : v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v19 := by
      rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v23 := by
      rcases c719 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v10 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v5 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u15 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n0
    have u16 : v11 := by
      rcases c741 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u15 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u17 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
    have u18 : ¬v12 := by
      rcases c742 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd u16 a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u19 : v13 := by
      rcases c682 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u18
      · exact a
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
    have u20 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u19 a
    have u21 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u16 a
    have u22 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u19 a
    have u23 : v6 := by
      rcases c442 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u20
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd u19 a
      · exact absurd a u22
      · exact absurd a n15
      · exact absurd a n16
    have u24 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n10
    rcases c31 with a|a|a
    · exact absurd u15 a
    · exact absurd u24 a
    · exact absurd u23 a
  have c744 : v15 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n3
  have c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    rcases c744 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c746 : ¬v25 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n1 a
      · exact a
    rcases c483 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u1
  have c747 : v21 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v20 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n7
      · exact a
      · exact absurd a u1
    have u4 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n19
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n9
    have u9 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a n18
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n14
    have u11 : v16 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u10 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
    have u12 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u8 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u11 a
      · exact a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd n2 a
    · exact absurd a u12
    · exact absurd a u14
  have c748 : v37 ∨ v10 ∨ ¬v11 ∨ v13 ∨ v20 ∨ v21 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n7
      · exact a
      · exact absurd a u1
    have u4 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n9
    have u9 : v12 := by
      rcases c747 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u10 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n2 a
    have u12 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u9 a
    have u13 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n15
    have u14 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a u14
      · exact absurd a u6
    rcases c25 with a|a|a
    · exact absurd u15 a
    · exact absurd u8 a
    · exact absurd u13 a
  have c749 : ¬v11 ∨ v10 ∨ v13 ∨ v20 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n5
      · exact a
      · exact absurd a u1
    have u4 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n7
    have u10 : v21 := by
      rcases c748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd n4 a
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
      · exact absurd a n19
    have u11 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v14 := by
      rcases c591 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u11
    have u15 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n0 a
    have u16 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n0 a
    have u17 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u4
      · exact a
      · exact absurd a n17
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a n12
    have u18 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a u12
      · exact absurd a u7
    rcases c23 with a|a|a
    · exact absurd u17 a
    · exact absurd u18 a
    · exact absurd u9 a
  have c750 : v10 ∨ ¬v11 ∨ v20 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v31 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n3
      · exact a
      · exact absurd a u2
    have u5 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v13 := by
      rcases c749 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
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
      · exact absurd a n18
    have u10 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u11 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u12 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u13 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u14 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n12
    have u17 : ¬v15 := by
      rcases c382 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u13
    have u18 : ¬v5 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    have u19 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a u15
      · exact absurd a u7
    have u20 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u16 a
    have u21 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u16 a
    rcases c471 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n11
    · exact absurd a u13
    · exact absurd a n10
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd u9 a
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a n12
    · exact absurd a n17
  have c751 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v21 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
    have u5 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
    have u6 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n13
    rcases c24 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c752 : v33 ∨ v10 ∨ ¬v11 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v31 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a u2
    have u5 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v20 := by
      rcases c750 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
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
    have u10 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v13 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n2 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
    have u14 : v12 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u15 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u10
    rcases c71 with a|a|a
    · exact absurd u14 a
    · exact absurd u15 a
    · exact absurd n2 a
  have c753 : v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n8
    have u2 : v18 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v4 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u2 a
      · exact a
    rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n12
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a n3
  have c754 : v45 ∨ v10 ∨ v11 ∨ v13 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v20 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
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
    have u7 : v14 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u3
    have u8 : v12 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u5
    have u9 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n18
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n13
    have u10 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
    have u11 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v8 := by
      rcases c52 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u13 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a u4
      · exact absurd a n4
    have u14 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u9 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u13 a
    rcases c347 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd u7 a
  have c755 : v11 ∨ v10 ∨ ¬v12 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v21 ∨ v23 ∨ v25 ∨ v28 ∨ v30 ∨ v32 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n18
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n14
    have u4 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n4
      · exact absurd a n7
    have u5 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n15
    rcases c22 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd u5 a
  have c756 : ¬v13 ∨ v10 ∨ v11 ∨ ¬v20 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n18
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n13
    have u6 : ¬v12 := by
      rcases c755 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
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
    have u7 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a n19
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n14
    have u8 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u10 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n4
    have u11 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n15
    rcases c63 with a|a|a
    · exact absurd u10 a
    · exact absurd n0 a
    · exact absurd u11 a
  have c757 : v16 ∨ ¬v5 ∨ v10 ∨ v11 ∨ ¬v13 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n13
      · exact absurd a n20
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n16
    have u3 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n9
    rcases c20 with a|a|a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd u3 a
  have c758 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    rcases c405 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
  have c759 : v11 ∨ v10 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v18 := by
      rcases c758 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v5 := by
      rcases c757 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u1
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
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a n20
    · exact absurd a n13
    · exact absurd a u1
    · exact absurd a n16
  have c760 : v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ ¬v18 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n5 a
      · exact a
    rcases c417 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c761 : ¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    rcases c760 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  exact ⟨c718, c721, c723, c725, c727, c728, c740, c741, c742, c743, c745, c746, c751, c752, c753, c754, c756, c758, c759, c761⟩
