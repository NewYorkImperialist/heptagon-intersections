import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 200-249 of the 2559-step refutation of ccase003: 129 core clauses and 31 earlier-derived ones give 20 more. -/
theorem CCase003_block004
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v7 ∨ ¬v5 ∨ ¬v3)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
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
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c119 : v22 ∨ v23 ∨ v28 ∨ v27 ∨ v25 ∨ v24)
    (c120 : v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v24)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c168 : ¬v45 ∨ ¬v43)
    (c171 : ¬v48 ∨ ¬v43)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c247 : v7 ∨ v20 ∨ v12 ∨ v14 ∨ v5 ∨ v6 ∨ v21 ∨ ¬v13)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c286 : v3 ∨ ¬v2 ∨ v10 ∨ v8 ∨ v9 ∨ v44 ∨ v45 ∨ v1)
    (c287 : v22 ∨ v16 ∨ v24 ∨ v31 ∨ v17 ∨ ¬v23 ∨ v30 ∨ v29)
    (c296 : v16 ∨ v23 ∨ v24 ∨ ¬v17 ∨ v10 ∨ v18 ∨ v11 ∨ v9)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c346 : v23 ∨ v22 ∨ v3 ∨ v15 ∨ v10 ∨ v19 ∨ v5 ∨ v24 ∨ v2 ∨ v12 ∨ v8 ∨ ¬v9 ∨ v11 ∨ v16)
    (c365 : ¬v33 ∨ v40 ∨ v27 ∨ v41 ∨ v39 ∨ v34 ∨ v26 ∨ v32)
    (c368 : v15 ∨ v16 ∨ v17 ∨ v8 ∨ ¬v9 ∨ v1 ∨ v2 ∨ v10)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c373 : v22 ∨ v27 ∨ v12 ∨ v6 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v21 ∨ ¬v20 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c388 : v23 ∨ v30 ∨ v17 ∨ v25 ∨ v31 ∨ v18 ∨ ¬v24 ∨ v16)
    (c398 : v15 ∨ ¬v9 ∨ v17 ∨ v8 ∨ v10 ∨ v3 ∨ v2 ∨ v16)
    (c409 : v14 ∨ v47 ∨ v5 ∨ v48 ∨ v49 ∨ v7 ∨ ¬v6 ∨ v13)
    (c433 : v29 ∨ v35 ∨ ¬v7 ∨ v2 ∨ v9 ∨ v8 ∨ v6 ∨ v14 ∨ v34 ∨ v1 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c445 : v29 ∨ v22 ∨ v24 ∨ v31 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v15)
    (c456 : ¬v32 ∨ v39 ∨ v31 ∨ v40 ∨ v33 ∨ v38 ∨ v25 ∨ v24)
    (c457 : ¬v32 ∨ v39 ∨ v31 ∨ v33 ∨ v40 ∨ v25 ∨ v38 ∨ v26)
    (c461 : v29 ∨ v30 ∨ v35 ∨ ¬v22 ∨ v28 ∨ v23 ∨ v15 ∨ v16)
    (c463 : ¬v25 ∨ v24 ∨ v26 ∨ v18 ∨ v31 ∨ v32 ∨ v19 ∨ v17)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c481 : ¬v12 ∨ v19 ∨ v5 ∨ v18 ∨ v20 ∨ v4 ∨ v13 ∨ v11)
    (c527 : ¬v33 ∨ v40 ∨ v25 ∨ v37 ∨ v41 ∨ v26 ∨ v34 ∨ v32 ∨ v31 ∨ v30 ∨ v23 ∨ v46 ∨ v47 ∨ v48)
    (c532 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v1 ∨ v10 ∨ v8 ∨ v9)
    (c547 : v22 ∨ ¬v15 ∨ v21 ∨ v8 ∨ v16 ∨ v14 ∨ v23 ∨ v28)
    (c549 : v7 ∨ v5 ∨ ¬v13 ∨ v19 ∨ v14 ∨ v20 ∨ v12 ∨ v6)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    (c563 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c568 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c598 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v27 ∨ v28)
    (c601 : v31 ∨ ¬v5 ∨ ¬v6 ∨ v19 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c607 : v6 ∨ v7 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c628 : v23 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c636 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c644 : v23 ∨ v10 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c733 : v48 ∨ ¬v13 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c741 : v26 ∨ v14 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c756 : v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c758 : v22 ∨ ¬v14 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c762 : v38 ∨ ¬v28 ∨ ¬v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c763 : v18 ∨ v5 ∨ ¬v7 ∨ v16 ∨ v19 ∨ v21 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    : (v24 ∨ v5 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31) ∧ (v12 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (v13 ∨ ¬v2 ∨ v19 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24) ∧ (¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44) ∧ (¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24) ∧ (¬v20 ∨ ¬v24 ∨ ¬v26 ∨ v30 ∨ v31) ∧ (v21 ∨ ¬v13 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49) ∧ (v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v18 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31) ∧ (¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31) ∧ (¬v27 ∨ v13 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v28 ∨ ¬v2 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20) ∧ (¬v13 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24) ∧ (v34 ∨ v16 ∨ v20 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c764 : v24 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v27 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
    have u2 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n3
    have u4 : ¬v14 := by
      rcases c758 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u5 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n4
    have u10 : v5 := by
      rcases c763 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u11 : ¬v3 := by
      rcases c28 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v2 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    have u13 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a u5
    have u14 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a u6
      · exact a
      · exact absurd a n14
      · exact absurd a u12
      · exact absurd a n5
    rcases c44 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c765 : ¬v22 ∨ v19 ∨ v23 ∨ ¬v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v27 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v13 := by
      rcases c733 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n21
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
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
      · exact absurd a n22
    have u3 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n21
    have u4 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
    have u5 : ¬v5 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
    have u6 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u7 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n20
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n14
    have u8 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v18 := by
      rcases c481 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u8
    have u12 : ¬v21 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n5
    have u13 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u11 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n7
  have c766 : v23 ∨ ¬v22 ∨ ¬v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v19 := by
      rcases c765 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
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
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u1 a
    rcases c461 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u2
  have c767 : v29 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v22 := by
      rcases c764 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
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
      · exact absurd a n19
      · exact absurd a n21
    rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd n3 a
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
  have c768 : v24 ∨ v5 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n12
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v8 := by
      rcases c41 with a|a
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
    have u6 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n6
    have u8 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n18
    have u9 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n19
      · exact absurd a n14
      · exact absurd a n6
    have u11 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u12 : v18 := by
      rcases c481 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u2
    have u13 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    have u14 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u12 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n15
    · exact absurd a n7
    · exact absurd a u14
  have c769 : v39 ∨ v24 ∨ v26 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v32 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v25 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a n2
    have u6 : ¬v28 := by
      rcases c762 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v23 := by
      rcases c767 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u4
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
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v27 := by
      rcases c102 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u7 a
    have u9 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
    have u11 : v5 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u3
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
    have u12 : ¬v6 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u11 a
      · exact a
      · exact absurd a u10
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u13 : v7 := by
      rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : v13 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n15
    have u15 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u11 a
    have u16 : ¬v2 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u11 a
    have u17 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u14 a
    rcases c433 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd u13 a
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a u15
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n15
    · exact absurd a n16
  have c770 : v34 ∨ v26 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v32 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n1
    have u5 : v24 := by
      rcases c769 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u6 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u9 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    have u10 : v14 := by
      rcases c741 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
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
    have u11 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
    have u16 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n14
    have u17 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n10
      · exact a
      · exact absurd a u3
    have u18 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u16 a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u17 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u18
  have c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    rcases c388 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n1
  have c772 : v23 ∨ ¬v5 ∨ ¬v6 ∨ v22 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : v10 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n5
  have c773 : ¬v26 ∨ v4 ∨ v12 ∨ v13 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n8 a
    have u2 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n19
      · exact absurd a n11
    have u3 : ¬v5 := by
      rcases c772 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v7 := by
      rcases c559 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n19
      · exact absurd a u3
      · exact absurd a n18
      · exact a
      · exact absurd a n20
      · exact absurd u2 a
      · exact absurd a n3
    have u5 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u6 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u7 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u2 a
    have u8 : v10 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n15
    · exact absurd a u5
    · exact absurd a n9
  have c774 : v27 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
    have u5 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n15
      · exact a
      · exact absurd a n9
    have u6 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n3
    rcases c17 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u4 a
  have c775 : v38 ∨ ¬v19 ∨ v22 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
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
    have u7 : v26 := by
      rcases c770 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
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
    have u8 : v32 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v24 := by
      rcases c771 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a u9
    have u12 : ¬v23 := by
      rcases c375 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a u10
    have u13 : v25 := by
      rcases c456 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u11
    have u14 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u13 a
    have u15 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u13 a
    have u16 : ¬v13 := by
      rcases c774 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u17 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u18 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n4
    have u19 : v12 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u20 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n11
      · exact a
      · exact absurd a u10
    have u23 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u3
    rcases c16 with a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd u18 a
  have c776 : v12 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    rcases c559 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd n2 a
    · exact absurd a n3
  have c777 : v13 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n7
    have u3 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v14 := by
      rcases c618 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v8 := by
      rcases c373 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c43 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c778 : v13 ∨ ¬v2 ∨ v19 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v12 := by
      rcases c777 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
    have u5 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n6
    have u6 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u7 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n16
    · exact absurd a n15
    · exact absurd a n0
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a u2
  have c779 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
  have c780 : v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n7
    have u2 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v14 := by
      rcases c618 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v8 := by
      rcases c373 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c43 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n0 a
      · exact a
    rcases c636 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n5
    rcases c781 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c783 : v12 ∨ v8 ∨ v13 ∨ ¬v16 ∨ v22 ∨ v24 ∨ ¬v25 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u5 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n7 a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    rcases c773 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd n6 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n22
    · exact absurd a n23
  have c784 : ¬v26 ∨ v13 ∨ v19 ∨ v22 ∨ v24 ∨ ¬v25 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    have u2 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
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
    have u4 : ¬v12 := by
      rcases c779 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n16
    have u5 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n16
    have u6 : v6 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u7 : ¬v16 := by
      rcases c783 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd n0 a
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
    have u8 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a u7
      · exact a
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a n7
    have u9 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n6
    have u11 : v4 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
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
    have u12 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n21
    rcases c32 with a|a|a
    · exact absurd u11 a
    · exact absurd u12 a
    · exact absurd u6 a
  have c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n0 a
    rcases c296 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
  have c786 : v35 ∨ v22 ∨ v24 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v19 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
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
    have u2 : v26 := by
      rcases c770 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
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
      · exact absurd a n16
    have u3 : v32 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v25 := by
      rcases c456 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n2
    have u7 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd u2 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u6 a
    have u9 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u6 a
    have u10 : v13 := by
      rcases c784 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
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
    have u11 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
    have u17 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n11
      · exact a
      · exact absurd a u5
    have u18 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n2
    have u19 : v20 := by
      rcases c774 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u10 a
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u20 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u18
    have u21 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u17 a
      · exact absurd u20 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a n16
    · exact absurd a n10
    · exact absurd a u8
  have c787 : ¬v20 ∨ ¬v24 ∨ ¬v26 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    rcases c771 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
  have c788 : v21 ∨ ¬v13 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n4
    have u6 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n5
    have u7 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    have u8 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u9 : v43 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
    have u10 : v45 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a u7
    rcases c168 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c789 : v44 ∨ v22 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v26 := by
      rcases c770 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
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
    have u2 : v32 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v24 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u6 : ¬v20 := by
      rcases c787 with a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd u1 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd u5 a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v19 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : v18 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u7
    have u13 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u18 : ¬v13 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n15
    have u19 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u20 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u4
    have u21 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    rcases c398 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u20 a
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u13
  have c790 : v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v22 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v26 := by
      rcases c770 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v24 := by
      rcases c88 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u5 : v32 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u6 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u5 a
    rcases c456 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u3
  have c791 : ¬v27 ∨ ¬v22 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n2 a
    rcases c325 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u2
  have c792 : v21 ∨ v13 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n19
      · exact absurd a n5
      · exact absurd a n25
      · exact absurd a n14
    have u2 : ¬v7 := by
      rcases c563 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
      · exact absurd a n23
    have u3 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n15
      · exact a
      · exact absurd a n0
      · exact absurd a n26
      · exact absurd a n20
      · exact absurd a n10
    have u4 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n16
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n21
    · exact absurd a u6
    · exact absurd a n11
  have c793 : v28 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : ¬v13 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n25
    rcases c792 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
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
  have c794 : v42 ∨ v16 ∨ v20 ∨ ¬v22 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v33 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
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
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c791 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v26 := by
      rcases c365 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a u5
    have u8 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd u7 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v24 := by
      rcases c88 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    have u12 : v15 := by
      rcases c461 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n1
    have u13 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u12 a
      · exact a
    rcases c793 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u5
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
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c795 : v18 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
    have u5 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n13
      · exact a
      · exact absurd a n7
    have u6 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n3
    rcases c14 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u4 a
  have c796 : ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v12 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u1 a
      · exact a
    rcases c409 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n2
  have c797 : v16 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v28 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
    have u2 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n11
      · exact a
    have u3 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n21
      · exact absurd a n11
    have u8 : ¬v2 := by
      rcases c796 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u9 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n0
      · exact a
      · exact absurd a n17
      · exact absurd a u8
      · exact absurd a n8
    have u10 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n17
    have u11 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v1 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
    have u14 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n19
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n15
    rcases c9 with a|a|a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd u7 a
  have c798 : v22 ∨ v16 ∨ v20 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v24 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n5 a
    have u3 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact a
    have u4 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v13 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n23
    have u9 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u10 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
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
    have u11 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n15
    have u12 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n1
      · exact a
      · exact absurd a n18
      · exact absurd a u10
      · exact absurd a n8
    rcases c45 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v15 := by
      rcases c445 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n5
      · exact a
    have u2 : v17 := by
      rcases c287 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n4
    rcases c61 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v24 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c98 with a|a|a
    · exact absurd n3 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c801 : v16 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v13 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n19
    have u5 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n0
      · exact a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n8
    have u8 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u9 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n19
    have u15 : v1 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n0
    have u16 : v5 := by
      rcases c346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a n0
    rcases c12 with a|a|a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd u16 a
  have c802 : v24 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v17 := by
      rcases c801 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
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
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v13 := by
      rcases c774 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n21
    have u3 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n20
      · exact absurd a n10
    have u4 : ¬v2 := by
      rcases c796 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u5 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n1
      · exact a
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a n8
    have u6 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
    have u7 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v21 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n9
      · exact absurd a u1
    have u11 : v4 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : ¬v15 := by
      rcases c547 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
    rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
  have c803 : v23 ∨ v16 ∨ v20 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v25 := by
      rcases c798 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    rcases c802 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n6
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
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n22
  have c804 : v49 ∨ v16 ∨ v20 ∨ v27 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v22 := by
      rcases c794 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
    have u2 : v33 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v26 := by
      rcases c365 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a u6
    have u8 : ¬v23 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
    rcases c803 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd u7 a
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
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
    · exact absurd a n0
  have c805 : ¬v27 ∨ v13 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u6 : v10 := by
      rcases c644 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
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
    have u7 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u3
    have u11 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u2
    have u12 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n11
      · exact a
      · exact absurd a n3
    have u13 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a u2
    have u14 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u16 : v43 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd u13 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u9
    have u17 : v48 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n15
      · exact a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u7
    rcases c171 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c806 : v6 ∨ ¬v2 ∨ ¬v10 ∨ v13 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
    have u5 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u1
  have c807 : v28 ∨ ¬v2 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v6 := by
      rcases c796 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v10 := by
      rcases c806 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n11
      · exact absurd a n4
    have u4 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n20
    have u7 : v19 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n4
    have u8 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u9
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n20
    · exact absurd a n15
    · exact absurd a n0
  have c808 : v24 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v22 := by
      rcases c794 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n4
      · exact a
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v27 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd a n4
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
    have u3 : v33 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v23 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
    have u9 : ¬v26 := by
      rcases c805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u10 : v25 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n11
      · exact a
      · exact absurd a n9
      · exact absurd a u9
    have u11 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u10 a
    have u12 : ¬v2 := by
      rcases c807 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u13 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a u12
      · exact absurd a u6
    have u14 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n13
    have u15 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a n3
    have u19 : v4 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u20 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u11
    have u21 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a n6
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a n18
    · exact absurd a n12
    · exact absurd a u11
  have c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v21 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
    have u2 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u1 a
      · exact a
    rcases c549 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
  have c810 : v20 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v33 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v13 := by
      rcases c808 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u5 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n13
      · exact a
      · exact absurd a u3
    have u10 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n2
    have u11 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u10 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    rcases c809 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n0
  have c811 : ¬v13 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    rcases c785 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
  have c812 : v20 ∨ v16 ∨ v24 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v27 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
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
    have u2 : v33 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v22 := by
      rcases c794 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v23 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
    have u9 : v17 := by
      rcases c810 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u8
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
    have u10 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v13 := by
      rcases c811 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n2
    have u13 : ¬v26 := by
      rcases c805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
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
    have u14 : v28 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u10
      · exact a
    have u15 : v25 := by
      rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c115 with a|a|a
    · exact absurd u14 a
    · exact absurd u1 a
    · exact absurd u15 a
  have c813 : v34 ∨ v16 ∨ v20 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v33 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v24 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
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
    have u4 : v27 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a n2
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
    have u5 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    rcases c325 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u6
  exact ⟨c768, c771, c776, c778, c780, c781, c782, c785, c787, c788, c790, c795, c796, c799, c800, c805, c807, c809, c811, c813⟩
