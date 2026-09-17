import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 350-399 of the 2559-step refutation of ccase003: 123 core clauses and 49 earlier-derived ones give 28 more. -/
theorem CCase003_block007
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
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
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
    (c119 : v22 ∨ v23 ∨ v28 ∨ v27 ∨ v25 ∨ v24)
    (c120 : v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c142 : ¬v34 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c169 : ¬v46 ∨ ¬v43)
    (c170 : ¬v47 ∨ ¬v43)
    (c188 : v43 ∨ v44 ∨ v49 ∨ v46 ∨ v45 ∨ v47 ∨ v48)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c231 : v36 ∨ ¬v43 ∨ v42 ∨ v44 ∨ v2 ∨ v7 ∨ v1 ∨ v49)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c247 : v7 ∨ v20 ∨ v12 ∨ v14 ∨ v5 ∨ v6 ∨ v21 ∨ ¬v13)
    (c255 : ¬v19 ∨ v12 ∨ v18 ∨ v26 ∨ v25 ∨ v20 ∨ v13 ∨ v11)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c265 : v4 ∨ v6 ∨ v46 ∨ v12 ∨ v47 ∨ v48 ∨ ¬v5 ∨ v11)
    (c298 : v36 ∨ ¬v37 ∨ v30 ∨ v38 ∨ v31 ∨ v44 ∨ v45 ∨ v29)
    (c315 : ¬v35 ∨ v29 ∨ v34 ∨ v28 ∨ v42 ∨ v22 ∨ v41 ∨ v27)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c332 : v36 ∨ ¬v35 ∨ v42 ∨ v34 ∨ v29 ∨ v22 ∨ v41 ∨ v28)
    (c339 : v36 ∨ v23 ∨ v42 ∨ ¬v29 ∨ v30 ∨ v22 ∨ v35 ∨ v28)
    (c356 : ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v48 ∨ v4 ∨ v12 ∨ v13)
    (c365 : ¬v33 ∨ v40 ∨ v27 ∨ v41 ∨ v39 ∨ v34 ∨ v26 ∨ v32)
    (c374 : v36 ∨ v29 ∨ ¬v43 ∨ v2 ∨ v28 ∨ v23 ∨ v22 ∨ v3 ∨ v1 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c409 : v14 ∨ v47 ∨ v5 ∨ v48 ∨ v49 ∨ v7 ∨ ¬v6 ∨ v13)
    (c410 : v23 ∨ ¬v24 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17 ∨ v16)
    (c411 : v2 ∨ v6 ∨ v21 ∨ v48 ∨ v49 ∨ v47 ∨ v5 ∨ v14 ∨ v16 ∨ v20 ∨ v9 ∨ ¬v13 ∨ v8 ∨ v12)
    (c433 : v29 ∨ v35 ∨ ¬v7 ∨ v2 ∨ v9 ∨ v8 ∨ v6 ∨ v14 ∨ v34 ∨ v1 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c447 : v29 ∨ ¬v28 ∨ v35 ∨ v15 ∨ v22 ∨ v34 ∨ v27 ∨ v21)
    (c458 : ¬v19 ∨ v26 ∨ v12 ∨ v27 ∨ v32 ∨ v17 ∨ v9 ∨ v11 ∨ v18 ∨ v16 ∨ v23 ∨ v20 ∨ v33 ∨ v34)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c493 : v11 ∨ v6 ∨ v46 ∨ v2 ∨ v5 ∨ v19 ∨ ¬v12 ∨ v18 ∨ v16 ∨ v13 ∨ v9 ∨ v10 ∨ v47 ∨ v48)
    (c500 : ¬v34 ∨ v41 ∨ v27 ∨ v28 ∨ v42 ∨ v33 ∨ v35 ∨ v40)
    (c508 : v36 ∨ ¬v43 ∨ v5 ∨ v9 ∨ v2 ∨ v1 ∨ v14 ∨ v8 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c523 : v36 ∨ ¬v33 ∨ v40 ∨ v48 ∨ v34 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v39 ∨ v22 ∨ v46 ∨ v47 ∨ v35)
    (c538 : ¬v33 ∨ v40 ∨ v34 ∨ v39 ∨ v25 ∨ v27 ∨ v26 ∨ v32)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    (c564 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c578 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v17 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c607 : v6 ∨ v7 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c608 : ¬v5 ∨ v6 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c621 : v27 ∨ v6 ∨ v7 ∨ v14 ∨ ¬v26 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c626 : v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c667 : ¬v11 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v34)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c676 : v27 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c679 : v26 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c680 : v27 ∨ ¬v19 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c689 : ¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c696 : v23 ∨ ¬v12 ∨ v13 ∨ v15 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c723 : v46 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c731 : v46 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c739 : ¬v13 ∨ v4 ∨ v5 ∨ v6 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c748 : v28 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c768 : v24 ∨ v5 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c780 : v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c811 : ¬v13 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24)
    (c828 : v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c852 : v28 ∨ v22 ∨ ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c870 : v5 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c897 : v25 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c900 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c908 : v47 ∨ ¬v22 ∨ ¬v23 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c910 : ¬v32 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40)
    (c913 : ¬v34 ∨ ¬v23 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c914 : v27 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v28 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c915 : ¬v28 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v30 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v35 ∨ ¬v15 ∨ v18 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v36 ∨ v41 ∨ v42) ∧ (¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31) ∧ (¬v35 ∨ v22 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42) ∧ (v41 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (¬v32 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45) ∧ (v23 ∨ v22 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ ¬v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45) ∧ (v26 ∨ v6 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v12 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34) ∧ (v31 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v42) ∧ (v25 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34) ∧ (v47 ∨ ¬v6 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v27 ∨ v28 ∨ v35 ∨ v40 ∨ v41 ∨ v42) ∧ (v29 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v35 ∨ v41 ∨ v42) ∧ (¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42) ∧ (¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45) ∧ (¬v33 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45) ∧ (v26 ∨ ¬v6 ∨ v19 ∨ v24 ∨ v25 ∨ v32 ∨ v33 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v24 ∨ v6 ∨ v13 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v4 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v42 ∨ ¬v28 ∨ v31 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45) ∧ (v36 ∨ ¬v6 ∨ ¬v12 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (v31 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v28 ∨ ¬v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c916 : v35 ∨ ¬v15 ∨ v18 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v34 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n7 a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u3
    have u6 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v23 := by
      rcases c897 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n9
    have u9 : v24 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u7
    rcases c100 with a|a|a
    · exact absurd u8 a
    · exact absurd n7 a
    · exact absurd u9 a
  have c917 : v22 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ ¬v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v24 := by
      rcases c100 with a|a|a
      · exact absurd n1 a
      · exact absurd n5 a
      · exact a
    have u3 : v31 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n10 a
      · exact absurd a n7
      · exact absurd a n11
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n6
    have u4 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a u4
    have u6 : ¬v15 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v21 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n4
      · exact a
    have u8 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u7 a
      · exact a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n0
  have c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n4
  have c919 : v15 ∨ v22 ∨ ¬v23 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c100 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v20 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a n0
    have u4 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u3 a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n5
  have c920 : v41 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v34 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u2 : ¬v22 := by
      rcases c908 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v28 := by
      rcases c914 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
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
    have u4 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u5 : ¬v32 := by
      rcases c910 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v33 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n3
    have u7 : ¬v30 := by
      rcases c915 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u1
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
    have u8 : ¬v24 := by
      rcases c100 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u9 : v29 := by
      rcases c917 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v15 := by
      rcases c919 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u11
    have u13 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u11
    have u14 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u11
    have u15 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v6 := by
      rcases c578 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u17 a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a n13
    · exact absurd a u1
  have c921 : ¬v35 ∨ v22 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    rcases c332 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n2
  have c922 : v41 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v22 := by
      rcases c908 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v32 := by
      rcases c910 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v34 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u6 : ¬v33 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n3
    have u7 : v27 := by
      rcases c920 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
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
    have u8 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n7
    rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c923 : ¬v6 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c231 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n6
  have c924 : v48 ∨ v22 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v23 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
    have u2 : ¬v33 := by
      rcases c365 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n7
    have u3 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n18
    have u4 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n0
    have u5 : ¬v35 := by
      rcases c852 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v31 := by
      rcases c731 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
    have u8 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u2
    have u9 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v30 := by
      rcases c375 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a u10
      · exact a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v5 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
    have u16 : ¬v6 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd u4 a
      · exact absurd a n14
      · exact absurd a n18
    have u17 : v7 := by
      rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
    have u18 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n0
    have u19 : ¬v2 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u15 a
    have u20 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u15 a
    have u21 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u18 a
    rcases c433 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd u17 a
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a n8
    · exact absurd a u20
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n0
    · exact absurd a n18
  have c925 : ¬v32 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n1 a
      · exact a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
  have c926 : v23 ∨ v22 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ ¬v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : v29 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    rcases c339 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd u2 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n2
  have c927 : v26 ∨ v6 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
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
    have u6 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v7 := by
      rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u10 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v4 := by
      rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v2 := by
      rcases c411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u5
    rcases c20 with a|a|a
    · exact absurd u15 a
    · exact absurd u7 a
    · exact absurd u14 a
  have c928 : v36 ∨ ¬v6 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd n9 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c929 : ¬v12 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    rcases c409 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd n2 a
    · exact absurd a u2
  have c930 : v17 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v23 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n6 a
      · exact a
    rcases c458 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n12
  have c931 : v17 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ ¬v19 ∨ v23 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n5 a
    rcases c930 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c932 : ¬v19 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    rcases c931 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c933 : v26 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v33 := by
      rcases c523 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n16
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n6
    have u6 : v25 := by
      rcases c748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
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
    have u7 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd u2 a
      · exact absurd a n12
      · exact absurd a n17
    have u9 : v24 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n1
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n2
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
      · exact absurd a n15
      · exact absurd a n17
    have u10 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u9 a
    have u11 : ¬v7 := by
      rcases c928 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd u2 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u12 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u13 : v13 := by
      rcases c559 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n16
      · exact absurd a u8
      · exact absurd a n15
      · exact absurd a u11
      · exact absurd a n17
      · exact absurd u7 a
      · exact a
    have u14 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n15
      · exact a
      · exact absurd a u5
      · exact absurd a n9
    have u15 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u13 a
    rcases c932 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n5
  have c934 : v34 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v33 := by
      rcases c365 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
    have u4 : v29 := by
      rcases c933 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
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
      · exact absurd a n16
    have u5 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v23 := by
      rcases c926 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v25 := by
      rcases c922 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
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
    have u9 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u10 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
    have u11 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u10 a
      · exact a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd u7 a
    · exact absurd a u12
    · exact absurd a u6
  have c935 : v31 ∨ v22 ∨ ¬v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : v23 := by
      rcases c339 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n4
    have u4 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u3 a
    have u6 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
    have u7 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u6 a
      · exact a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd u3 a
    · exact absurd a u8
    · exact absurd a u1
  have c936 : v47 ∨ ¬v23 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
    have u10 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n11
    have u11 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n4
    have u15 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd a n8
    have u16 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a u5
    rcases c29 with a|a|a
    · exact absurd u16 a
    · exact absurd u14 a
    · exact absurd u15 a
  have c937 : v25 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v24 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
      · exact a
    have u3 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    rcases c410 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u3
  have c938 : v47 ∨ ¬v6 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n15
    have u2 : ¬v7 := by
      rcases c928 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u3 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a n5
    have u4 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u3 a
      · exact a
    rcases c559 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n14
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n15
    · exact absurd n1 a
    · exact absurd a u5
  have c939 : v46 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v6 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd u5 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a n8
    have u9 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v5 := by
      rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c265 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd u12 a
    · exact absurd a u9
  have c940 : v44 ∨ v6 ∨ ¬v13 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v25 := by
      rcases c937 with a|a|a|a|a|a|a|a|a|a
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
    have u6 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u5 a
    have u8 : ¬v17 := by
      rcases c811 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a u7
    have u9 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n8
      · exact absurd a u8
    have u10 : v7 := by
      rcases c621 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u11 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u10 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    rcases c663 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a n17
  have c941 : v48 ∨ v6 ∨ v19 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v25 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u1 a
    have u3 : ¬v13 := by
      rcases c940 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n1
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n20
    have u4 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n14
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u5 : v12 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n0
      · exact absurd a n20
    have u6 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n20
      · exact absurd a n15
      · exact absurd a n7
    have u12 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a n8
      · exact absurd a u6
    have u13 : ¬v1 := by
      rcases c7 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a n20
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a u8
  have c942 : v27 ∨ v22 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v26 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
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
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v29 := by
      rcases c935 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n10
    have u7 : v30 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u6
    have u8 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v23 := by
      rcases c936 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u8
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
    have u10 : ¬v19 := by
      rcases c939 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : v6 := by
      rcases c941 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u12 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n16
    have u13 : v21 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v7 := by
      rcases c928 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u15 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u18 : v14 := by
      rcases c626 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a n2
    have u19 : v13 := by
      rcases c559 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n15
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a u14
      · exact absurd a n16
      · exact absurd u11 a
      · exact a
    rcases c58 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c943 : ¬v34 ∨ v27 ∨ v28 ∨ v35 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    rcases c500 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
  have c944 : v35 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v34 := by
      rcases c942 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
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
    rcases c943 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c945 : v29 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n4 a
      · exact a
    rcases c315 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n2
  have c946 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    rcases c945 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c947 : ¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n1 a
      · exact a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
  have c948 : ¬v26 ∨ v19 ∨ v27 ∨ ¬v28 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v25 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c114 with a|a|a
    · exact absurd n3 a
    · exact absurd n0 a
    · exact absurd u1 a
  have c949 : v23 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v35 := by
      rcases c947 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a u4
    have u6 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a u4
    have u7 : ¬v26 := by
      rcases c948 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v25 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
    have u9 : v24 := by
      rcases c117 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a u8
    have u10 : v30 := by
      rcases c676 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v15 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v21 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n2
      · exact a
    have u14 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u13 a
      · exact a
    rcases c410 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u9 a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u15
    · exact absurd a u14
  have c950 : ¬v33 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n1 a
      · exact a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
  have c951 : ¬v26 ∨ v27 ∨ ¬v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c689 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c952 : v26 ∨ ¬v6 ∨ v19 ∨ v24 ∨ v25 ∨ v32 ∨ v33 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n16
    have u2 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
    have u3 : ¬v18 := by
      rcases c870 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n14
    have u4 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
    rcases c695 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c953 : v24 ∨ v6 ∨ v13 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n13
      · exact a
      · exact absurd a n17
      · exact absurd a n9
    have u2 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c696 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v14 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v3 := by
      rcases c828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u5 a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n7
    · exact absurd a u3
  have c954 : v25 ∨ v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v33 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u1
    have u3 : ¬v23 := by
      rcases c922 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n3
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
    have u4 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u5 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v35 := by
      rcases c947 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v6 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd u5 a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v13 := by
      rcases c953 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v17 := by
      rcases c662 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    have u14 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u15 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n9
    have u16 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a u13
    have u17 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n8
    rcases c24 with a|a|a
    · exact absurd u15 a
    · exact absurd u16 a
    · exact absurd u17 a
  have c955 : v49 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
    have u2 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v33 := by
      rcases c950 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v35 := by
      rcases c947 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v26 := by
      rcases c951 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
    have u6 : ¬v25 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
    have u7 : ¬v23 := by
      rcases c922 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
    have u8 : v22 := by
      rcases c949 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u3
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
      · exact absurd a n0
    have u9 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u10 : v19 := by
      rcases c954 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u5
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
      · exact absurd a n0
    have u11 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
    have u16 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
    have u17 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n6
    have u18 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u16 a
      · exact a
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u17 a
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n0
  have c956 : v36 ∨ ¬v4 ∨ ¬v12 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v47 := by
      rcases c170 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v46 := by
      rcases c169 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
    have u6 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n3
    have u7 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u8 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    rcases c231 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n8 a
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n11
  have c957 : v47 ∨ ¬v19 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v11 := by
      rcases c667 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n18
    have u7 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n17
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n12
    have u8 : ¬v12 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd u6 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u9 : v13 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a u5
    have u10 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n6
      · exact absurd a u1
    have u13 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
    have u14 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u7 a
    have u15 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u7 a
      · exact absurd u12 a
      · exact a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd u9 a
  have c958 : ¬v4 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c231 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n6
  have c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v13 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n3
      · exact a
    have u2 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    rcases c265 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n1 a
    · exact absurd a u2
  have c960 : v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n13
    rcases c959 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c961 : v42 ∨ ¬v28 ∨ v31 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v33 := by
      rcases c950 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v27 := by
      rcases c955 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd n1 a
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
    have u7 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u8 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u11 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u12 : ¬v19 := by
      rcases c957 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v6 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v12 := by
      rcases c960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
    have u22 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
    have u23 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u22
    have u24 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a n5
    have u25 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u26 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a n10
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u12
    · exact absurd u14 a
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n11
    · exact absurd a n12
  have c962 : ¬v34 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n1 a
      · exact a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
  have c963 : v36 ∨ ¬v6 ∨ ¬v12 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
    have u5 : v7 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u7 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    rcases c508 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n5 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c964 : v31 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v33 := by
      rcases c950 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v34 := by
      rcases c962 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v35 := by
      rcases c947 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v28 := by
      rcases c961 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a u6
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
    have u9 : ¬v27 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v22 := by
      rcases c944 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd a u8
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
    have u12 : ¬v12 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u10 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n12
    have u14 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n10
      · exact a
      · exact absurd a u5
      · exact absurd a n4
    have u15 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v25 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u9
    have u17 : v24 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
    rcases c87 with a|a|a
    · exact absurd u11 a
    · exact absurd u16 a
    · exact absurd u17 a
  have c965 : v28 ∨ ¬v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v26 := by
      rcases c964 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v35 := by
      rcases c947 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    rcases c944 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
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
  exact ⟨c916, c918, c921, c922, c923, c925, c926, c927, c929, c932, c935, c937, c938, c943, c945, c946, c947, c950, c952, c953, c958, c959, c960, c961, c962, c963, c964, c965⟩
