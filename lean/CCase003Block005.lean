import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 250-299 of the 2559-step refutation of ccase003: 134 core clauses and 36 earlier-derived ones give 24 more. -/
theorem CCase003_block005
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
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
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c103 : ¬v23 ∨ ¬v28 ∨ ¬v25)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c105 : ¬v28 ∨ ¬v26 ∨ ¬v23)
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
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c170 : ¬v47 ∨ ¬v43)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c211 : v47 ∨ v12 ∨ v45 ∨ v46 ∨ v5 ∨ v3 ∨ ¬v4 ∨ v11)
    (c228 : ¬v25 ∨ v24 ∨ v18 ∨ v26 ∨ v31 ∨ v33 ∨ v32 ∨ v19)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c255 : ¬v19 ∨ v12 ∨ v18 ∨ v26 ∨ v25 ∨ v20 ∨ v13 ∨ v11)
    (c268 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v20 ∨ v19 ∨ v26)
    (c270 : ¬v5 ∨ v6 ∨ v46 ∨ v4 ∨ v13 ∨ v11 ∨ v12 ∨ v47)
    (c294 : v7 ∨ v6 ∨ v21 ∨ v13 ∨ v20 ∨ v15 ∨ v8 ∨ ¬v14)
    (c315 : ¬v35 ∨ v29 ∨ v34 ∨ v28 ∨ v42 ∨ v22 ∨ v41 ∨ v27)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c356 : ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v48 ∨ v4 ∨ v12 ∨ v13)
    (c365 : ¬v33 ∨ v40 ∨ v27 ∨ v41 ∨ v39 ∨ v34 ∨ v26 ∨ v32)
    (c368 : v15 ∨ v16 ∨ v17 ∨ v8 ∨ ¬v9 ∨ v1 ∨ v2 ∨ v10)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c401 : v10 ∨ ¬v11 ∨ v17 ∨ v47 ∨ v18 ∨ v45 ∨ v8 ∨ v4 ∨ v1 ∨ v9 ∨ v12 ∨ v5 ∨ v46 ∨ v15)
    (c418 : ¬v12 ∨ v11 ∨ v6 ∨ v19 ∨ v20 ∨ v13 ∨ v18 ∨ v5)
    (c438 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v40 ∨ v42 ∨ v33 ∨ v35)
    (c446 : ¬v33 ∨ v40 ∨ v26 ∨ v34 ∨ v25 ∨ v41 ∨ v27 ∨ v32)
    (c447 : v29 ∨ ¬v28 ∨ v35 ∨ v15 ∨ v22 ∨ v34 ∨ v27 ∨ v21)
    (c448 : v23 ∨ ¬v24 ∨ v30 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17)
    (c461 : v29 ∨ v30 ∨ v35 ∨ ¬v22 ∨ v28 ∨ v23 ∨ v15 ∨ v16)
    (c463 : ¬v25 ∨ v24 ∨ v26 ∨ v18 ∨ v31 ∨ v32 ∨ v19 ∨ v17)
    (c465 : ¬v26 ∨ v33 ∨ v25 ∨ v20 ∨ v32 ∨ v18 ∨ v19 ∨ v27)
    (c485 : ¬v35 ∨ v42 ∨ v15 ∨ v22 ∨ v21 ∨ v25 ∨ v20 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v41 ∨ v29)
    (c492 : v29 ∨ ¬v28 ∨ v27 ∨ v35 ∨ v15 ∨ v22 ∨ v21 ∨ v20)
    (c495 : v3 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v47 ∨ v46 ∨ v10 ∨ v11)
    (c500 : ¬v34 ∨ v41 ∨ v27 ∨ v28 ∨ v42 ∨ v33 ∨ v35 ∨ v40)
    (c503 : ¬v48 ∨ v41 ∨ v40 ∨ v49 ∨ v5 ∨ v6 ∨ v47 ∨ v42)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c564 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c566 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c590 : ¬v6 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c637 : ¬v11 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c643 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c644 : v23 ∨ v10 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c646 : ¬v7 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c658 : v19 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c666 : v25 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c704 : ¬v11 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c717 : ¬v4 ∨ ¬v5 ∨ v6 ∨ v13 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c758 : v22 ∨ ¬v14 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c778 : v13 ∨ ¬v2 ∨ v19 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c787 : ¬v20 ∨ ¬v24 ∨ ¬v26 ∨ v30 ∨ v31)
    (c788 : v21 ∨ ¬v13 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c790 : v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c795 : v18 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c796 : ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31)
    (c805 : ¬v27 ∨ v13 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c807 : v28 ∨ ¬v2 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c813 : v34 ∨ v16 ∨ v20 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v35 ∨ v16 ∨ ¬v20 ∨ v24 ∨ ¬v25 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v13 ∨ v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24) ∧ (v38 ∨ ¬v16 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32) ∧ (v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v25 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (v16 ∨ ¬v3 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44) ∧ (¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35) ∧ (v20 ∨ v15 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35) ∧ (v31 ∨ v19 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v19 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35) ∧ (v39 ∨ v23 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v18 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49) ∧ (v35 ∨ ¬v23 ∨ v26 ∨ ¬v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v28 ∨ v22 ∨ ¬v23 ∨ ¬v35 ∨ v41 ∨ v42) ∧ (v28 ∨ v19 ∨ v22 ∨ ¬v25 ∨ ¬v35 ∨ v41 ∨ v42) ∧ (¬v10 ∨ ¬v21 ∨ v22 ∨ v28) ∧ (v44 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v45 ∨ v46) ∧ (v27 ∨ ¬v10 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v25 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v16 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v41 ∨ v15 ∨ v19 ∨ v22 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c814 : ¬v24 ∨ ¬v20 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v26 := by
      rcases c787 with a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
    have u5 : v25 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a u4
    have u6 : v27 := by
      rcases c365 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
    rcases c108 with a|a|a
    · exact absurd n0 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c815 : v26 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v25 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n1
    rcases c325 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n0
  have c816 : ¬v20 ∨ v13 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
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
    have u3 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n8
    have u4 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u3 a
      · exact a
    rcases c618 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
  have c817 : v35 ∨ v16 ∨ ¬v20 ∨ v24 ∨ ¬v25 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u4 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u5 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v13 := by
      rcases c816 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c788 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n17
  have c818 : ¬v23 ∨ v16 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v22 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c84 with a|a|a
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c819 : v13 ∨ v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v28 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u2
    rcases c816 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
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
  have c820 : v35 ∨ v16 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v20 := by
      rcases c813 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v33 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v24 := by
      rcases c814 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v26 := by
      rcases c815 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v25 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u12
      · exact a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v23 := by
      rcases c818 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
    have u16 : ¬v13 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v27 := by
      rcases c805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u18 : v22 := by
      rcases c819 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u19 : v28 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd u18 a
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u10
    rcases c95 with a|a|a
    · exact absurd u18 a
    · exact absurd u19 a
    · exact absurd u13 a
  have c821 : ¬v22 ∨ v15 ∨ v21 ∨ v23 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
    rcases c95 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n4 a
  have c822 : ¬v13 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    rcases c629 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c823 : v38 ∨ ¬v16 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c821 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u6 : ¬v13 := by
      rcases c822 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v27 := by
      rcases c805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u8 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n19
      · exact absurd a n9
    have u9 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u10 : ¬v2 := by
      rcases c796 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u11 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n15
    have u12 : v9 := by
      rcases c629 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n16
    · exact absurd a n7
    · exact absurd a u2
  have c824 : v47 ∨ v24 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v33 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v16 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : v26 := by
      rcases c815 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v23 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    have u16 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v28 := by
      rcases c105 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    have u18 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u19 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n12
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n6
    have u20 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a u17
    have u24 : v3 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u21
      · exact a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u10
    rcases c646 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd u24 a
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n12
  have c825 : ¬v23 ∨ ¬v24 ∨ ¬v33 ∨ v34 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n2 a
    rcases c446 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u4
  have c826 : v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v24 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v33 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v16 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u7 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v23 := by
      rcases c825 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v25 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
    have u11 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u10 a
    rcases c365 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u5
  have c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd n0 a
      · exact a
    rcases c448 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
  have c828 : v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v4 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    rcases c24 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd u2 a
  have c829 : v25 ∨ v6 ∨ ¬v12 ∨ v13 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v5 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u4 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n12
    have u5 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n13
      · exact a
      · exact absurd a n9
    rcases c18 with a|a|a
    · exact absurd u5 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c830 : v15 ∨ v6 ∨ v13 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v12 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n10
      · exact a
      · exact absurd a n22
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n18
    have u3 : ¬v4 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n24
    rcases c356 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n21
    · exact absurd a n22
    · exact absurd a n23
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
  have c831 : v13 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v6 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u3 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n23
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n20
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n12
    · exact absurd a n16
  have c832 : v21 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v13 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
    rcases c831 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
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
  have c833 : v49 ∨ v23 ∨ ¬v24 ∨ v26 ∨ ¬v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v27 := by
      rcases c438 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n5
    have u6 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd n2 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u9 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact a
    have u10 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u9 a
    rcases c832 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n0
  have c834 : ¬v34 ∨ v23 ∨ ¬v24 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v26 := by
      rcases c833 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
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
    have u3 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    rcases c500 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
  have c835 : ¬v26 ∨ v28 ∨ ¬v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v27 := by
      rcases c500 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n7
    have u6 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u7 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u5 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u5 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u10 : v10 := by
      rcases c644 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
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
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n1
    have u16 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
    have u17 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n10
      · exact a
      · exact absurd a u1
    have u18 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n1
    have u19 : ¬v5 := by
      rcases c22 with a|a|a
      · exact absurd u17 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u17 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    have u22 : ¬v48 := by
      rcases c503 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n13
      · exact absurd a n9
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a n14
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd u18 a
    · exact absurd a u14
    · exact absurd a u11
  have c836 : v25 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
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
    have u4 : ¬v16 := by
      rcases c822 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v17 := by
      rcases c662 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
    have u6 : v18 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u5
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
    rcases c643 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n0
  have c837 : v16 ∨ ¬v3 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n9
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
  have c838 : v10 ∨ v16 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v20 := by
      rcases c465 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n13
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
    have u2 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n11
      · exact absurd a u3
    have u5 : ¬v4 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u4 a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
    have u6 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n19
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n16
    have u7 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v5 := by
      rcases c637 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    rcases c15 with a|a|a
    · exact absurd u4 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    rcases c492 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
  have c840 : v20 ∨ v15 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
    have u5 : v21 := by
      rcases c492 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n0
    have u6 : v18 := by
      rcases c465 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u1
    rcases c77 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c841 : v31 ∨ v19 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v10 := by
      rcases c838 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
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
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n15
      · exact a
      · exact absurd a n9
    have u9 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n17
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n14
    have u10 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
    have u11 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u13 : v43 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u6
    have u14 : v47 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u7
    rcases c170 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c842 : v35 ∨ v23 ∨ ¬v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v34 := by
      rcases c826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
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
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c834 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v28 := by
      rcases c835 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
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
      · exact absurd a n14
    have u9 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n2 a
    have u10 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a n0
    have u13 : ¬v20 := by
      rcases c841 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v18 := by
      rcases c465 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u5
      · exact a
      · exact absurd a u12
      · exact absurd a u10
    have u15 : v15 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
    rcases c62 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c844 : v44 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v14 := by
      rcases c758 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n19
    have u2 : v25 := by
      rcases c666 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v18 := by
      rcases c228 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n1
    have u4 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u2 a
    have u5 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n21
      · exact absurd a n16
      · exact absurd a u4
    have u11 : ¬v13 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n21
    have u12 : ¬v2 := by
      rcases c807 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u13 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n0
    have u14 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n7
    have u15 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v1 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd u14 a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
    have u17 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n17
      · exact absurd a n8
      · exact absurd a u7
    rcases c7 with a|a|a
    · exact absurd u16 a
    · exact absurd u10 a
    · exact absurd u17 a
  have c845 : ¬v19 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
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
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a u3
    have u6 : ¬v4 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u5 a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u7 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n12
    have u9 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    rcases c401 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u8 a
    · exact absurd a u3
    · exact absurd a n16
    · exact absurd a u4
    · exact absurd a n14
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a n15
    · exact absurd a u2
  have c846 : v22 ∨ v23 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v19 := by
      rcases c844 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v13 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : v10 := by
      rcases c845 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    rcases c255 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u10
  have c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v21 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
    have u2 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u1 a
    rcases c461 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u2
  have c848 : v39 ∨ v23 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v34 := by
      rcases c826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
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
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c842 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
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
    have u8 : v27 := by
      rcases c438 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n2
    have u9 : ¬v24 := by
      rcases c834 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v22 := by
      rcases c846 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
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
    have u11 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u8 a
    have u13 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
    have u14 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v7 := by
      rcases c658 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a u12
    have u20 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n0
    have u24 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u7
      · exact a
      · exact absurd a n11
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n5
    have u25 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u14
    rcases c24 with a|a|a
    · exact absurd u24 a
    · exact absurd u25 a
    · exact absurd u23 a
  have c849 : v18 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n3
    have u2 : ¬v7 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
    have u3 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n12
      · exact a
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n15
      · exact absurd a n9
    have u4 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v1 := by
      rcases c638 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n17
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n14
    have u9 : v6 := by
      rcases c294 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd u3 a
    rcases c9 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c850 : v35 ∨ ¬v23 ∨ v26 ∨ ¬v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v27 := by
      rcases c438 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n0
    have u7 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v25 := by
      rcases c102 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u11 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u12 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
    have u13 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : v10 := by
      rcases c849 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u19 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n2
      · exact a
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n6
    have u23 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n5
    have u24 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a u7
    rcases c31 with a|a|a
    · exact absurd u24 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c851 : v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v23 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
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
    have u2 : v34 := by
      rcases c826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v26 := by
      rcases c850 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u5 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c105 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
    rcases c500 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n4
  have c852 : v28 ∨ v22 ∨ ¬v23 ∨ ¬v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v27 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact a
    have u7 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n2 a
    have u9 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
    have u10 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
    have u11 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u9 a
      · exact a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u7
  have c854 : v22 ∨ v15 ∨ v19 ∨ ¬v23 ∨ ¬v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : v28 := by
      rcases c852 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v24 := by
      rcases c100 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c105 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v27 := by
      rcases c106 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v25 := by
      rcases c103 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    have u12 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
    have u13 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u19 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a n13
      · exact absurd a u3
    have u20 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n6
    rcases c704 with a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd u19 a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n12
  have c855 : v28 ∨ v19 ∨ v22 ∨ ¬v25 ∨ ¬v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : v27 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n5
      · exact a
    have u7 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n3 a
    have u9 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u9 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u7
  have c856 : v19 ∨ v4 ∨ ¬v10 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u8 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n11
      · exact a
      · exact absurd a n7
    have u9 : v6 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n13
    rcases c21 with a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd u9 a
  have c857 : v20 ∨ v4 ∨ v17 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v10 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
    have u2 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a n2
    have u3 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
    have u6 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n21
      · exact absurd a n12
    have u7 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n20
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n15
    rcases c56 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c858 : v38 ∨ v15 ∨ v19 ∨ v22 ∨ v23 ∨ ¬v25 ∨ ¬v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : v28 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    have u8 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n5 a
    have u10 : v18 := by
      rcases c228 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
    have u11 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v4 := by
      rcases c857 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v3 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
    have u16 : v13 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u14 a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u17 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u11
    rcases c51 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    rcases c642 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
  have c860 : v44 ∨ v15 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v10 := by
      rcases c859 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
    have u5 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a u2
    have u6 : ¬v4 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u5 a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
    have u7 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n14
    have u9 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact a
    rcases c637 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
  have c861 : v44 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n17
      · exact absurd a n12
      · exact absurd a n4
    have u2 : ¬v4 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n0
    have u3 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
    have u4 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n16
    have u5 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    rcases c637 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c862 : v37 ∨ v15 ∨ v19 ∨ v22 ∨ v24 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v35 := by
      rcases c851 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v23 := by
      rcases c854 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
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
    have u9 : ¬v25 := by
      rcases c858 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd u1 a
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
    have u10 : v26 := by
      rcases c666 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : v27 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd u10 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
    have u12 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
    have u13 : ¬v21 := by
      rcases c860 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v20 := by
      rcases c485 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
    have u15 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v10 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n10
      · exact a
      · exact absurd a u3
    have u23 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n6
    have u24 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u23 a
    rcases c211 with a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a u19
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd u23 a
    · exact absurd a u21
  have c863 : v27 ∨ ¬v10 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v25 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c864 : v16 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v3 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v13 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v5 := by
      rcases c495 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n18
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a u3
    have u7 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n16
      · exact a
      · exact absurd a n10
    rcases c18 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd n1 a
  have c865 : v41 ∨ v15 ∨ v19 ∨ v22 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v35 := by
      rcases c851 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v24 := by
      rcases c862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
    have u9 : ¬v23 := by
      rcases c854 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
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
    have u10 : ¬v25 := by
      rcases c858 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
    have u12 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact a
    have u13 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v28 := by
      rcases c485 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u5
    have u17 : ¬v27 := by
      rcases c112 with a|a|a
      · exact absurd u8 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v26 := by
      rcases c111 with a|a|a
      · exact absurd u8 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v10 := by
      rcases c863 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u20 : ¬v4 := by
      rcases c864 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u21 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n6
    have u22 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a n9
      · exact a
      · exact absurd a u3
    have u26 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u18
      · exact a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n7
    have u27 : v6 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u24
    rcases c21 with a|a|a
    · exact absurd u25 a
    · exact absurd u26 a
    · exact absurd u27 a
  exact ⟨c817, c819, c822, c823, c827, c828, c836, c837, c839, c840, c841, c845, c847, c848, c849, c850, c851, c852, c855, c859, c861, c863, c864, c865⟩
