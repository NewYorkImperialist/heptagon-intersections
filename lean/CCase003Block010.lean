import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 500-549 of the 2559-step refutation of ccase003: 134 core clauses and 66 earlier-derived ones give 16 more. -/
theorem CCase003_block010
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
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
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
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
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c105 : ¬v28 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c119 : v22 ∨ v23 ∨ v28 ∨ v27 ∨ v25 ∨ v24)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c168 : ¬v45 ∨ ¬v43)
    (c171 : ¬v48 ∨ ¬v43)
    (c188 : v43 ∨ v44 ∨ v49 ∨ v46 ∨ v45 ∨ v47 ∨ v48)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c228 : ¬v25 ∨ v24 ∨ v18 ∨ v26 ∨ v31 ∨ v33 ∨ v32 ∨ v19)
    (c235 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v40 ∨ v33 ∨ v48 ∨ v49)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c255 : ¬v19 ∨ v12 ∨ v18 ∨ v26 ∨ v25 ∨ v20 ∨ v13 ∨ v11)
    (c263 : ¬v41 ∨ v34 ∨ v35 ∨ v40 ∨ v49 ∨ v42 ∨ v47 ∨ v48)
    (c268 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v20 ∨ v19 ∨ v26)
    (c270 : ¬v5 ∨ v6 ∨ v46 ∨ v4 ∨ v13 ∨ v11 ∨ v12 ∨ v47)
    (c277 : v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v7 ∨ v2 ∨ v1 ∨ v49)
    (c305 : v27 ∨ ¬v19 ∨ v11 ∨ v26 ∨ v13 ∨ v12 ∨ v18 ∨ v20)
    (c306 : v16 ∨ ¬v17 ∨ v25 ∨ v24 ∨ v9 ∨ v18 ∨ v10 ∨ v11)
    (c307 : v22 ∨ ¬v15 ∨ v28 ∨ v21 ∨ v9 ∨ v16 ∨ v8 ∨ v14)
    (c363 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v46 ∨ v10 ∨ v4)
    (c370 : ¬v41 ∨ v34 ∨ v42 ∨ v40 ∨ v33 ∨ v49 ∨ v47 ∨ v48)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c418 : ¬v12 ∨ v11 ∨ v6 ∨ v19 ∨ v20 ∨ v13 ∨ v18 ∨ v5)
    (c434 : v29 ∨ ¬v27 ∨ v48 ∨ v41 ∨ v34 ∨ v33 ∨ v47 ∨ v26 ∨ v22 ∨ v15 ∨ v20 ∨ v28 ∨ v21 ∨ v49)
    (c465 : ¬v26 ∨ v33 ∨ v25 ∨ v20 ∨ v32 ∨ v18 ∨ v19 ∨ v27)
    (c520 : v30 ∨ ¬v17 ∨ v27 ∨ v32 ∨ v24 ∨ v10 ∨ v11 ∨ v19 ∨ v18 ∨ v13 ∨ v16 ∨ v20 ∨ v31 ∨ v23)
    (c535 : v36 ∨ ¬v43 ∨ v22 ∨ v7 ∨ v28 ∨ v23 ∨ v6 ∨ v1 ∨ v29 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v49)
    (c552 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v34 ∨ v27 ∨ v42 ∨ v29)
    (c555 : v23 ∨ v16 ∨ v24 ∨ v18 ∨ v25 ∨ ¬v17 ∨ v10 ∨ v11)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c566 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c598 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v27 ∨ v28)
    (c626 : v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c644 : v23 ∨ v10 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c668 : v31 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c689 : ¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c746 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c776 : v12 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c780 : v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c787 : ¬v20 ∨ ¬v24 ∨ ¬v26 ∨ v30 ∨ v31)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c811 : ¬v13 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24)
    (c817 : v35 ∨ v16 ∨ ¬v20 ∨ v24 ∨ ¬v25 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c823 : v38 ∨ ¬v16 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c837 : v16 ∨ ¬v3 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c840 : v20 ∨ v15 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c841 : v31 ∨ v19 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c869 : ¬v25 ∨ v15 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33)
    (c872 : v33 ∨ v15 ∨ ¬v18 ∨ v19 ∨ ¬v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c873 : ¬v24 ∨ v15 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32)
    (c875 : v19 ∨ v15 ∨ ¬v17 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c879 : v19 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c899 : v25 ∨ ¬v19 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c923 : ¬v6 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c938 : v47 ∨ ¬v6 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c946 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c960 : v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c971 : ¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1002 : v30 ∨ ¬v19 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v32 ∨ v33 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c1005 : v3 ∨ ¬v11 ∨ v16 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1026 : ¬v10 ∨ ¬v26 ∨ ¬v27 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1027 : v49 ∨ v10 ∨ v17 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1028 : v49 ∨ ¬v26 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1033 : v44 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1034 : v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1044 : v22 ∨ ¬v13 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1055 : v41 ∨ v26 ∨ v27 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1057 : v23 ∨ ¬v4 ∨ v24 ∨ v25 ∨ v31 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c1065 : v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v32 ∨ ¬v41 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25) ∧ (¬v12 ∨ v6 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v48 ∨ v49) ∧ (v46 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ ¬v2 ∨ ¬v10 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v28 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v25 ∨ v18 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33) ∧ (v33 ∨ ¬v10 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34) ∧ (v28 ∨ v10 ∨ ¬v18 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (v10 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v23 ∨ v10 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v48) := by
  have c1066 : v45 ∨ v26 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v27 := by
      rcases c1055 with a|a|a|a|a|a|a|a|a|a
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
    have u2 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    rcases c1065 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1067 : v49 ∨ ¬v25 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v26 := by
      rcases c1066 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u7 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u8 : v40 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v35 := by
      rcases c946 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v16 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u21 : ¬v20 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u20
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u22 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u23 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a n8
      · exact absurd a u15
    have u24 : v21 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u23 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
    have u25 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v10 := by
      rcases c859 with a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u5
      · exact absurd a u6
    have u28 : v14 := by
      rcases c626 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd u24 a
      · exact absurd a u7
      · exact absurd a u6
    have u29 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u26
    have u30 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v4 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u29 a
      · exact a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n4
    have u33 : v2 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u27
      · exact absurd a u32
    rcases c16 with a|a|a
    · exact absurd u33 a
    · exact absurd u29 a
    · exact absurd u23 a
  have c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n0 a
    rcases c882 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1069 : ¬v26 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v27 := by
      rcases c119 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
    have u2 : v10 := by
      rcases c644 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c1026 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n18
  have c1070 : v24 ∨ v23 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c1067 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v26 := by
      rcases c1066 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v40 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v4 := by
      rcases c1057 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u17 : v22 := by
      rcases c1069 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u18 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v19 := by
      rcases c899 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u18 a
      · exact a
    rcases c882 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1071 : v47 ∨ v24 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c1067 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u2 : v26 := by
      rcases c1066 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v40 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u4 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u6 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : v23 := by
      rcases c1070 with a|a|a|a|a|a|a|a|a|a|a
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
    have u13 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u12 a
    have u15 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u7
    have u16 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u7
    have u17 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
    have u18 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u22 a
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
  have c1072 : v48 ∨ v24 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c1067 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v26 := by
      rcases c1066 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u4 : v40 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v28 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
    have u14 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u2 a
    have u16 : ¬v23 := by
      rcases c105 with a|a|a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
    have u17 : ¬v19 := by
      rcases c689 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u11
    have u18 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u11
    have u19 : ¬v4 := by
      rcases c1057 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v17 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u21 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u22 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u20 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u22
  have c1073 : v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c1067 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v24 := by
      rcases c1072 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u4 : v26 := by
      rcases c1066 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd u4 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u8 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v35 := by
      rcases c946 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
    have u10 : v40 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
    have u22 : ¬v20 := by
      rcases c787 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact absurd a u19
      · exact absurd a u17
    have u23 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u19
      · exact a
    have u24 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u16
    rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u26 a
    · exact absurd a u25
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
  have c1074 : v25 ∨ ¬v24 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v20 := by
      rcases c787 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n12
    have u6 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact a
    have u9 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v33 := by
      rcases c465 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u1
    have u12 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u11 a
    rcases c263 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n12
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a u4
  have c1075 : ¬v32 ∨ ¬v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n1 a
      · exact a
    rcases c235 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
  have c1076 : ¬v26 ∨ v23 ∨ v25 ∨ v28 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v32 := by
      rcases c1075 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
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
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v24 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u15 : ¬v19 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u16 : v22 := by
      rcases c1069 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u17 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u18 : ¬v27 := by
      rcases c94 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n0 a
    have u19 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u17 a
      · exact a
    rcases c465 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u18
  have c1077 : v19 ∨ v25 ∨ ¬v26 ∨ v28 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v32 := by
      rcases c1075 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v24 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u11 : v23 := by
      rcases c1076 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
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
    have u12 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
    have u14 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u15 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u14 a
      · exact a
    rcases c465 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u13
  have c1078 : v25 ∨ ¬v26 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v32 := by
      rcases c1075 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
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
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v24 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u15 : ¬v19 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u16 : v28 := by
      rcases c1077 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v23 := by
      rcases c105 with a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact a
    have u18 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u19 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n1 a
    have u20 : ¬v20 := by
      rcases c841 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v18 := by
      rcases c465 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a u19
    have u22 : v15 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n2
    rcases c62 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  have c1079 : v49 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v6 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n0
    rcases c960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n8 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n0
  have c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
  have c1081 : v25 ∨ v19 ∨ v24 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v26 := by
      rcases c1078 with a|a|a|a|a|a|a|a|a|a
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
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v12 := by
      rcases c1079 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
    have u18 : ¬v17 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n0
    rcases c1027 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1082 : v25 ∨ v24 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c1078 with a|a|a|a|a|a|a|a|a|a
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
    have u2 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v19 := by
      rcases c1081 with a|a|a|a|a|a|a|a|a|a|a
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
    have u12 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v10 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u15 a
      · exact a
    rcases c255 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u17
  have c1083 : v45 ∨ ¬v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v36 ∨ v39 ∨ v42 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
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
    have u4 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v23 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u3
    have u7 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    have u9 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u10 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
    have u11 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
    have u12 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u15 : v35 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n11
      · exact absurd a n14
    have u16 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u15 a
      · exact a
    rcases c552 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u15 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a n5
  have c1084 : v11 ∨ v10 ∨ v13 ∨ v14 ∨ v19 ∨ ¬v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u4 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u2
    have u5 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n16
    have u6 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v18 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n14
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n11
  have c1085 : v46 ∨ v25 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c1075 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v24 := by
      rcases c1082 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v26 := by
      rcases c1078 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v19 := by
      rcases c1083 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u16 : v12 := by
      rcases c1079 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v23 := by
      rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u15
      · exact a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u24 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u7
    have u25 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd u13 a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u9
      · exact a
    have u26 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a n4
      · exact a
      · exact absurd a u9
    have u27 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
    have u30 : v5 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u15
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd a u27
      · exact a
    have u31 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a u3
    rcases c18 with a|a|a
    · exact absurd u26 a
    · exact absurd u30 a
    · exact absurd u31 a
  have c1086 : v48 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v45 := by
      rcases c168 with a|a
      · exact a
      · exact absurd n13 a
    have u2 : v12 := by
      rcases c1079 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n14
      · exact a
      · exact absurd a n6
    have u10 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n5
    have u11 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a u1
    have u12 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n17
      · exact absurd a n12
      · exact absurd a n5
    have u13 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u12 a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a n17
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd u12 a
    · exact absurd a u5
    · exact absurd a u3
  have c1087 : ¬v12 ∨ v6 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n11
      · exact a
      · exact absurd a n7
    have u6 : ¬v21 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n6
    have u8 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u7 a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n13
    · exact absurd a n12
    · exact absurd a u4
    · exact absurd u7 a
    · exact absurd a u3
    · exact absurd a u1
  have c1088 : v45 ∨ ¬v24 ∨ v35 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v25 := by
      rcases c1085 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u7 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u8 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v19 := by
      rcases c1086 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u18 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v6 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v12 := by
      rcases c1087 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v11 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u17 a
      · exact a
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u20
    have u26 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v3 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
    have u29 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a n4
      · exact a
      · exact absurd a u14
    have u30 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
    rcases c17 with a|a|a
    · exact absurd u29 a
    · exact absurd u28 a
    · exact absurd u30 a
  have c1089 : v49 ∨ v26 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c1088 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v25 := by
      rcases c1085 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v32 := by
      rcases c1075 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n0
    have u9 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
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
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
    have u15 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v22 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
    have u20 : ¬v23 := by
      rcases c375 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u10
    have u21 : v10 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u6
    have u27 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a n4
      · exact a
      · exact absurd a u10
    have u28 : ¬v4 := by
      rcases c18 with a|a|a
      · exact absurd u27 a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u27 a
      · exact absurd u26 a
      · exact a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u29
    · exact absurd a n6
    · exact absurd a u28
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a n7
  have c1090 : v35 ∨ v10 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c1088 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v25 := by
      rcases c1085 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v26 := by
      rcases c1089 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
    have u7 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v32 := by
      rcases c1075 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v17 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v13 := by
      rcases c811 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a u1
    have u24 : v11 := by
      rcases c520 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u17 a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u7
    have u25 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v3 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
    have u28 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a n3
      · exact a
      · exact absurd a u14
    have u29 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u6
    rcases c17 with a|a|a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd u29 a
  have c1091 : v46 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v34 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v24 := by
      rcases c1088 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v25 := by
      rcases c1085 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v26 := by
      rcases c1089 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u10 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u11 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u12 : v10 := by
      rcases c1090 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u18 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
    have u19 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u9
    have u20 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n3
      · exact a
      · exact absurd a u5
    have u21 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
    have u22 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd u19 a
    · exact absurd a u16
    · exact absurd a u13
  have c1092 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v35 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v41 := by
      rcases c1073 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n5
  have c1093 : ¬v26 ∨ ¬v2 ∨ ¬v10 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v4 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u5 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    rcases c998 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1094 : v22 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v20 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v15 := by
      rcases c434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n8 a
      · exact absurd a n15
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n16
    rcases c307 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u2 a
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
  have c1095 : v29 ∨ ¬v10 ∨ v16 ∨ v20 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n12
      · exact a
      · exact absurd a n7
    have u14 : ¬v6 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u13 a
      · exact a
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u15 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n11
    have u16 : ¬v26 := by
      rcases c1093 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd u15 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u17 : v22 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u18 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd u17 a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v19 := by
      rcases c899 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u20 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u16
    have u21 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u16
      · exact a
      · exact absurd a n15
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a u12
    have u22 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n14
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n9
      · exact absurd a u10
    rcases c18 with a|a|a
    · exact absurd u13 a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1096 : ¬v28 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v26 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
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
    rcases c116 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u1 a
  have c1097 : v34 ∨ ¬v10 ∨ v16 ∨ v20 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n11
      · exact a
      · exact absurd a n7
    have u11 : ¬v6 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u10 a
      · exact a
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n0
    have u13 : ¬v28 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c1095 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u13
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
  have c1098 : v22 ∨ ¬v2 ∨ ¬v10 ∨ v18 ∨ v23 ∨ v24 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v28 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v26 := by
      rcases c1093 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v25 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c118 with a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
  have c1099 : v34 ∨ ¬v10 ∨ v16 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n6
    have u12 : ¬v6 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u11 a
      · exact a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v20 := by
      rcases c1097 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
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
      · exact absurd a n15
    have u14 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v22 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u19 : ¬v27 := by
      rcases c1098 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u20 : v28 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u21 : v26 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u17
      · exact a
      · exact absurd a u19
    have u22 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u20 a
      · exact absurd u21 a
      · exact a
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c1100 : v34 ∨ ¬v10 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v16 := by
      rcases c1099 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
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
    have u9 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v22 := by
      rcases c629 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u6
    have u17 : v27 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u16 a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd u14 a
      · exact absurd u17 a
      · exact a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a n8
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u19
  have c1101 : v11 ∨ v12 ∨ v13 ∨ ¬v22 ∨ ¬v23 ∨ v24 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u3 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u4 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u5 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u6 : ¬v19 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
    have u7 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u2
    have u8 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n10
    have u9 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n9
    rcases c30 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd u5 a
  have c1102 : ¬v25 ∨ v18 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1103 : v33 ∨ ¬v10 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v23 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
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
      · exact absurd a n13
    have u9 : ¬v22 := by
      rcases c1101 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v25 := by
      rcases c1102 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u18 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : v27 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u18 a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u10
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u20 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u8 a
    rcases c434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u19 a
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a n13
  have c1104 : v44 ∨ v10 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c228 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u2
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u13 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a u5
    have u14 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u12 a
    have u15 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u12 a
    have u16 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u12 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n15
  have c1105 : v19 ∨ v15 ∨ v18 ∨ ¬v22 ∨ ¬v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v10 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u2
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
    have u6 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v17 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u13 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a u12
    have u15 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u13 a
    have u16 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u13 a
    have u17 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u13 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd u3 a
    · exact absurd a n12
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a n17
  have c1106 : v18 ∨ v19 ∨ ¬v22 ∨ ¬v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v10 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u3
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
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v15 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
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
    have u11 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a u11
    rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u14 a
    · exact absurd u13 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n14
    · exact absurd a n15
  have c1107 : v27 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u4 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u5 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u6 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u4 a
      · exact a
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1108 : ¬v18 ∨ v19 ∨ ¬v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    rcases c872 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c1109 : v24 ∨ ¬v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v10 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
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
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v22 := by
      rcases c1104 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u10 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v18 := by
      rcases c1108 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c1106 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd u7 a
    · exact absurd n1 a
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
  have c1110 : ¬v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v26 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
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
    have u2 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u5 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1111 : ¬v28 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1112 : v28 ∨ v10 ∨ ¬v18 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n8
      · exact absurd a u3
    have u5 : ¬v4 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n14
    have u6 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact a
    rcases c535 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n13 a
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n17
    · exact absurd a n18
  have c1113 : v44 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n2
    have u8 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u10 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u11 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n13
  have c1114 : v10 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v17 := by
      rcases c1113 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v11 := by
      rcases c555 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
    have u4 : v9 := by
      rcases c635 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c45 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1115 : v23 ∨ v10 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v13 := by
      rcases c811 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
    have u4 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n10
    have u5 : v11 := by
      rcases c520 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n0
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n13
      · exact a
      · exact absurd a n7
    rcases c1013 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd u8 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n13
    · exact absurd a n14
  exact ⟨c1068, c1075, c1080, c1087, c1091, c1092, c1093, c1096, c1102, c1103, c1107, c1110, c1111, c1112, c1114, c1115⟩
