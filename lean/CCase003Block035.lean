import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1750-1799 of the 2559-step refutation of ccase003: 134 core clauses and 84 earlier-derived ones give 21 more. -/
theorem CCase003_block035
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c19 : ¬v2 ∨ ¬v4 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
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
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
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
    (c80 : ¬v20 ∨ ¬v21)
    (c81 : v16 ∨ v15 ∨ v17 ∨ v20 ∨ v19 ∨ v18 ∨ v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c138 : ¬v35 ∨ ¬v31)
    (c146 : ¬v37 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c161 : ¬v39 ∨ ¬v40)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c170 : ¬v47 ∨ ¬v43)
    (c175 : ¬v47 ∨ ¬v44)
    (c179 : ¬v47 ∨ ¬v45)
    (c182 : ¬v47 ∨ ¬v46)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c219 : v43 ∨ v36 ∨ v27 ∨ v32 ∨ v29 ∨ v33 ∨ v34 ∨ v42 ∨ v28 ∨ v25 ∨ ¬v35 ∨ v39 ∨ v48 ∨ v49)
    (c235 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v40 ∨ v33 ∨ v48 ∨ v49)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c283 : v43 ∨ ¬v8 ∨ v15 ∨ v44 ∨ v21 ∨ v14 ∨ v12 ∨ v1 ∨ v5 ∨ v9 ∨ v19 ∨ v13 ∨ v2 ∨ v49)
    (c294 : v7 ∨ v6 ∨ v21 ∨ v13 ∨ v20 ∨ v15 ∨ v8 ∨ ¬v14)
    (c312 : v23 ∨ v33 ∨ v25 ∨ v4 ∨ v31 ∨ v32 ∨ v17 ∨ v19 ∨ ¬v24 ∨ v10 ∨ v26 ∨ v16 ∨ v3 ∨ v2)
    (c323 : ¬v25 ∨ v32 ∨ v33 ∨ v26 ∨ v24 ∨ v31 ∨ v17 ∨ v18)
    (c329 : v10 ∨ v12 ∨ v17 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v4 ∨ v3)
    (c333 : ¬v16 ∨ v23 ∨ v1 ∨ v21 ∨ v3 ∨ v27 ∨ v15 ∨ v22 ∨ v17 ∨ v20 ∨ v2 ∨ v10 ∨ v9 ∨ v13)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c352 : ¬v11 ∨ v19 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v18 ∨ v10)
    (c353 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v28 ∨ v41 ∨ v34 ∨ v29)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c382 : v29 ∨ ¬v21 ∨ v28 ∨ v24 ∨ v15 ∨ v8 ∨ v27 ∨ v14 ∨ v34 ∨ v16 ∨ v20 ∨ v17 ∨ v10 ∨ v35)
    (c393 : v14 ∨ v20 ∨ v5 ∨ v19 ∨ v21 ∨ v6 ∨ v12 ∨ ¬v13)
    (c404 : v36 ∨ v29 ∨ v37 ∨ v24 ∨ v31 ∨ ¬v30 ∨ v38 ∨ v23)
    (c407 : ¬v39 ∨ v32 ∨ v40 ∨ v45 ∨ v33 ∨ v46 ∨ v38 ∨ v31)
    (c421 : ¬v47 ∨ v40 ∨ v46 ∨ v6 ∨ v39 ∨ v41 ∨ v5 ∨ v48)
    (c422 : ¬v47 ∨ v40 ∨ v5 ∨ v33 ∨ v36 ∨ v32 ∨ v6 ∨ v43 ∨ v46 ∨ v34 ∨ v39 ∨ v1 ∨ v48 ∨ v49)
    (c435 : ¬v18 ∨ v25 ∨ v11 ∨ v26 ∨ v33 ∨ v31 ∨ v8 ∨ v19 ∨ v10 ∨ v15 ∨ v32 ∨ v16 ∨ v22 ∨ v17)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c467 : v9 ∨ v10 ∨ v31 ∨ v25 ∨ v18 ∨ v2 ∨ v3 ∨ v4 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v11 ∨ v32 ∨ v33)
    (c470 : ¬v4 ∨ v3 ∨ v45 ∨ v46 ∨ v10 ∨ v11 ∨ v12 ∨ v5)
    (c477 : v33 ∨ v26 ∨ v32 ∨ v4 ∨ v17 ∨ v3 ∨ v10 ∨ v34 ∨ v19 ∨ v13 ∨ v5 ∨ v20 ∨ ¬v12 ∨ v11)
    (c484 : ¬v47 ∨ v40 ∨ v5 ∨ v46 ∨ v39 ∨ v4 ∨ v41 ∨ v48)
    (c498 : v43 ∨ ¬v30 ∨ v35 ∨ v45 ∨ v34 ∨ v22 ∨ v29 ∨ v37 ∨ v44 ∨ v38 ∨ v41 ∨ v23 ∨ v27 ∨ v31)
    (c505 : v43 ∨ v6 ∨ v20 ∨ v10 ∨ v1 ∨ ¬v7 ∨ v3 ∨ v2 ∨ v15 ∨ v14 ∨ v21 ∨ v13 ∨ v45 ∨ v49)
    (c514 : v44 ∨ ¬v17 ∨ v26 ∨ v24 ∨ v25 ∨ v10 ∨ v45 ∨ v46 ∨ v12 ∨ v19 ∨ v18 ∨ v3 ∨ v9 ∨ v16)
    (c515 : v36 ∨ v37 ∨ v25 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v16 ∨ v15 ∨ v31 ∨ v39 ∨ v21 ∨ v22 ∨ v32)
    (c516 : v15 ∨ v27 ∨ v25 ∨ v1 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v12 ∨ v18 ∨ v26)
    (c552 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v34 ∨ v27 ∨ v42 ∨ v29)
    (c553 : v43 ∨ ¬v1 ∨ v44 ∨ v8 ∨ v7 ∨ v2 ∨ v9 ∨ v14)
    (c560 : ¬v47 ∨ v33 ∨ v3 ∨ v4 ∨ v25 ∨ v27 ∨ v40 ∨ v5 ∨ v38 ∨ v26 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c561 : v43 ∨ v36 ∨ v48 ∨ v27 ∨ v29 ∨ v33 ∨ ¬v41 ∨ v20 ∨ v40 ∨ v34 ∨ v42 ∨ v21 ∨ v19 ∨ v49)
    (c568 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c594 : v18 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c598 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v27 ∨ v28)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c637 : ¬v11 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c852 : v28 ∨ v22 ∨ ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c855 : v28 ∨ v19 ∨ v22 ∨ ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c921 : ¬v35 ∨ v22 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c1005 : v3 ∨ ¬v11 ∨ v16 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1134 : ¬v13 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1146 : v2 ∨ v4 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1371 : v33 ∨ ¬v17 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v34)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1446 : v12 ∨ v6 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1605 : v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49)
    (c1622 : ¬v35 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v45 ∨ v49)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1662 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1765 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v28)
    (c1789 : v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1816 : ¬v28 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c1856 : ¬v9 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17)
    (c1857 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1914 : v37 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v35 ∨ v36 ∨ v41 ∨ v44)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1945 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1961 : ¬v24 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v31)
    (c1984 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31)
    (c2017 : ¬v36 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2096 : v21 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v19 ∨ v20 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2127 : v21 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v44 ∨ v45)
    (c2158 : v28 ∨ v47 ∨ v48 ∨ v49)
    (c2162 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v34 ∨ v41 ∨ v48)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2170 : ¬v29 ∨ v15 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2198 : v15 ∨ v47 ∨ v48 ∨ v49)
    (c2203 : v32 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v35 ∨ v36 ∨ ¬v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c2221 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2222 : v47 ∨ v48 ∨ v49)
    (c2224 : ¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2234 : v20 ∨ ¬v3 ∨ v10 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2263 : v23 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2273 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v40 ∨ v41 ∨ ¬v47 ∨ v48)
    (c2287 : ¬v41 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48)
    (c2298 : v1 ∨ ¬v33 ∨ v48 ∨ v49)
    (c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2311 : ¬v33 ∨ v48 ∨ v49)
    (c2314 : ¬v35 ∨ ¬v22 ∨ ¬v25)
    (c2315 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2318 : ¬v22 ∨ ¬v25 ∨ v31 ∨ v48 ∨ v49)
    (c2328 : v28 ∨ ¬v22 ∨ v23 ∨ ¬v30 ∨ v31 ∨ v48 ∨ v49)
    (c2333 : ¬v4 ∨ v1 ∨ ¬v3 ∨ v32 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v48 ∨ v49)
    (c2336 : v24 ∨ v17 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v48 ∨ v49)
    (c2337 : ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49)
    (c2338 : ¬v10 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49)
    : (v23 ∨ ¬v22 ∨ ¬v30 ∨ v31 ∨ v48 ∨ v49) ∧ (v18 ∨ v4 ∨ v10 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v48 ∨ v49) ∧ (¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46) ∧ (¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46) ∧ (v20 ∨ ¬v3 ∨ ¬v4 ∨ v27 ∨ v34 ∨ v41 ∨ v48) ∧ (v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18) ∧ (v4 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v35 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42) ∧ (v34 ∨ v10 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v48 ∨ v49) ∧ (¬v41 ∨ ¬v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49) ∧ (v41 ∨ v10 ∨ v17 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v48) ∧ (v7 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (v20 ∨ ¬v1 ∨ ¬v7 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48) ∧ (v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45) ∧ (v17 ∨ v10 ∨ ¬v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49) ∧ (v1 ∨ v7 ∨ v15 ∨ v21 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v48 ∨ v49) ∧ (v30 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v37 ∨ v44) ∧ (¬v2 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (v39 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v41 ∨ v48 ∨ v49) ∧ (v1 ∨ v2 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49) ∧ (v1 ∨ v4 ∨ ¬v9 ∨ v15 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49) := by
  have c2339 : v23 ∨ ¬v22 ∨ ¬v30 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u14 : v28 := by
      rcases c2328 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v26 := by
      rcases c1816 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u16 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v38 := by
      rcases c2203 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
    have u19 : v37 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u2
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a u18
      · exact absurd a n0
    have u20 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v39 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n3
    have u23 : ¬v17 := by
      rcases c2337 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v21 := by
      rcases c2336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u23
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v10 := by
      rcases c2338 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
    have u28 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u11
    have u29 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u30 : ¬v4 := by
      rcases c2333 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd u28 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
    have u31 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u30
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u32 : v5 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u30
      · exact absurd a u20
      · exact absurd a n4
    rcases c15 with a|a|a
    · exact absurd u28 a
    · exact absurd u31 a
    · exact absurd u32 a
  have c2340 : v18 ∨ v4 ∨ v10 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u3
    have u5 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u3
    have u6 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u3
    have u7 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
    have u8 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v6 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v21 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v3 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v5 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
    rcases c33 with a|a|a
    · exact absurd u14 a
    · exact absurd u13 a
    · exact absurd u10 a
  have c2341 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    rcases c407 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n1
  have c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2315 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2343 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u4 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n4
    have u5 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    rcases c809 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n0
  have c2344 : v48 ∨ ¬v4 ∨ v10 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v34 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u7 : ¬v3 := by
      rcases c2343 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u8 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n8
      · exact a
    have u9 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v26 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
    have u14 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n9
    have u16 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u15 a
    have u17 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u15 a
    have u18 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u9
    have u19 : v11 := by
      rcases c1080 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u18
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v12 := by
      rcases c514 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u9
    rcases c53 with a|a
    · exact absurd u19 a
    · exact absurd u20 a
  have c2345 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u4 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n4
    have u5 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    rcases c809 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n0
  have c2346 : v25 ∨ v3 ∨ v10 ∨ v14 ∨ ¬v21 ∨ v27 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a u2
    have u5 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
    have u6 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a n6
    have u7 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u4 a
    rcases c1365 with a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u7
  have c2347 : v25 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v20 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
    have u2 : ¬v3 := by
      rcases c2345 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v5 := by
      rcases c470 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u6
      · exact a
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u13 : ¬v21 := by
      rcases c2346 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u9
    have u14 : v19 := by
      rcases c1131 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a n4
      · exact absurd a u13
    have u15 : v24 := by
      rcases c2344 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u16 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd u15 a
      · exact absurd a n0
    have u20 : v26 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd u14 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
    rcases c98 with a|a|a
    · exact absurd u20 a
    · exact absurd u15 a
    · exact absurd u19 a
  have c2349 : v8 ∨ v1 ∨ v7 ∨ v9 ∨ v14 ∨ v21 ∨ ¬v23 ∨ ¬v24 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd n6 a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n7 a
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v15 := by
      rcases c1765 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u2
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v35 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v42 := by
      rcases c852 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd u6 a
      · exact absurd a n9
      · exact a
    have u9 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u4
    rcases c151 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c2350 : v14 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v10 ∨ v20 ∨ v21 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v6 := by
      rcases c2347 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v3 := by
      rcases c2345 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v1 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u12 : v24 := by
      rcases c2344 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u13 : ¬v23 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd u12 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v30 := by
      rcases c2263 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u15 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v22 := by
      rcases c2339 with a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u14 a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n14
    have u19 : v28 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n8
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n14
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u19 a
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a n11
    · exact absurd a n6
  have c2351 : v25 ∨ ¬v4 ∨ v10 ∨ ¬v12 ∨ v20 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v3 := by
      rcases c2345 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v21 := by
      rcases c2350 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
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
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v28 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u16 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u12
    have u17 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd u16 a
      · exact absurd a n0
    rcases c100 with a|a|a
    · exact absurd u17 a
    · exact absurd u14 a
    · exact absurd u16 a
  have c2352 : v48 ∨ ¬v4 ∨ v10 ∨ v20 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c2345 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u7 : v6 := by
      rcases c2347 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u8 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u9 : ¬v12 := by
      rcases c2351 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u10 : v11 := by
      rcases c470 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v21 := by
      rcases c2350 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u16 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v28 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u20 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u17
    have u21 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd u20 a
      · exact absurd a n4
    rcases c100 with a|a|a
    · exact absurd u21 a
    · exact absurd u19 a
    · exact absurd u20 a
  have c2353 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n9
    have u2 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v26 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2354 : ¬v23 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v21 ∨ ¬v24 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v15 := by
      rcases c1765 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u2
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v1 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v35 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
    have u13 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u3
    rcases c2017 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n11
  have c2355 : v25 ∨ v3 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v18 ∨ v20 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v4 := by
      rcases c2352 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u7 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v26 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n11
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u13
    have u17 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u3
    have u18 : v23 := by
      rcases c312 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd u17 a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u16
    have u19 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u18 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
    have u21 : v11 := by
      rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u3
    have u22 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v7 := by
      rcases c2354 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd u17 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u24 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd n2 a
    have u25 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd n2 a
    have u26 : v40 := by
      rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n13
    have u27 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v29 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u19
      · exact a
      · exact absurd a n3
      · exact absurd a u2
    have u31 : ¬v35 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n11
      · exact absurd a u27
      · exact absurd a n12
      · exact absurd a u28
    have u32 : v30 := by
      rcases c515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a n0
      · exact absurd a u31
      · exact absurd a u20
      · exact absurd u30 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a n10
    rcases c124 with a|a
    · exact absurd u30 a
    · exact absurd u32 a
  have c2356 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n3
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    rcases c329 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
  have c2358 : v18 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ ¬v17 ∨ v25 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n5 a
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n5 a
    · exact absurd a n10
    · exact absurd a n11
  have c2359 : v41 ∨ v3 ∨ v10 ∨ v12 ∨ v20 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c2352 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v11 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u5
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n9
    have u14 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u6
    have u15 : ¬v18 := by
      rcases c2355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v17 := by
      rcases c2358 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
    have u17 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u16
    have u18 : v19 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a n2
      · exact a
    have u19 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v26 := by
      rcases c574 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u21 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd u17 a
      · exact absurd a n5
    rcases c98 with a|a|a
    · exact absurd u20 a
    · exact absurd u17 a
    · exact absurd u21 a
  have c2360 : v31 ∨ v3 ∨ v10 ∨ v20 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v4 := by
      rcases c2352 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u10 : v12 := by
      rcases c2359 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u8
    have u17 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
    have u18 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u6
    have u24 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u20
    have u25 : ¬v26 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
    have u26 : v23 := by
      rcases c312 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd u24 a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u23
    have u27 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u26 a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u24 a
    have u29 : v5 := by
      rcases c477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u22
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a u11
    have u30 : ¬v1 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u31 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u17 a
    have u32 : v35 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u33 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
    have u36 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u30
      · exact absurd a u27
      · exact absurd a u34
      · exact absurd a u12
      · exact absurd a u19
    rcases c2017 with a|a|a|a|a|a|a
    · exact absurd u36 a
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u35
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n10
  have c2361 : v41 ∨ v10 ∨ v20 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v3 := by
      rcases c2360 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v4 := by
      rcases c2345 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u5 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u7 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    have u8 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact a
    have u11 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n7
    have u12 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u11 a
    rcases c809 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a n2
  have c2362 : v4 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    rcases c637 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2363 : v7 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v25 ∨ v27 ∨ v31 ∨ v39 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u2 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n9
    have u3 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n6 a
    have u4 : v35 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u3
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    rcases c852 with a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd u4 a
    · exact absurd a n11
    · exact absurd a n12
  have c2364 : ¬v35 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    rcases c353 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
  have c2365 : v42 ∨ v7 ∨ v8 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v35 := by
      rcases c2364 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v22 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
    have u5 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v24 := by
      rcases c2039 with a|a|a
      · exact absurd u5 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : v13 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v29 := by
      rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u2
    have u15 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v25 := by
      rcases c1281 with a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a u7
      · exact a
      · exact absurd a n4
    rcases c2361 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n11
  have c2366 : ¬v28 ∨ v1 ∨ ¬v3 ∨ v8 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ v21 ∨ v27 ∨ v32 ∨ v34 ∨ ¬v35 ∨ v36 ∨ v37 ∨ v39 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : v20 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u5 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
    have u6 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u5 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v25 := by
      rcases c2314 with a|a|a
      · exact absurd n12 a
      · exact absurd u5 a
      · exact a
    have u10 : v4 := by
      rcases c2362 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u11 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c1856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
    rcases c2164 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c2367 : v27 ∨ ¬v3 ∨ v10 ∨ v12 ∨ v25 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v20 := by
      rcases c2361 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v26 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
    have u16 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n10
    have u17 : v4 := by
      rcases c2362 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u18 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
    have u19 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u20 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact a
    have u21 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u22 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u23 : ¬v9 := by
      rcases c1856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u24 : ¬v8 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u8
    have u25 : v40 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u21
      · exact absurd a n9
    have u26 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v24 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u27
      · exact absurd a n10
    have u30 : v28 := by
      rcases c2365 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a u26
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u31 : ¬v35 := by
      rcases c2366 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n9
    have u32 : v23 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a u29
      · exact absurd a n0
      · exact absurd a u31
      · exact absurd a u26
      · exact absurd a n8
      · exact absurd a u10
    have u33 : ¬v22 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u32 a
    have u34 : v29 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u33
      · exact a
      · exact absurd a u24
      · exact absurd a u4
    rcases c2170 with a|a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u4
    · exact absurd a u33
    · exact absurd a u29
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd u30 a
  have c2368 : v27 ∨ ¬v3 ∨ v10 ∨ v25 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v20 := by
      rcases c2361 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
    have u14 : ¬v26 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
    have u15 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
    have u16 : v4 := by
      rcases c2362 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
    have u18 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u16 a
    have u19 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact a
    have u20 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u16 a
    have u21 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u16 a
    have u22 : ¬v8 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u7
    have u23 : v12 := by
      rcases c2367 with a|a|a|a|a|a|a|a|a|a|a
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
    have u24 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u23 a
      · exact a
    rcases c516 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u17
    · exact absurd u23 a
    · exact absurd a u6
    · exact absurd a u14
  have c2369 : v27 ∨ v10 ∨ v25 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v20 := by
      rcases c2361 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v26 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
    have u17 : ¬v3 := by
      rcases c2368 with a|a|a|a|a|a|a|a|a|a
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
    have u18 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u11
    have u19 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact a
      · exact absurd u18 a
      · exact absurd a n2
    have u20 : ¬v22 := by
      rcases c1984 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd u18 a
      · exact absurd a n3
    have u21 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
    have u22 : v13 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u21
    have u23 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u7
    have u29 : v5 := by
      rcases c470 with a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u26
      · exact a
    have u30 : ¬v1 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u31 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u28 a
    have u32 : v35 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u33 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u36 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u30
      · exact absurd a u20
      · exact absurd a u34
      · exact absurd a u24
      · exact absurd a u10
    rcases c2017 with a|a|a|a|a|a|a
    · exact absurd u36 a
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u35
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n8
  have c2370 : v17 ∨ v3 ∨ v10 ∨ v25 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n0
    have u2 : v23 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    rcases c100 with a|a|a
    · exact absurd u2 a
    · exact absurd n4 a
    · exact absurd u1 a
  have c2371 : ¬v17 ∨ v27 ∨ v34 ∨ ¬v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v35 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u9 a
    rcases c561 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n5
  have c2372 : v34 ∨ v10 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v41 := by
      rcases c2369 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v35 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v28 := by
      rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v17 := by
      rcases c2371 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v3 := by
      rcases c2370 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u16 a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u20 : ¬v4 := by
      rcases c2333 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u22 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u21 a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u18 a
      · exact absurd u21 a
      · exact a
    rcases c2287 with a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd u1 a
    · exact absurd a n6
  have c2373 : ¬v41 ∨ ¬v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v35 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v28 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u7 a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
    have u11 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u12 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n1 a
    have u13 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
    have u14 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u13 a
      · exact a
    rcases c561 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd n0 a
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n7
  have c2374 : v41 ∨ v10 ∨ v17 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u2 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n2
    have u5 : v18 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n2
      · exact a
    have u6 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u5 a
      · exact a
    rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c2375 : v7 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v6 := by
      rcases c294 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd u1 a
    have u8 : v1 := by
      rcases c638 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : v2 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u8 a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    rcases c1013 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd u12 a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u11
  have c2376 : v20 ∨ ¬v1 ∨ ¬v7 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n3
    have u5 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n6
    have u6 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u5 a
    rcases c393 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd u5 a
  have c2377 : v22 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v35 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v7 := by
      rcases c2375 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v1 := by
      rcases c2376 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u8 : ¬v8 := by
      rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v29 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n13
    have u10 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v37 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a n9
      · exact a
    rcases c1941 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
  have c2378 : v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n3
    have u2 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
    rcases c2164 with a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c2379 : v41 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v36 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n15
    have u7 : v42 := by
      rcases c2377 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v35 := by
      rcases c2221 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v1 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u14 : ¬v4 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n16
    have u15 : ¬v2 := by
      rcases c2273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n15
    rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u4
  have c2380 : v4 ∨ v1 ∨ ¬v7 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : v5 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
    have u5 : ¬v2 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
    have u6 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u7 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n7
  have c2381 : v17 ∨ v10 ∨ ¬v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v3 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u12 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n0
    have u13 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u12 a
    have u14 : v36 := by
      rcases c2379 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v35 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd n5 a
      · exact a
      · exact absurd a n11
      · exact absurd a u17
    have u19 : v29 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u20 : v7 := by
      rcases c2375 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n12
      · exact absurd a n13
    have u21 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v1 := by
      rcases c2376 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u23 : ¬v11 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n13
    have u24 : v4 := by
      rcases c2380 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd u5 a
      · exact absurd a n12
    have u25 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u24 a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u24 a
    have u27 : v12 := by
      rcases c470 with a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u23
      · exact a
      · exact absurd a u26
    have u28 : v14 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u22
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    rcases c57 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c2382 : v48 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v3 := by
      rcases c2345 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n2 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
    have u2 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n15
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v16 := by
      rcases c81 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
    have u6 : ¬v13 := by
      rcases c1134 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n13
    have u8 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u9 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u10 : v9 := by
      rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a u6
    have u11 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u10 a
      · exact a
    rcases c470 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u8
  have c2383 : v1 ∨ v7 ∨ v15 ∨ v21 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v8 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
    have u8 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n5
    rcases c43 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c2384 : v30 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n0
    rcases c1856 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2385 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : v9 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a n1
    have u4 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u3 a
      · exact a
    rcases c470 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u1
  have c2386 : v39 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v20 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u10 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c1856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
    have u12 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v7 := by
      rcases c2383 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd u12 a
      · exact absurd a n16
      · exact absurd a n17
    have u17 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
    have u18 : v37 := by
      rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u19 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n17
    have u20 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd n2 a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n2 a
    have u22 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u18 a
    rcases c422 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n14
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n16
    · exact absurd a n17
  have c2387 : v2 ∨ v1 ∨ v4 ∨ v9 ∨ v10 ∨ v15 ∨ v17 ∨ v21 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u12 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n6
    have u13 : v8 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u14 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v16 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n1
    have u19 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact a
      · exact absurd a u1
    have u20 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u18 a
      · exact a
    rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd u13 a
    · exact absurd a n5
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n13
    · exact absurd a n14
  have c2388 : v4 ∨ v1 ∨ v2 ∨ v9 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v31 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u7 : ¬v30 := by
      rcases c2387 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u9 : v8 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u10 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v7 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n8
    have u16 : v5 := by
      rcases c283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n16
    have u17 : v6 := by
      rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n16
    rcases c33 with a|a|a
    · exact absurd u16 a
    · exact absurd u15 a
    · exact absurd u17 a
  have c2390 : v1 ∨ v2 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v18 := by
      rcases c2381 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
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
    have u3 : ¬v4 := by
      rcases c2386 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u11 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n4
    have u12 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n8 a
    have u13 : v9 := by
      rcases c2388 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v6 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u19 : ¬v35 := by
      rcases c1622 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n16
    have u20 : v7 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n16
    have u21 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
    have u22 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u18 a
    have u23 : v29 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n16
    have u24 : v40 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
    have u25 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u24 a
      · exact a
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd u23 a
    · exact absurd a u19
    · exact absurd a u25
    · exact absurd a u26
  have c2391 : v1 ∨ v4 ∨ ¬v9 ∨ v15 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v3 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n13
    have u13 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n10
    have u14 : ¬v35 := by
      rcases c1622 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n14
    have u15 : v7 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n14
    have u16 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
    have u18 : v29 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n14
    have u19 : v16 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n3
      · exact a
    have u20 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v25 := by
      rcases c2372 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n13
      · exact absurd a n14
    rcases c2390 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd u23 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u20
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  exact ⟨c2339, c2340, c2341, c2342, c2345, c2356, c2362, c2364, c2372, c2373, c2374, c2375, c2376, c2378, c2381, c2383, c2384, c2385, c2386, c2390, c2391⟩
