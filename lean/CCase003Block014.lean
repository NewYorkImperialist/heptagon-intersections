import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 700-749 of the 2559-step refutation of ccase003: 133 core clauses and 63 earlier-derived ones give 17 more. -/
theorem CCase003_block014
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c20 : ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
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
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
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
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c103 : ¬v23 ∨ ¬v28 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c145 : v29 ∨ v30 ∨ v32 ∨ v35 ∨ v34 ∨ v31 ∨ v33)
    (c146 : ¬v37 ∨ ¬v36)
    (c147 : ¬v38 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c161 : ¬v39 ∨ ¬v40)
    (c164 : ¬v41 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c167 : ¬v44 ∨ ¬v43)
    (c173 : ¬v45 ∨ ¬v44)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c198 : ¬v30 ∨ v37 ∨ v15 ∨ v33 ∨ v22 ∨ v23 ∨ v17 ∨ v16 ∨ v29 ∨ v31 ∨ v40 ∨ v38 ∨ v26 ∨ v32)
    (c199 : v43 ∨ v49 ∨ ¬v7 ∨ v48 ∨ v1 ∨ v13 ∨ v6 ∨ v14)
    (c203 : v43 ∨ v29 ∨ v35 ∨ v37 ∨ v49 ∨ v42 ∨ v30 ∨ ¬v36)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c251 : ¬v25 ∨ v18 ∨ v33 ∨ v26 ∨ v17 ∨ v19 ∨ v24 ∨ v32)
    (c278 : v43 ∨ ¬v28 ∨ v42 ∨ v35 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v20 ∨ v19 ∨ v21 ∨ v33 ∨ v48 ∨ v49)
    (c303 : ¬v34 ∨ v41 ∨ v27 ∨ v26 ∨ v35 ∨ v33 ∨ v40 ∨ v28)
    (c305 : v27 ∨ ¬v19 ∨ v11 ∨ v26 ∨ v13 ∨ v12 ∨ v18 ∨ v20)
    (c333 : ¬v16 ∨ v23 ∨ v1 ∨ v21 ∨ v3 ∨ v27 ∨ v15 ∨ v22 ∨ v17 ∨ v20 ∨ v2 ∨ v10 ∨ v9 ∨ v13)
    (c339 : v36 ∨ v23 ∨ v42 ∨ ¬v29 ∨ v30 ∨ v22 ∨ v35 ∨ v28)
    (c348 : ¬v44 ∨ v43 ∨ v38 ∨ v37 ∨ v3 ∨ v2 ∨ v1 ∨ v45)
    (c359 : v43 ∨ ¬v42 ∨ v48 ∨ v35 ∨ v34 ∨ v36 ∨ v49 ∨ v41)
    (c363 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v46 ∨ v10 ∨ v4)
    (c366 : ¬v12 ∨ v6 ∨ v19 ∨ v13 ∨ v20 ∨ v11 ∨ v4 ∨ v5)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c393 : v14 ∨ v20 ∨ v5 ∨ v19 ∨ v21 ∨ v6 ∨ v12 ∨ ¬v13)
    (c396 : v36 ∨ v23 ∨ ¬v29 ∨ v15 ∨ v22 ∨ v30 ∨ v26 ∨ v16 ∨ v21 ∨ v33 ∨ v35 ∨ v42 ∨ v34 ∨ v40)
    (c401 : v10 ∨ ¬v11 ∨ v17 ∨ v47 ∨ v18 ∨ v45 ∨ v8 ∨ v4 ∨ v1 ∨ v9 ∨ v12 ∨ v5 ∨ v46 ∨ v15)
    (c416 : v43 ∨ ¬v36 ∨ v49 ∨ v30 ∨ v21 ∨ v37 ∨ v42 ∨ v41 ∨ v48 ∨ v34 ∨ v16 ∨ v29 ∨ v15 ∨ v22)
    (c428 : ¬v44 ∨ v37 ∨ v1 ∨ v16 ∨ v4 ∨ v17 ∨ v2 ∨ v15 ∨ v9 ∨ v38 ∨ v39 ∨ v43 ∨ v45 ∨ v46)
    (c430 : ¬v44 ∨ v36 ∨ v37 ∨ v2 ∨ v1 ∨ v3 ∨ v43 ∨ v45)
    (c447 : v29 ∨ ¬v28 ∨ v35 ∨ v15 ∨ v22 ∨ v34 ∨ v27 ∨ v21)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c462 : v43 ∨ v36 ∨ v38 ∨ v1 ∨ v37 ∨ v2 ∨ ¬v44 ∨ v45)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c477 : v33 ∨ v26 ∨ v32 ∨ v4 ∨ v17 ∨ v3 ∨ v10 ∨ v34 ∨ v19 ∨ v13 ∨ v5 ∨ v20 ∨ ¬v12 ∨ v11)
    (c483 : v43 ∨ ¬v36 ∨ v49 ∨ v44 ∨ v29 ∨ v35 ∨ v42 ∨ v37)
    (c490 : ¬v44 ∨ v36 ∨ v38 ∨ v37 ∨ v3 ∨ v2 ∨ v43 ∨ v45)
    (c492 : v29 ∨ ¬v28 ∨ v27 ∨ v35 ∨ v15 ∨ v22 ∨ v21 ∨ v20)
    (c523 : v36 ∨ ¬v33 ∨ v40 ∨ v48 ∨ v34 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v39 ∨ v22 ∨ v46 ∨ v47 ∨ v35)
    (c536 : v43 ∨ ¬v1 ∨ v49 ∨ v7 ∨ v14 ∨ v9 ∨ v8 ∨ v2)
    (c548 : ¬v32 ∨ v39 ∨ v26 ∨ v47 ∨ v35 ∨ v28 ∨ v45 ∨ v25 ∨ v46 ∨ v33 ∨ v34 ∨ v42 ∨ v31 ∨ v38)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c590 : ¬v6 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c626 : v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c679 : v26 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c700 : v31 ∨ ¬v5 ∨ ¬v6 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c704 : ¬v11 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c729 : v5 ∨ v4 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c746 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c776 : v12 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c866 : v10 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c897 : v25 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c927 : v26 ∨ v6 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c929 : ¬v12 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c932 : ¬v19 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c946 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1046 : v22 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32)
    (c1051 : v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35)
    (c1075 : ¬v32 ∨ ¬v41 ∨ v42 ∨ v48 ∨ v49)
    (c1102 : ¬v25 ∨ v18 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1149 : ¬v7 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1155 : ¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1170 : ¬v7 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1171 : v11 ∨ v4 ∨ ¬v7 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1218 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1220 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1221 : ¬v40 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1224 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1227 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46)
    (c1229 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1237 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1241 : v47 ∨ ¬v4 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v48)
    (c1242 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26)
    (c1246 : ¬v42 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v49)
    (c1250 : v40 ∨ v4 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1251 : v42 ∨ ¬v12 ∨ v19 ∨ ¬v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v32 ∨ v35 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c1255 : v12 ∨ v4 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1261 : ¬v42 ∨ v1 ∨ v2 ∨ ¬v44 ∨ v45)
    (c1266 : ¬v23 ∨ v22 ∨ v25 ∨ v27 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1267 : ¬v26 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34)
    (c1268 : v35 ∨ v11 ∨ ¬v13 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49) ∧ (¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26) ∧ (¬v21 ∨ v22 ∨ ¬v23 ∨ ¬v25) ∧ (¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26) ∧ (¬v23 ∨ v22 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v35 ∨ v4 ∨ v6 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v36 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v1 ∨ ¬v4 ∨ v36 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45) ∧ (¬v36 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49) ∧ (v45 ∨ ¬v18 ∨ v22 ∨ v26 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ ¬v6 ∨ ¬v13 ∨ v15 ∨ v21 ∨ v22 ∨ v26 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v36 ∨ v1 ∨ v2 ∨ v4 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v44 ∨ v45 ∨ v46) ∧ (v40 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v34 ∨ v36 ∨ v42) ∧ (v15 ∨ ¬v6 ∨ ¬v19 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v9 ∨ ¬v6 ∨ v15 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v34 ∨ v15 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v36 ∨ v40 ∨ v41 ∨ v43 ∨ v48 ∨ v49) := by
  have c1269 : v45 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v38 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact a
    have u9 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n14
    have u15 : ¬v13 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v5 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n12
    have u18 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u11 a
    have u19 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u11 a
    have u20 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u11 a
    rcases c430 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a n0
  have c1270 : v21 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v39 := by
      rcases c1269 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v4 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u14 : v12 := by
      rcases c1255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n13
    have u16 : ¬v7 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u14 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a u4
    · exact absurd a n7
  have c1271 : v26 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
    have u4 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
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
    have u5 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
    have u7 : ¬v7 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : v10 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n7
    rcases c52 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1221 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1273 : v19 ∨ v20 ∨ v21 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : v18 := by
      rcases c1270 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c1271 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1274 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd n0 a
  have c1275 : v26 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ ¬v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n12
    have u13 : v21 := by
      rcases c1273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v14 := by
      rcases c626 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u14
    have u19 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u8
    rcases c11 with a|a|a
    · exact absurd u18 a
    · exact absurd u19 a
    · exact absurd u11 a
  have c1276 : ¬v19 ∨ ¬v6 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u1
    have u7 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n6
    rcases c13 with a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd n1 a
  have c1277 : v49 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
    have u7 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n0
    have u8 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u9 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n0
    have u13 : ¬v19 := by
      rcases c1276 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n0
    have u14 : v20 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u15 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v13 := by
      rcases c582 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v11 := by
      rcases c704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n9
    rcases c1268 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u19
    · exact absurd u18 a
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
  have c1278 : v25 ∨ v22 ∨ ¬v23 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v32 := by
      rcases c1266 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c1267 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
    have u9 : v28 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v24 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
    rcases c100 with a|a|a
    · exact absurd n2 a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c1280 : ¬v21 ∨ v22 ∨ ¬v23 ∨ ¬v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u4 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u7 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd a u6
    have u8 : v31 := by
      rcases c918 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u7
      · exact a
    have u9 : v29 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n1
    rcases c125 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
  have c1282 : v49 ∨ v18 ∨ v22 ∨ ¬v23 ∨ v27 ∨ v31 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v25 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u5 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v21 := by
      rcases c1280 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd u1 a
    have u7 : v32 := by
      rcases c1102 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u8 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u4
    have u9 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u4
    have u10 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
    have u13 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n0
    have u14 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n5
    have u15 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u9
    have u16 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n5
    have u17 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u18 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n0
    have u20 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u21 : ¬v13 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u19
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u22 : ¬v7 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v5 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
    have u24 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u5
    have u25 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u17 a
    rcases c638 with a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u25
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u6
  have c1283 : v49 ∨ v18 ∨ v22 ∨ ¬v23 ∨ v27 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v25 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n3 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n3 a
    have u6 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v21 := by
      rcases c1280 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd u2 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u5
    have u10 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u5
    have u11 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u10
    have u12 : v31 := by
      rcases c1282 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v17 := by
      rcases c251 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u14
    have u17 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u18 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v42 := by
      rcases c1237 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n0
    have u21 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u22 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u23 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a n0
    have u24 : ¬v13 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u25 : ¬v7 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u22
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : v5 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n8
    have u27 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u13
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u6
    have u28 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u21 a
    rcases c638 with a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u28
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u7
  have c1284 : v22 ∨ v18 ∨ ¬v23 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v25 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
    have u6 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
    have u7 : v33 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    rcases c1046 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u9
  have c1285 : v49 ∨ v22 ∨ ¬v23 ∨ v27 ∨ v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v18 := by
      rcases c1284 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v25 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u11 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n2 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n2 a
    have u13 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u10 a
    have u14 : v30 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
    have u15 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u21 : ¬v42 := by
      rcases c1246 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a n0
    have u22 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u23 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u24 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a n0
    have u25 : ¬v7 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u23
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u26 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u13
    have u27 : v1 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a n0
    have u28 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v5 := by
      rcases c11 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u22 a
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u12
    · exact absurd a u29
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u19
  have c1286 : ¬v23 ∨ v22 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v18 := by
      rcases c1284 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v29 := by
      rcases c1285 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v24 := by
      rcases c375 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u11
    have u17 : ¬v28 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a u13
    have u18 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n0 a
    have u22 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u21
    have u24 : ¬v42 := by
      rcases c1246 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a n7
    have u25 : v6 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a n6
    have u26 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd u16 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u27 : ¬v5 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u25 a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n7
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u18
  have c1287 : ¬v18 ∨ v22 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v28 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u11 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v42 := by
      rcases c1246 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n9
    have u15 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n9
    have u18 : ¬v7 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u10
    have u20 : v1 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n9
    have u21 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v5 := by
      rcases c11 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u15 a
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u11
  have c1288 : v35 ∨ ¬v6 ∨ v15 ∨ v19 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v12 := by
      rcases c1255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n2
    have u11 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n7
    rcases c13 with a|a|a
    · exact absurd u10 a
    · exact absurd u11 a
    · exact absurd n1 a
  have c1289 : v35 ∨ v4 ∨ v6 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v36 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v12 := by
      rcases c1250 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v5 := by
      rcases c366 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n1
      · exact a
    have u8 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n12
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n3
    have u9 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n9
    rcases c12 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd u7 a
  have c1290 : ¬v1 ∨ ¬v4 ∨ v36 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n5 a
      · exact a
    rcases c490 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n6
  have c1291 : v38 ∨ ¬v18 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
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
    have u4 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c1287 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v34 := by
      rcases c145 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a n9
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v41 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n5
    have u11 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v6 := by
      rcases c1288 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : v4 := by
      rcases c1289 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v1 := by
      rcases c1290 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a n11
    have u17 : v7 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u16
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a n15
    have u18 : v2 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u12
      · exact a
      · exact absurd u7 a
      · exact absurd a n11
    rcases c20 with a|a|a
    · exact absurd u18 a
    · exact absurd u17 a
    · exact absurd u15 a
  have c1292 : ¬v1 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
  have c1293 : v33 ∨ ¬v18 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
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
    have u4 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c1287 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v35 := by
      rcases c1291 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v42 := by
      rcases c946 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact a
    have u15 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v4 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd u8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u18 : v12 := by
      rcases c1255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u1
    have u22 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n12
    rcases c1292 with a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u22 a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1294 : ¬v18 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v30 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1237 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v1 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n12
    have u17 : v7 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n12
    have u18 : ¬v13 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : v12 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u14 a
    have u21 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u14 a
    have u22 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u19 a
    rcases c477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd u19 a
    · exact absurd a u16
  have c1295 : ¬v18 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c1287 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v30 := by
      rcases c1294 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v31 := by
      rcases c1293 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v42 := by
      rcases c1237 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n11
    have u16 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v1 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n11
    have u19 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a u1
    have u20 : v7 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u17
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n11
    have u21 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u19 a
      · exact a
    rcases c1170 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1296 : ¬v8 ∨ v1 ∨ ¬v6 ∨ v15 ∨ v16 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v2 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n1
    rcases c776 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u5 a
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1297 : ¬v36 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n0 a
    rcases c416 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
  have c1298 : v19 ∨ v1 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v24 ∨ v26 ∨ v29 ∨ v31 ∨ v33 ∨ v36 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n2
    have u5 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v7 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c1136 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
  have c1299 : v26 ∨ ¬v18 ∨ v22 ∨ v27 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c1287 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v28 := by
      rcases c1295 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v35 := by
      rcases c492 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u13 a
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v25 := by
      rcases c897 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
    have u19 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u18 a
    have u22 : ¬v36 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v1 := by
      rcases c1298 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u24 : ¬v6 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u25 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u17
    have u26 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : v7 := by
      rcases c1131 with a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u24
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u29 : v5 := by
      rcases c393 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd u25 a
    rcases c1149 with a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd u29 a
    · exact absurd a u27
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1300 : v22 ∨ ¬v18 ∨ v26 ∨ v27 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v32 := by
      rcases c1299 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v28 := by
      rcases c278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v36 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v1 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd a u3
    rcases c1296 with a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u19
    · exact absurd u18 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1301 : v1 ∨ ¬v18 ∨ v22 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ ¬v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v7 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
    have u2 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u4
    have u7 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v6 := by
      rcases c1296 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c199 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd u1 a
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
  have c1302 : v6 ∨ v4 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n6
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v5 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c393 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd u1 a
  have c1303 : v45 ∨ ¬v18 ∨ v22 ∨ v26 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v33 := by
      rcases c1300 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v28 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u10
    have u15 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n8
    have u16 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a n5
    have u17 : v1 := by
      rcases c1301 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v40 := by
      rcases c523 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u7 a
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
    have u19 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v6 := by
      rcases c1302 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v5 := by
      rcases c11 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u14
    have u26 : v13 := by
      rcases c559 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n7
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a n8
      · exact absurd u21 a
      · exact a
    rcases c58 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c1304 : v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v13 := by
      rcases c559 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd n2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    rcases c536 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u3
  have c1305 : v34 ∨ ¬v6 ∨ v8 ∨ v12 ∨ v15 ∨ v16 ∨ v19 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd n1 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n4
    have u3 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : v30 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u11 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u5
    have u12 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u14 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    have u15 : v44 := by
      rcases c483 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd u2 a
      · exact absurd a n15
      · exact a
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v45 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u1
      · exact a
    rcases c173 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c1306 : v14 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v15 ∨ v16 ∨ v19 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v18 := by
      rcases c1303 with a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd n1 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : v29 := by
      rcases c1305 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u7
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n11
      · exact a
      · exact absurd a n16
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u11
    have u13 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u14 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n1 a
    have u16 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n14
    have u17 : v25 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u18 : v28 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n18
      · exact absurd a u16
      · exact a
    rcases c679 with a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd u17 a
    · exact absurd a n12
    · exact absurd u18 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n13
    · exact absurd a u8
  have c1307 : ¬v29 ∨ v9 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v23 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    rcases c932 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c1308 : v27 ∨ ¬v6 ∨ ¬v13 ∨ v15 ∨ v21 ∨ v22 ∨ v26 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u7
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v19 := by
      rcases c1306 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u9
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
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c1307 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd u12 a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n0
    have u15 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n3
    have u16 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : v30 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
    have u23 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u21 a
    rcases c198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a u24
  have c1309 : ¬v36 ∨ v1 ∨ v2 ∨ v4 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n8 a
      · exact a
    rcases c428 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
  have c1310 : v40 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v30 ∨ v33 ∨ v34 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n7 a
      · exact a
    rcases c396 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd n7 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n12
    · exact absurd a n10
    · exact absurd a n0
  have c1311 : v40 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v34 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n7 a
      · exact a
    rcases c1310 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n7 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1312 : v22 ∨ ¬v6 ∨ v12 ∨ v15 ∨ ¬v19 ∨ v21 ∨ v26 ∨ v27 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v13 := by
      rcases c1308 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v11 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd n1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v5 := by
      rcases c401 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n3
    have u17 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n9
    have u18 : ¬v36 := by
      rcases c1309 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u7 a
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n1 a
    have u20 : v29 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a n3
    have u21 : v37 := by
      rcases c430 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u18
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a n9
    have u22 : v40 := by
      rcases c1311 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd u20 a
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u17
    rcases c154 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  have c1313 : ¬v6 ∨ v9 ∨ v14 ∨ v15 ∨ ¬v19 ∨ v21 ∨ v22 ∨ v27 ∨ ¬v29 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v28 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n3
    have u11 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd n0 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v42 := by
      rcases c1246 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n14
    have u16 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n14
    have u18 : v36 := by
      rcases c339 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd n8 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u10
    have u19 : v2 := by
      rcases c1309 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u9 a
      · exact absurd a n10
      · exact absurd a n11
    rcases c23 with a|a|a
    · exact absurd u19 a
    · exact absurd u17 a
    · exact absurd n0 a
  have c1314 : v15 ∨ ¬v6 ∨ ¬v19 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v8 := by
      rcases c1296 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v12 := by
      rcases c1312 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v29 := by
      rcases c1313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n0
    have u13 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v30 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
    have u20 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u18 a
    rcases c198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a u21
  have c1315 : v21 ∨ ¬v6 ∨ v15 ∨ v16 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v19 := by
      rcases c1314 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v13 := by
      rcases c1308 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v18 := by
      rcases c1303 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v8 := by
      rcases c1296 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n2
    have u10 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : v30 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
    have u17 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : v17 := by
      rcases c198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u21
    have u23 : ¬v28 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n0
    have u24 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n13
    have u26 : v5 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n11
    have u27 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n1 a
    have u28 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd n1 a
    rcases c348 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u7
    · exact absurd a n9
  have c1316 : ¬v44 ∨ ¬v6 ∨ v13 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v34 ∨ ¬v36 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n12 a
    have u2 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n12 a
    have u3 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n12 a
    have u5 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n12 a
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n1 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v11 := by
      rcases c704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n14
    have u11 : v5 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n14
    have u12 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u13 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    rcases c348 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a n13
  have c1317 : v9 ∨ ¬v6 ∨ v15 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v19 := by
      rcases c1314 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
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
    have u3 : ¬v13 := by
      rcases c1308 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
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
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v18 := by
      rcases c1303 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v16 := by
      rcases c1315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
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
    have u9 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n2
    have u13 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v3 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u16
    rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u3
  have c1318 : v34 ∨ v15 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v36 ∨ v40 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v42 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n10
    have u4 : v16 := by
      rcases c1311 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u3
    have u5 : v28 := by
      rcases c339 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd n7 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact a
    have u6 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u4 a
      · exact a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n1
  exact ⟨c1272, c1274, c1279, c1280, c1281, c1286, c1289, c1290, c1297, c1303, c1304, c1308, c1309, c1311, c1314, c1317, c1318⟩
