import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 400-449 of the 2559-step refutation of ccase003: 126 core clauses and 48 earlier-derived ones give 19 more. -/
theorem CCase003_block008
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
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
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
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
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c146 : ¬v37 ∨ ¬v36)
    (c147 : ¬v38 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c168 : ¬v45 ∨ ¬v43)
    (c171 : ¬v48 ∨ ¬v43)
    (c188 : v43 ∨ v44 ∨ v49 ∨ v46 ∨ v45 ∨ v47 ∨ v48)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c200 : ¬v31 ∨ v29 ∨ v24 ∨ v32 ∨ v28 ∨ v35 ∨ v23 ∨ v38 ∨ v30 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46)
    (c211 : v47 ∨ v12 ∨ v45 ∨ v46 ∨ v5 ∨ v3 ∨ ¬v4 ∨ v11)
    (c231 : v36 ∨ ¬v43 ∨ v42 ∨ v44 ∨ v2 ∨ v7 ∨ v1 ∨ v49)
    (c236 : v3 ∨ v11 ∨ v45 ∨ v46 ∨ v5 ∨ v47 ∨ ¬v4 ∨ v10)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c251 : ¬v25 ∨ v18 ∨ v33 ∨ v26 ∨ v17 ∨ v19 ∨ v24 ∨ v32)
    (c286 : v3 ∨ ¬v2 ∨ v10 ∨ v8 ∨ v9 ∨ v44 ∨ v45 ∨ v1)
    (c317 : ¬v38 ∨ v37 ∨ v32 ∨ v45 ∨ v44 ∨ v31 ∨ v46 ∨ v39)
    (c329 : v10 ∨ v12 ∨ v17 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v4 ∨ v3)
    (c358 : v43 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v30 ∨ v29 ∨ v36 ∨ v38)
    (c363 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v46 ∨ v10 ∨ v4)
    (c366 : ¬v12 ∨ v6 ∨ v19 ∨ v13 ∨ v20 ∨ v11 ∨ v4 ∨ v5)
    (c376 : v36 ∨ v37 ∨ v42 ∨ v44 ∨ ¬v43 ∨ v1 ∨ v2 ∨ v49)
    (c402 : ¬v37 ∨ v36 ∨ v15 ∨ v23 ∨ v30 ∨ v29 ∨ v16 ∨ v32 ∨ v17 ∨ v44 ∨ v39 ∨ v38 ∨ v45 ∨ v46)
    (c414 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v9 ∨ v17 ∨ v8)
    (c418 : ¬v12 ∨ v11 ∨ v6 ∨ v19 ∨ v20 ∨ v13 ∨ v18 ∨ v5)
    (c442 : v4 ∨ v6 ∨ v19 ∨ v13 ∨ v11 ∨ ¬v12 ∨ v5 ∨ v18)
    (c447 : v29 ∨ ¬v28 ∨ v35 ∨ v15 ∨ v22 ∨ v34 ∨ v27 ∨ v21)
    (c453 : v31 ∨ ¬v18 ∨ v25 ∨ v28 ∨ v11 ∨ v21 ∨ v20 ∨ v14 ∨ v19 ∨ v24 ∨ v17 ∨ v12 ∨ v32 ∨ v33)
    (c459 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v39 ∨ v32)
    (c471 : ¬v37 ∨ v30 ∨ v38 ∨ v2 ∨ v10 ∨ v29 ∨ v36 ∨ v35 ∨ v8 ∨ v9 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c508 : v36 ∨ ¬v43 ∨ v5 ∨ v9 ∨ v2 ∨ v1 ∨ v14 ∨ v8 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c521 : ¬v38 ∨ v37 ∨ v39 ∨ v45 ∨ v46 ∨ v44 ∨ v30 ∨ v31)
    (c542 : v23 ∨ ¬v18 ∨ v12 ∨ v17 ∨ v45 ∨ v25 ∨ v11 ∨ v24 ∨ v9 ∨ v4 ∨ v16 ∨ v19 ∨ v46 ∨ v47)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c626 : v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c643 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c667 : ¬v11 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v34)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c723 : v46 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c748 : v28 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c776 : v12 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c788 : v21 ∨ ¬v13 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c819 : v13 ∨ v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c822 : ¬v13 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c840 : v20 ∨ v15 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c848 : v39 ∨ v23 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c870 : v5 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c900 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c908 : v47 ∨ ¬v22 ∨ ¬v23 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c916 : v35 ∨ ¬v15 ∨ v18 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v36 ∨ v41 ∨ v42)
    (c922 : v41 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c923 : ¬v6 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c925 : ¬v32 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c926 : v23 ∨ v22 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ ¬v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45)
    (c927 : v26 ∨ v6 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c938 : v47 ∨ ¬v6 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c947 : ¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c950 : ¬v33 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c952 : v26 ∨ ¬v6 ∨ v19 ∨ v24 ∨ v25 ∨ v32 ∨ v33 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c958 : ¬v4 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c960 : v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c961 : v42 ∨ ¬v28 ∨ v31 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c962 : ¬v34 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c963 : v36 ∨ ¬v6 ∨ ¬v12 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c964 : v31 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c965 : v28 ∨ ¬v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v3 ∨ ¬v4 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46) ∧ (v4 ∨ v6 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46) ∧ (v40 ∨ ¬v25 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46) ∧ (¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v18 ∨ v19) ∧ (v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47) ∧ (v30 ∨ ¬v19 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v32 ∨ v33 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v3 ∨ ¬v11 ∨ v16 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v9 ∨ ¬v18 ∨ v24 ∨ v25) ∧ (v42 ∨ v25 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v37 ∨ ¬v6 ∨ v12 ∨ v13 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (v32 ∨ ¬v25 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45) ∧ (v44 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49) := by
  have c966 : v39 ∨ ¬v6 ∨ v27 ∨ v31 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v26 := by
      rcases c964 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
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
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
      rcases c146 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v33 := by
      rcases c950 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v34 := by
      rcases c962 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v35 := by
      rcases c947 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v12 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n13
    have u11 : ¬v28 := by
      rcases c961 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v25 := by
      rcases c965 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
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
    have u13 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u20 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n0
    have u21 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v3 := by
      rcases c329 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd u20 a
      · exact absurd a u16
      · exact absurd a u19
      · exact a
    have u24 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd n1 a
      · exact absurd a u21
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c663 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c967 : v31 ∨ ¬v6 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v26 := by
      rcases c964 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v37 := by
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
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v34 := by
      rcases c962 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v35 := by
      rcases c947 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
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
    have u9 : ¬v25 := by
      rcases c965 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
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
    have u10 : v27 := by
      rcases c966 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
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
    have u11 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u1 a
    have u12 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u10 a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u1 a
    have u14 : v30 := by
      rcases c926 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v21 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v10 := by
      rcases c859 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u8
    have u21 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u18
    rcases c25 with a|a|a
    · exact absurd u21 a
    · exact absurd u22 a
    · exact absurd n1 a
  have c968 : ¬v3 ∨ ¬v4 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c231 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n6
  have c969 : v25 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v10 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n7
      · exact a
    have u2 : v11 := by
      rcases c236 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd n2 a
      · exact absurd a n4
    have u3 : v9 := by
      rcases c635 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    rcases c45 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c970 : ¬v4 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v36 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v3 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n13
    have u3 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n13
    have u4 : v10 := by
      rcases c969 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u4 a
      · exact a
    rcases c211 with a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u6
  have c971 : ¬v10 ∨ v4 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u5 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u5 a
      · exact a
    rcases c453 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
  have c972 : v4 ∨ v6 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n9
    have u2 : v12 := by
      rcases c643 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u3
    have u9 : v5 := by
      rcases c366 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u10 : v2 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n0
    rcases c15 with a|a|a
    · exact absurd u8 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c973 : v6 ∨ v25 ∨ ¬v26 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v4 := by
      rcases c970 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v10 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
    have u6 : v11 := by
      rcases c972 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
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
    have u10 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
    have u12 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n4
    have u13 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n18
      · exact absurd a n12
      · exact absurd a n4
    have u14 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a u11
    have u15 : ¬v1 := by
      rcases c7 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a n18
    · exact absurd a n17
    · exact absurd a u10
    · exact absurd u13 a
    · exact absurd a u9
    · exact absurd a u7
  have c974 : v41 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v6 := by
      rcases c967 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u5 : v26 := by
      rcases c964 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u6 : ¬v33 := by
      rcases c950 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v34 := by
      rcases c962 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v35 := by
      rcases c947 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v28 := by
      rcases c961 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v25 := by
      rcases c965 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
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
    have u11 : ¬v27 := by
      rcases c973 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd u5 a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u5 a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a u7
    have u19 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n3
    rcases c54 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c975 : v25 ∨ ¬v23 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : v31 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
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
      · exact absurd a n12
    have u3 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v22 := by
      rcases c908 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd n1 a
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
    have u9 : v26 := by
      rcases c922 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n0
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
      · exact absurd a n12
    have u10 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u11 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n1 a
    have u12 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
    rcases c727 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u5
  have c976 : v26 ∨ ¬v11 ∨ v23 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v43 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
    have u11 : v31 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v2 := by
      rcases c471 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
    have u15 : ¬v6 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u14 a
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : v19 := by
      rcases c960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u10 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u16 a
      · exact a
    rcases c402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u19
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n11
  have c977 : ¬v18 ∨ v23 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    rcases c402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n9
  have c978 : v48 ∨ v4 ∨ v25 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v23 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n12
    have u2 : v31 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n12
    have u3 : v37 := by
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
      · exact absurd a n0
      · exact absurd a n12
    have u4 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n0
    have u5 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v18 := by
      rcases c977 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v24 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u8
    have u13 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n4
    have u14 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v26 := by
      rcases c976 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u19 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u12 a
    have u21 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u19
    have u23 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u19
    have u24 : ¬v6 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a n6
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u9
  have c979 : ¬v25 ∨ v23 ∨ v24 ∨ ¬v31 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v32 := by
      rcases c925 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v18 := by
      rcases c977 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v28 := by
      rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u10 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a u5
    have u13 : v17 := by
      rcases c251 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u10
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u1
    have u14 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u13 a
    rcases c447 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u8 a
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u15
  have c980 : v40 ∨ v23 ∨ ¬v25 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v31 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v24 := by
      rcases c979 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u9 a
    have u12 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    have u13 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    have u14 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v21 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u14 a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n12
    have u17 : ¬v12 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u14 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u15 a
      · exact a
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a n10
    · exact absurd a u18
    · exact absurd a u5
    · exact absurd a n0
  have c981 : v40 ∨ ¬v25 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v31 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v23 := by
      rcases c980 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
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
    have u9 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v26 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u12 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v27 := by
      rcases c102 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u14 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u17 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n11
    have u19 : ¬v12 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u15 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a n9
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a n0
  have c982 : v26 ∨ v25 ∨ v28 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v27 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n3 a
    rcases c748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
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
  have c983 : v3 ∨ v5 ∨ v18 ∨ v22 ∨ ¬v24 ∨ v25 ∨ v26 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v28 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd n7 a
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
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v27 := by
      rcases c112 with a|a|a
      · exact absurd n4 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n11
    have u5 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n20
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n14
    have u6 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n19
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n13
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n1
    · exact absurd a n20
    · exact absurd u8 a
    · exact absurd a u7
  have c984 : v48 ∨ v3 ∨ v5 ∨ v22 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v31 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u2 : ¬v25 := by
      rcases c981 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v23 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
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
      · exact absurd a n0
      · exact absurd a n13
    have u10 : v4 := by
      rcases c978 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
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
    have u11 : v24 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u7
    have u12 : v37 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u13 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v18 := by
      rcases c977 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v26 := by
      rcases c983 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a u2
      · exact a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u13
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
    have u16 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u15 a
    have u18 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u15 a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
    have u19 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u18 a
    rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u10 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a n13
  have c985 : v46 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c981 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v31 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v23 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
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
    have u10 : v24 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u7
    have u11 : v4 := by
      rcases c978 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u12 : v37 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v3 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n10
    have u15 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n10
    have u16 : v22 := by
      rcases c984 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u17 : ¬v26 := by
      rcases c88 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u10 a
    have u18 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u10 a
    rcases c982 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u1
    · exact absurd a u18
    · exact absurd u3 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u6
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
  have c986 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v30 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a n0
    have u2 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    rcases c317 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n3
  have c987 : v24 ∨ v3 ∨ v5 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ ¬v43 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v18 := by
      rcases c870 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
    have u2 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v45 := by
      rcases c168 with a|a
      · exact a
      · exact absurd n11 a
    have u4 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n2
    · exact absurd a n13
    · exact absurd u6 a
    · exact absurd a u5
  have c988 : v5 ∨ v3 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v38 := by
      rcases c985 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v31 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v19 := by
      rcases c987 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n7
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd u13 a
    · exact absurd a u12
  have c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
  have c990 : v11 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n4 a
      · exact a
    rcases c442 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd a n5
  have c991 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    rcases c990 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c992 : v24 ∨ v5 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v38 := by
      rcases c985 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v31 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v3 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u9 : ¬v4 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n15
    have u10 : ¬v19 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n12
    have u11 : ¬v18 := by
      rcases c870 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n13
    have u12 : ¬v6 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n7
    rcases c991 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c993 : v26 ∨ ¬v22 ∨ v25 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v38 := by
      rcases c985 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
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
    have u3 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v31 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v28 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
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
    have u11 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u14 : v5 := by
      rcases c992 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
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
    have u15 : ¬v6 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n12
    have u16 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n12
    have u17 : v12 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u15
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v19 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n9
    have u19 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a n3
    rcases c673 with a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n0
  have c994 : v19 ∨ ¬v18 ∨ v22 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : v27 := by
      rcases c675 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u2 a
    have u4 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v5 := by
      rcases c870 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n17
    have u6 : ¬v6 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n19
    rcases c959 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c995 : v44 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n20
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v6 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v12 := by
      rcases c960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n17
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n13
    have u9 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a n8
    have u11 : ¬v3 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n20
    have u12 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u10 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a u12
  have c996 : v26 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v22 := by
      rcases c993 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u2 : v38 := by
      rcases c985 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v31 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : v28 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd u5 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
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
    have u13 : v23 := by
      rcases c995 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v27 := by
      rcases c106 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v15 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd u12 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v21 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u14
      · exact a
    have u17 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u16 a
      · exact a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd u13 a
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u1
  have c997 : v26 ∨ v19 ∨ v25 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c993 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v38 := by
      rcases c985 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v31 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : v28 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
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
    have u13 : ¬v18 := by
      rcases c994 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v24 := by
      rcases c996 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u13
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
    have u15 : ¬v27 := by
      rcases c112 with a|a|a
      · exact absurd u14 a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v15 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd u12 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v21 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u15
      · exact a
    have u18 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n12
    have u22 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n4
    have u23 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v6 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u22 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c418 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a n1
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u21
  have c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v10 := by
      rcases c236 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    rcases c211 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n3
  have c999 : v45 ∨ v25 ∨ v26 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v38 := by
      rcases c985 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v31 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u6 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v22 := by
      rcases c993 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
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
    have u10 : v19 := by
      rcases c997 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
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
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v11 := by
      rcases c667 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u13 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n3
    have u14 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n11
    have u15 : ¬v3 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n11
    rcases c998 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u13 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
  have c1000 : v28 ∨ ¬v4 ∨ v16 ∨ v21 ∨ v23 ∨ v30 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n15
    have u2 : ¬v3 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n15
    have u3 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n11
      · exact a
      · exact absurd a n5
    have u7 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n0
    rcases c20 with a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd n1 a
  have c1001 : v44 ∨ v16 ∨ v18 ∨ v21 ∨ v23 ∨ v25 ∨ v28 ∨ v30 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v4 := by
      rcases c1000 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v13 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n18
    have u3 : ¬v48 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n14 a
    have u4 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n12
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a n7
    have u10 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n6
    have u11 : ¬v6 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u9 a
      · exact a
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a n18
    have u12 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n18
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd u10 a
    · exact absurd a u7
    · exact absurd a u5
  have c1002 : v30 ∨ ¬v19 ∨ v25 ∨ ¬v26 ∨ v29 ∨ v32 ∨ v33 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
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
    have u7 : ¬v28 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v23 := by
      rcases c1001 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd n12 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u8 a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd u8 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u10
  have c1003 : v24 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v32 ∨ v36 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n15
    have u6 : ¬v3 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n15
    have u7 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a u5
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u7 a
    rcases c414 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u8
  have c1004 : v28 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v16 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : v21 := by
      rcases c1001 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
    have u4 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v10 := by
      rcases c859 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n0
    have u6 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n19
    have u8 : ¬v3 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n19
    have u9 : v11 := by
      rcases c236 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd u6 a
      · exact absurd a u5
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    rcases c642 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n0
  have c1005 : v3 ∨ ¬v11 ∨ v16 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n6
    have u6 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n5
    have u7 : v1 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact a
    rcases c5 with a|a|a
    · exact absurd u7 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1006 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    rcases c643 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
  have c1007 : v30 ∨ v4 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v25 ∨ ¬v26 ∨ ¬v27 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u2 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u3 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n7 a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v9 := by
      rcases c1006 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n5
    have u9 : v12 := by
      rcases c542 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n3 a
      · exact a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v13 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u11 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n11
      · exact a
      · exact absurd a n0
    have u12 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a u2
    have u14 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v5 := by
      rcases c22 with a|a|a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact a
    rcases c366 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u15
  have c1008 : v42 ∨ v25 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v26 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v38 := by
      rcases c985 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v31 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v19 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u14 : v27 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
    have u15 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u16 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u17 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u18 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u14 a
      · exact absurd u2 a
      · exact a
    have u19 : v18 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v9 := by
      rcases c1006 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a n1
    have u23 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n5
      · exact a
      · exact absurd a u8
    have u24 : ¬v4 := by
      rcases c1000 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u25 : v11 := by
      rcases c1007 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u24
      · exact a
      · exact absurd u19 a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u26 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : v3 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u28 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u16
    rcases c17 with a|a|a
    · exact absurd u23 a
    · exact absurd u27 a
    · exact absurd u28 a
  have c1009 : v37 ∨ ¬v6 ∨ v12 ∨ v13 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n10
    have u3 : v7 := by
      rcases c559 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n3
    have u4 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd n6 a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n10
  have c1010 : v32 ∨ ¬v25 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a u2
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
    · exact absurd a n13
  have c1011 : v27 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v6 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v12 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n16
    have u4 : v13 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n14
      · exact a
      · exact absurd a n3
      · exact absurd a n8
    have u6 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n2
    have u11 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u1 a
    have u12 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u1 a
    rcases c508 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n11 a
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1012 : v27 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v28 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
    have u5 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v17 := by
      rcases c251 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
    have u7 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u6 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
  have c1014 : v44 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v16 := by
      rcases c822 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v21 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n18
    have u4 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u3 a
    rcases c626 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd u3 a
    · exact absurd a n6
    · exact absurd a n7
  have c1015 : ¬v20 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n0 a
    rcases c819 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
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
  exact ⟨c968, c971, c972, c981, c986, c989, c991, c998, c1002, c1005, c1006, c1008, c1009, c1010, c1011, c1012, c1013, c1014, c1015⟩
