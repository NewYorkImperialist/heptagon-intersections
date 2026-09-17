import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 550-599 of the 2559-step refutation of ccase003: 114 core clauses and 45 earlier-derived ones give 20 more. -/
theorem CCase003_block011
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
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
    (c54 : ¬v11 ∨ ¬v13)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
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
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c121 : v23 ∨ v22 ∨ v27 ∨ v28 ∨ v26 ∨ v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c151 : ¬v42 ∨ ¬v36)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c163 : ¬v42 ∨ ¬v39)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c188 : v43 ∨ v44 ∨ v49 ∨ v46 ∨ v45 ∨ v47 ∨ v48)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c277 : v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v7 ∨ v2 ∨ v1 ∨ v49)
    (c281 : ¬v42 ∨ v29 ∨ v33 ∨ v28 ∨ v35 ∨ v21 ∨ v36 ∨ v40 ∨ v49 ∨ v15 ∨ v41 ∨ v47 ∨ v48 ∨ v20)
    (c292 : v21 ∨ v20 ∨ ¬v13 ∨ v14 ∨ v19 ∨ v6 ∨ v12 ∨ v7)
    (c303 : ¬v34 ∨ v41 ∨ v27 ∨ v26 ∨ v35 ∨ v33 ∨ v40 ∨ v28)
    (c314 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v8 ∨ v9 ∨ v28 ∨ v16)
    (c330 : ¬v42 ∨ v29 ∨ v7 ∨ v49 ∨ v30 ∨ v35 ∨ v13 ∨ v8 ∨ v14 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v36)
    (c349 : v36 ∨ ¬v43 ∨ v3 ∨ v16 ∨ v8 ∨ v49 ∨ v7 ∨ v21 ∨ v15 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v1)
    (c365 : ¬v33 ∨ v40 ∨ v27 ∨ v41 ∨ v39 ∨ v34 ∨ v26 ∨ v32)
    (c385 : ¬v8 ∨ v14 ∨ v9 ∨ v21 ∨ v16 ∨ v15 ∨ v1 ∨ v7)
    (c398 : v15 ∨ ¬v9 ∨ v17 ∨ v8 ∨ v10 ∨ v3 ∨ v2 ∨ v16)
    (c413 : v29 ∨ v30 ∨ ¬v22 ∨ v28 ∨ v23 ∨ v15 ∨ v16 ∨ v21)
    (c426 : ¬v42 ∨ v36 ∨ v35 ∨ v48 ∨ v41 ∨ v34 ∨ v29 ∨ v49)
    (c434 : v29 ∨ ¬v27 ∨ v48 ∨ v41 ∨ v34 ∨ v33 ∨ v47 ∨ v26 ∨ v22 ∨ v15 ∨ v20 ∨ v28 ∨ v21 ∨ v49)
    (c535 : v36 ∨ ¬v43 ∨ v22 ∨ v7 ∨ v28 ∨ v23 ∨ v6 ∨ v1 ∨ v29 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v49)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c568 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c605 : ¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c626 : v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c685 : v32 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c689 : ¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c704 : ¬v11 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c729 : v5 ∨ v4 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c746 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31)
    (c776 : v12 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c837 : v16 ∨ ¬v3 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c864 : v16 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c866 : v10 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c869 : ¬v25 ∨ v15 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33)
    (c872 : v33 ∨ v15 ∨ ¬v18 ∨ v19 ∨ ¬v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c873 : ¬v24 ∨ v15 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32)
    (c910 : ¬v32 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40)
    (c929 : ¬v12 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c932 : ¬v19 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c991 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v18 ∨ v19)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1092 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1096 : ¬v28 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1103 : v33 ∨ ¬v10 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1107 : v27 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1110 : ¬v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1111 : ¬v28 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1112 : v28 ∨ v10 ∨ ¬v18 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c1114 : v10 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1115 : v23 ∨ v10 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v48)
    : (¬v22 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34) ∧ (¬v26 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v32 ∨ v33 ∨ v34) ∧ (¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21) ∧ (¬v1 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47) ∧ (¬v13 ∨ ¬v16 ∨ v22 ∨ v23) ∧ (¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21) ∧ (¬v1 ∨ ¬v7 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v47) ∧ (¬v13 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28) ∧ (v2 ∨ v4 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v7 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (v11 ∨ v4 ∨ v10 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41) ∧ (v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48) ∧ (¬v28 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v49 ∨ v7 ∨ v19 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v46 ∨ v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ v4 ∨ v19 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (v35 ∨ v4 ∨ v11 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v32 ∨ v33 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v32 ∨ ¬v42 ∨ v48 ∨ v49) := by
  have c1116 : v28 ∨ ¬v2 ∨ ¬v3 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v37 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    rcases c535 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n9 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1117 : v44 ∨ v10 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
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
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v18 := by
      rcases c1112 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u8 : v25 := by
      rcases c1114 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u8 a
    have u10 : ¬v17 := by
      rcases c1115 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n16
    have u11 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a u10
    have u12 : ¬v2 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
    have u13 : v4 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u13 a
    have u15 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u13 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a n17
  have c1118 : ¬v22 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v27 := by
      rcases c94 with a|a|a
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
  have c1119 : v19 ∨ v24 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c1111 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v22 := by
      rcases c1118 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v23 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : ¬v10 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
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
    rcases c1117 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1120 : v26 ∨ v10 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v25 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1114 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1121 : v24 ∨ v19 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v10 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
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
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v26 := by
      rcases c1119 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u12 : v18 := by
      rcases c1120 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u1
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
    have u16 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a u15
    have u18 : ¬v22 := by
      rcases c872 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd u12 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v4 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u17 a
      · exact a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n8
    have u20 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v28 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u22 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u17 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u20 a
      · exact absurd u17 a
      · exact a
    have u24 : ¬v27 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u25 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u10
    have u26 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n12
      · exact absurd a n7
    rcases c56 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c1122 : v24 ∨ v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v19 := by
      rcases c1121 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v10 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
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
    have u17 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a u7
    have u18 : ¬v4 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u17 a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n8
    have u19 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v28 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u21 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u17 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact a
    have u24 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u19 a
      · exact absurd u17 a
      · exact a
    have u25 : ¬v27 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u26 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
    have u27 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n7
    have u28 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u27 a
    rcases c809 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd u27 a
    · exact absurd a u26
    · exact absurd a u8
  have c1123 : v33 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v23 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
    have u8 : v22 := by
      rcases c1122 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v19 := by
      rcases c1121 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u14 : v28 := by
      rcases c413 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u8 a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    have u15 : ¬v27 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v26 := by
      rcases c95 with a|a|a
      · exact absurd u8 a
      · exact absurd u14 a
      · exact a
    rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u9 a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1124 : v33 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v24 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v15 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact a
    rcases c61 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1125 : v25 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v27 := by
      rcases c434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n14
    rcases c121 with a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n0
  have c1126 : v23 ∨ v10 ∨ v19 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v22 := by
      rcases c1124 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n0
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
    have u2 : v24 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
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
    have u3 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : v28 := by
      rcases c1125 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : ¬v27 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u17 : v4 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c864 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u17 a
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1127 : ¬v26 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c110 with a|a|a
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c1128 : v34 ∨ v19 ∨ v23 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v24 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v26 := by
      rcases c1127 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v10 := by
      rcases c1126 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u8
    have u15 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n9
      · exact a
      · exact absurd a n5
    have u16 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u7
    rcases c18 with a|a|a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd u16 a
  have c1129 : v36 ∨ ¬v10 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
    have u4 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
    have u5 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    have u6 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    have u7 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd n12 a
    · exact absurd a n13
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n16
  have c1130 : v26 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v19 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    rcases c292 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
  have c1132 : v19 ∨ v2 ∨ v7 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v1 := by
      rcases c277 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n17
    have u2 : ¬v6 := by
      rcases c1130 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n8
    rcases c1131 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
  have c1133 : ¬v1 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c991 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
  have c1134 : ¬v13 ∨ ¬v16 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
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
    rcases c753 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
  have c1135 : v36 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v13 := by
      rcases c1134 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n19
      · exact absurd a n12
    have u6 : ¬v11 := by
      rcases c704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n18
    have u7 : v5 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n18
    have u8 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    rcases c1132 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd n16 a
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
  have c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    rcases c385 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
  have c1137 : v7 ∨ v1 ∨ v3 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v36 ∨ v37 ∨ v38 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v8 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    rcases c349 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n10 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n1
  have c1138 : v19 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v16 := by
      rcases c1135 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd n18 a
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : v2 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd n18 a
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u3 : ¬v3 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd n18 a
      · exact absurd a n19
      · exact absurd a n22
      · exact absurd a n23
    have u4 : v1 := by
      rcases c1137 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd n18 a
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n23
    have u5 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact a
    have u6 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n22
    rcases c1131 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
  have c1139 : ¬v1 ∨ ¬v7 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n6
    have u4 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
    rcases c46 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c1140 : v1 ∨ v2 ∨ v4 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n7
    have u2 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c568 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1141 : v26 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c1129 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : v7 := by
      rcases c1138 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v16 := by
      rcases c1135 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u11 : ¬v1 := by
      rcases c1139 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n16
    have u12 : ¬v4 := by
      rcases c864 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u13 : v2 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : ¬v5 := by
      rcases c22 with a|a|a
      · exact absurd u13 a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u13 a
      · exact absurd u9 a
      · exact a
    have u16 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a u7
    have u17 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n17
      · exact absurd a n12
    rcases c56 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c1142 : v27 ∨ v15 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
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
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c1129 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : v21 := by
      rcases c1141 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
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
    have u9 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v14 := by
      rcases c626 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n7
    have u11 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n12
      · exact a
      · exact absurd a n9
    have u15 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n16
    · exact absurd a n11
  have c1143 : v46 ∨ v19 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : v13 := by
      rcases c582 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n10
    have u6 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n11
      · exact a
      · exact absurd a n7
    have u7 : ¬v4 := by
      rcases c18 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    rcases c959 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u5 a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n13
  have c1144 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28 := by
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
    have u3 : ¬v16 := by
      rcases c1134 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n1 a
      · exact a
    rcases c314 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u3
  have c1145 : v34 ∨ v19 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v24 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
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
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v25 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
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
    have u9 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u1 a
    have u11 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v20 := by
      rcases c1143 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v15 := by
      rcases c1142 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v13 := by
      rcases c1144 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u11
    have u18 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n0
    have u19 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u20 : ¬v11 := by
      rcases c704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
    have u21 : v5 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n11
    have u22 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u18 a
    have u24 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u18 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd u3 a
    · exact absurd a n8
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a n13
  have c1146 : v2 ∨ v4 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n6
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v3 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n3
    rcases c663 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1147 : v15 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n9
    have u5 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v2 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u4 a
    have u9 : v12 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c929 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u7
    · exact absurd u4 a
    · exact absurd a u8
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1148 : v33 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v24 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v19 := by
      rcases c1145 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : v25 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u5
    have u10 : ¬v26 := by
      rcases c771 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u12 : v13 := by
      rcases c1147 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u12 a
    rcases c932 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
  have c1149 : ¬v7 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v4 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c959 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1150 : ¬v4 ∨ ¬v5 ∨ v7 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n7
  have c1151 : v2 ∨ ¬v6 ∨ v7 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v1 := by
      rcases c277 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n13
    rcases c1130 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1152 : v11 ∨ v4 ∨ v10 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1153 : v26 ∨ v10 ∨ v13 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n13
    have u10 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v11 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v7 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n12
    have u16 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
    rcases c1151 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u9 a
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd u2 a
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1154 : ¬v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v23 := by
      rcases c1148 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v24 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u14 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
    have u20 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
    have u21 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v10 := by
      rcases c1129 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v13 := by
      rcases c1153 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u22
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u20
      · exact a
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u13
    have u26 : ¬v7 := by
      rcases c1149 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v4 := by
      rcases c1150 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n6
    have u28 : v6 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd u25 a
      · exact a
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u29 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u28 a
    rcases c1151 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd u28 a
    · exact absurd a u26
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd u8 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1155 : ¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    rcases c365 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
  have c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    rcases c593 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
  have c1157 : ¬v28 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v29 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n8
    have u10 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v26 := by
      rcases c685 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v19 := by
      rcases c1111 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u13 a
    rcases c689 with a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd u13 a
    · exact absurd a u15
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u2
  have c1158 : v7 ∨ v6 ∨ ¬v12 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u12 : v28 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u13 : v34 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u11
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    rcases c330 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a u6
  have c1159 : v4 ∨ v6 ∨ v7 ∨ v19 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u6 : ¬v12 := by
      rcases c1158 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
    rcases c959 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1160 : ¬v6 ∨ v7 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v2 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
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
    have u2 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v12 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n7
  have c1161 : v49 ∨ v7 ∨ v19 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v6 := by
      rcases c1160 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u11 : v4 := by
      rcases c1159 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u12 : ¬v5 := by
      rcases c1150 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n0
    have u13 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v28 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u18 : v34 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u19 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u18 a
    rcases c330 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a u4
  have c1162 : v46 ∨ v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c1160 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v4 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    rcases c1150 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n9 a
    · exact absurd a n10
    · exact absurd a n13
  have c1163 : v11 ∨ v4 ∨ v19 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u3 : ¬v32 := by
      rcases c910 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n7
  have c1164 : v35 ∨ v4 ∨ v11 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v32 ∨ v33 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n9 a
      · exact a
    have u6 : ¬v28 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n10
    have u7 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u3
    have u9 : v34 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
    have u10 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n13
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a u7
  have c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n1 a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n3
  exact ⟨c1118, c1127, c1131, c1133, c1134, c1136, c1139, c1144, c1146, c1149, c1152, c1154, c1155, c1156, c1157, c1161, c1162, c1163, c1164, c1165⟩
