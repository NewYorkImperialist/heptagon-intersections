import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 650-699 of the 2559-step refutation of ccase003: 130 core clauses and 58 earlier-derived ones give 23 more. -/
theorem CCase003_block013
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c19 : ¬v2 ∨ ¬v4 ∨ ¬v6)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c45 : ¬v9 ∨ ¬v11)
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
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c105 : ¬v28 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c122 : v22 ∨ v27 ∨ v26 ∨ v24 ∨ v28 ∨ v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c145 : v29 ∨ v30 ∨ v32 ∨ v35 ∨ v34 ∨ v31 ∨ v33)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c167 : ¬v44 ∨ ¬v43)
    (c176 : ¬v48 ∨ ¬v44)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c227 : v43 ∨ ¬v42 ∨ v35 ∨ v14 ∨ v34 ∨ v33 ∨ v49 ∨ v41 ∨ v36 ∨ v40 ∨ v13 ∨ v8 ∨ v47 ∨ v7)
    (c232 : ¬v39 ∨ v32 ∨ v40 ∨ v45 ∨ v33 ∨ v47 ∨ v46 ∨ v38)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c255 : ¬v19 ∨ v12 ∨ v18 ∨ v26 ∨ v25 ∨ v20 ∨ v13 ∨ v11)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c263 : ¬v41 ∨ v34 ∨ v35 ∨ v40 ∨ v49 ∨ v42 ∨ v47 ∨ v48)
    (c271 : v43 ∨ ¬v42 ∨ v48 ∨ v49 ∨ v29 ∨ v35 ∨ v36 ∨ v41)
    (c292 : v21 ∨ v20 ∨ ¬v13 ∨ v14 ∨ v19 ∨ v6 ∨ v12 ∨ v7)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c301 : ¬v38 ∨ v37 ∨ v31 ∨ v45 ∨ v32 ∨ v46 ∨ v39 ∨ v30)
    (c303 : ¬v34 ∨ v41 ∨ v27 ∨ v26 ∨ v35 ∨ v33 ∨ v40 ∨ v28)
    (c348 : ¬v44 ∨ v43 ∨ v38 ∨ v37 ∨ v3 ∨ v2 ∨ v1 ∨ v45)
    (c359 : v43 ∨ ¬v42 ∨ v48 ∨ v35 ∨ v34 ∨ v36 ∨ v49 ∨ v41)
    (c370 : ¬v41 ∨ v34 ∨ v42 ∨ v40 ∨ v33 ∨ v49 ∨ v47 ∨ v48)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c401 : v10 ∨ ¬v11 ∨ v17 ∨ v47 ∨ v18 ∨ v45 ∨ v8 ∨ v4 ∨ v1 ∨ v9 ∨ v12 ∨ v5 ∨ v46 ∨ v15)
    (c440 : v6 ∨ v20 ∨ v11 ∨ v19 ∨ v7 ∨ v10 ∨ v14 ∨ v3 ∨ v12 ∨ ¬v13 ∨ v17 ∨ v47 ∨ v48 ∨ v49)
    (c444 : v43 ∨ v15 ∨ v28 ∨ v20 ∨ v7 ∨ v8 ∨ v19 ∨ v14 ∨ v26 ∨ v27 ∨ v12 ∨ ¬v21 ∨ v48 ∨ v49)
    (c447 : v29 ∨ ¬v28 ∨ v35 ∨ v15 ∨ v22 ∨ v34 ∨ v27 ∨ v21)
    (c462 : v43 ∨ v36 ∨ v38 ∨ v1 ∨ v37 ∨ v2 ∨ ¬v44 ∨ v45)
    (c465 : ¬v26 ∨ v33 ∨ v25 ∨ v20 ∨ v32 ∨ v18 ∨ v19 ∨ v27)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c490 : ¬v44 ∨ v36 ∨ v38 ∨ v37 ∨ v3 ∨ v2 ∨ v43 ∨ v45)
    (c492 : v29 ∨ ¬v28 ∨ v27 ∨ v35 ∨ v15 ∨ v22 ∨ v21 ∨ v20)
    (c495 : v3 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v47 ∨ v46 ∨ v10 ∨ v11)
    (c515 : v36 ∨ v37 ∨ v25 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v16 ∨ v15 ∨ v31 ∨ v39 ∨ v21 ∨ v22 ∨ v32)
    (c524 : v43 ∨ ¬v42 ∨ v29 ∨ v36 ∨ v35 ∨ v49 ∨ v34 ∨ v41)
    (c538 : ¬v33 ∨ v40 ∨ v34 ∨ v39 ∨ v25 ∨ v27 ∨ v26 ∨ v32)
    (c562 : v43 ∨ v36 ∨ v37 ∨ v26 ∨ v30 ∨ v49 ∨ v35 ∨ v28 ∨ v34 ∨ v22 ∨ v40 ∨ ¬v29 ∨ v44 ∨ v33)
    (c566 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c605 : ¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c626 : v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c660 : v23 ∨ ¬v4 ∨ v19 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c743 : v28 ∨ ¬v14 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c780 : v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31)
    (c836 : v25 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c840 : v20 ∨ v15 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c841 : v31 ∨ v19 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c845 : ¬v19 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c852 : v28 ∨ v22 ∨ ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c927 : v26 ∨ v6 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c946 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c1022 : ¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1034 : v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1091 : v46 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1107 : v27 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1149 : ¬v7 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1152 : v11 ∨ v4 ∨ v10 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1154 : ¬v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1157 : ¬v28 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1170 : ¬v7 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1171 : v11 ∨ v4 ∨ ¬v7 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1191 : v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1196 : ¬v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1197 : ¬v26 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1211 : v28 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1213 : v27 ∨ ¬v22 ∨ v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1215 : v26 ∨ v17 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    : (v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v40 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31) ∧ (¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46) ∧ (¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35) ∧ (¬v39 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47) ∧ (v20 ∨ ¬v13 ∨ v17 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49) ∧ (v47 ∨ ¬v4 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v48) ∧ (¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26) ∧ (¬v42 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v49) ∧ (v40 ∨ v4 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48) ∧ (v42 ∨ ¬v12 ∨ v19 ∨ ¬v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v32 ∨ v35 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v12 ∨ v4 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46) ∧ (¬v42 ∨ v1 ∨ v2 ∨ ¬v44 ∨ v45) ∧ (¬v34 ∨ v16 ∨ v22 ∨ ¬v23 ∨ ¬v26) ∧ (¬v23 ∨ v22 ∨ v25 ∨ v27 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34) ∧ (v35 ∨ v11 ∨ ¬v13 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1216 : v23 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v34 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v22 := by
      rcases c1213 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u2
    have u15 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u2
    have u16 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v26 := by
      rcases c1215 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
    have u18 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u17 a
    have u19 : ¬v20 := by
      rcases c841 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : v15 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u17 a
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u2
    have u21 : v18 := by
      rcases c465 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a n1
    rcases c62 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c1217 : v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v28 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v34 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v27 := by
      rcases c1216 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u13 a
    have u15 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u13 a
    have u18 : ¬v13 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v19 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u19 a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u21 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v10 := by
      rcases c845 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u23 a
      · exact a
    rcases c255 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u25
  have c1218 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v23 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v28 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v22 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c100 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v27 := by
      rcases c106 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v34 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u12
    have u14 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    have u15 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u14 a
      · exact a
    rcases c492 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u2 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a u16
  have c1219 : v35 ∨ v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u1 a
      · exact a
    rcases c492 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n6 a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
  have c1220 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n5
  have c1221 : ¬v40 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1034 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1222 : v17 ∨ v19 ∨ v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v28 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u2 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : v29 := by
      rcases c1219 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n13
    have u6 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u7 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : ¬v3 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n19
    have u9 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n0
    have u10 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n19
    · exact absurd a u4
  have c1223 : ¬v17 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v27 ∨ ¬v28 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v29 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u5 a
      · exact a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
  have c1224 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
  have c1225 : v30 ∨ v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v28 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u2 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
    have u4 : ¬v17 := by
      rcases c1223 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n8
    have u5 : v29 := by
      rcases c1219 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u6 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v15 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u3
      · exact a
    have u9 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v38 := by
      rcases c1222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u10 a
      · exact a
    rcases c301 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a u2
    · exact absurd a n0
  have c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n0 a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n4
  have c1227 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    rcases c301 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n1
  have c1228 : v25 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v35 := by
      rcases c1225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
    have u11 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v13 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u16 a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v3 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u16 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u17 a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a u12
  have c1229 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n7
  have c1230 : v45 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v28 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u2 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n12
    have u6 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n12
    have u7 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v3 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
    have u10 : v13 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v5 := by
      rcases c495 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact a
      · exact absurd a u13
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a u14
      · exact absurd a u11
    have u16 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u15 a
      · exact absurd u8 a
      · exact a
    rcases c440 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd u10 a
    · exact absurd a u6
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1231 : v27 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v28 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u2 : v30 := by
      rcases c1228 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v20 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u7 a
      · exact a
    rcases c447 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u9
  have c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    rcases c447 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
  have c1233 : ¬v23 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v31 := by
      rcases c1231 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n0 a
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
    have u2 : v28 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u5
    have u8 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v21 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact a
    have u10 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u9 a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n1
  have c1235 : ¬v39 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    rcases c1224 with a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1236 : v20 ∨ ¬v13 ∨ v17 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
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
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v18 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n3
    have u6 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
    have u8 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u6
    have u9 : ¬v7 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    rcases c292 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u9
  have c1237 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    rcases c271 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
  have c1238 : v35 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v42 := by
      rcases c1237 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v14 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n15
    have u11 : ¬v11 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n13
    have u12 : v4 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c32 with a|a|a
    · exact absurd u12 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1239 : v42 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n12
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u2
    have u14 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n18
    have u15 : v6 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c13 with a|a|a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd u15 a
  have c1240 : ¬v6 ∨ ¬v4 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n4 a
      · exact a
    rcases c348 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
  have c1241 : v47 ∨ ¬v4 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v6 := by
      rcases c1240 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n11 a
      · exact absurd a n12
    have u2 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n6
    have u3 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v7 := by
      rcases c1131 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c641 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n0
  have c1242 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    rcases c381 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n3
  have c1243 : ¬v6 ∨ ¬v10 ∨ v15 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n2
    have u5 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    rcases c13 with a|a|a
    · exact absurd u4 a
    · exact absurd u6 a
    · exact absurd n0 a
  have c1244 : v47 ∨ v4 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v33 := by
      rcases c1238 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v40 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
    have u5 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v19 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n13
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v17 := by
      rcases c1239 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
    have u12 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u11 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n14
    have u15 : ¬v10 := by
      rcases c1243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n15
    have u16 : v11 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u17 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u12
    have u20 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n15
    rcases c13 with a|a|a
    · exact absurd u19 a
    · exact absurd u20 a
    · exact absurd u14 a
  have c1245 : v28 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v4 := by
      rcases c1244 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
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
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v33 := by
      rcases c1238 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v40 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
    have u8 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u13 : v21 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd u3 a
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u14 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v14 := by
      rcases c626 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a n0
    have u16 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c593 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a n13
  have c1246 : ¬v42 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v29 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n7
    have u6 : v48 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n7
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v23 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v26 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u5 a
      · exact absurd a u11
      · exact absurd a u9
    have u13 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
    have u15 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n5
    have u16 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n4
    have u17 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u15 a
    rcases c515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd u5 a
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u7
  have c1247 : v28 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v29 := by
      rcases c1245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v42 := by
      rcases c1246 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n13
    have u10 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v14 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n13
    have u14 : ¬v11 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n11
    have u15 : v4 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c32 with a|a|a
    · exact absurd u15 a
    · exact absurd u13 a
    · exact absurd u11 a
  have c1250 : v40 ∨ v4 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n0
  have c1251 : v42 ∨ ¬v12 ∨ v19 ∨ ¬v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v32 ∨ v35 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u8 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
    have u10 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u8
    have u11 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
    have u12 : v4 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c641 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd u12 a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1252 : v45 ∨ v19 ∨ v20 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v24 := by
      rcases c1233 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v34 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
    have u11 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v41 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
    have u13 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u17 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u11
    have u18 : ¬v7 := by
      rcases c1149 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : v14 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n13
    have u20 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v4 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u24 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u23 a
    rcases c490 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a n0
  have c1253 : v49 ∨ v20 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v24 := by
      rcases c1233 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u2 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u4 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v19 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u7 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v42 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n8
      · exact a
      · exact absurd a n0
    have u16 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n12
      · exact absurd a n0
    have u20 : v34 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u15 a
      · exact absurd a n8
      · exact absurd a u11
      · exact a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a u14
    rcases c303 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u4
  have c1254 : v28 ∨ ¬v4 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v13 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v21 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u11 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : v15 := by
      rcases c444 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd u10 a
      · exact absurd a n16
      · exact absurd a n17
    rcases c65 with a|a
    · exact absurd u12 a
    · exact absurd u10 a
  have c1255 : v12 ∨ v4 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v6 := by
      rcases c1250 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u5 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
    rcases c490 with a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n10
  have c1256 : v26 ∨ v20 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v24 := by
      rcases c1233 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v35 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v42 := by
      rcases c946 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u12
      · exact a
    have u14 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v4 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : v12 := by
      rcases c1255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u18 a
      · exact a
    rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    rcases c1224 with a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
  have c1258 : v25 ∨ v22 ∨ ¬v23 ∨ v27 ∨ v32 ∨ ¬v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v26 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u9 : ¬v41 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v28 := by
      rcases c105 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n2 a
    have u11 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u12 : v16 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
    have u13 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u5
    have u14 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u2
    have u15 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u2
    have u16 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u19 a
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1259 : v25 ∨ v22 ∨ ¬v23 ∨ ¬v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : v16 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v33 := by
      rcases c145 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n7
      · exact a
    have u4 : v40 := by
      rcases c1258 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd u3 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd u15 a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n11
    · exact absurd u5 a
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n16
  have c1260 : v49 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v32 ∨ ¬v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
    have u8 : v40 := by
      rcases c1258 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u9 : ¬v41 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v26 := by
      rcases c1259 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u11 : v20 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u12 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u13 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v4 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v28 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
    have u16 : v13 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u15
    have u17 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u15
  have c1261 : ¬v42 ∨ v1 ∨ v2 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n3 a
      · exact a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
  have c1262 : v47 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u5 : v20 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v4 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u9 : v24 := by
      rcases c1233 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u9 a
    have u11 : v13 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
    have u12 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u17 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u4
    have u18 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u8 a
    have u19 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u8 a
    have u20 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u2 a
      · exact absurd a n7
    have u21 : v35 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u20
      · exact absurd a u10
    have u22 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v41 := by
      rcases c852 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u21 a
      · exact a
      · exact absurd a u20
    rcases c1220 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u1
    · exact absurd a u22
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
  have c1263 : ¬v26 ∨ v19 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v34 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u2 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
    have u7 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u8 : v18 := by
      rcases c465 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    rcases c67 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c1264 : ¬v34 ∨ v16 ∨ v22 ∨ ¬v23 ∨ ¬v26 := by
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
    rcases c800 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c1265 : v17 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ ¬v30 ∨ v32 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v42 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a u3
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n17
      · exact absurd a u4
      · exact absurd a n8
    have u14 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n11
    have u15 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    have u16 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    rcases c401 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u6 a
    · exact absurd a n0
    · exact absurd a n15
    · exact absurd a n2
    · exact absurd a n13
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a n14
    · exact absurd a n1
  have c1266 : ¬v23 ∨ v22 ∨ v25 ∨ v27 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v26 := by
      rcases c1262 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c105 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u5 : ¬v33 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v40 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v19 := by
      rcases c1263 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
    have u8 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v34 := by
      rcases c1264 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u2 a
    have u15 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v30 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v29 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n1
    have u18 : v31 := by
      rcases c375 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u16
    rcases c125 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c1267 : ¬v26 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v16 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u1 a
      · exact a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
  have c1268 : v35 ∨ v11 ∨ ¬v13 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n6
    rcases c1170 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  exact ⟨c1218, c1220, c1221, c1224, c1226, c1227, c1229, c1232, c1235, c1236, c1237, c1241, c1242, c1246, c1250, c1251, c1255, c1257, c1261, c1264, c1266, c1267, c1268⟩
