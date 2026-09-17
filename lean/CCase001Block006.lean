import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 300-349 of the 2915-step refutation of ccase001: 126 core clauses and 30 earlier-derived ones give 17 more. -/
theorem CCase001_block006
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
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
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c119 : ¬v28 ∨ ¬v25)
    (c121 : ¬v28 ∨ ¬v26)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c146 : ¬v36 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c170 : ¬v46 ∨ ¬v43)
    (c189 : v43 ∨ v48 ∨ v44 ∨ v47 ∨ v49 ∨ v45 ∨ v46)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c204 : ¬v31 ∨ v38 ∨ v35 ∨ v24 ∨ v46 ∨ v44 ∨ v28 ∨ v29 ∨ v32 ∨ v39 ∨ v42 ∨ v30 ∨ v45 ∨ v23)
    (c210 : v4 ∨ v9 ∨ v17 ∨ v3 ∨ ¬v10 ∨ v18 ∨ v2 ∨ v11)
    (c216 : ¬v21 ∨ v28 ∨ v8 ∨ v14 ∨ v20 ∨ v27 ∨ v13 ∨ v15)
    (c225 : v7 ∨ ¬v20 ∨ v27 ∨ v5 ∨ v24 ∨ v14 ∨ v18 ∨ v17 ∨ v10 ∨ v21 ∨ v19 ∨ v13 ∨ v26 ∨ v6)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c236 : v36 ∨ ¬v43 ∨ v2 ∨ v44 ∨ v42 ∨ v1 ∨ v7 ∨ v49)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c252 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13)
    (c253 : v21 ∨ v6 ∨ v13 ∨ v47 ∨ v26 ∨ v27 ∨ v25 ∨ v18 ∨ v11 ∨ v19 ∨ v14 ∨ ¬v20 ∨ v48 ∨ v49)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c303 : ¬v37 ∨ v29 ∨ v44 ∨ v31 ∨ v38 ∨ v30 ∨ v36 ∨ v45)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c377 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v29 ∨ v36 ∨ v30 ∨ v38)
    (c382 : v22 ∨ ¬v15 ∨ v21 ∨ v9 ∨ v23 ∨ v14 ∨ v16 ∨ v8)
    (c399 : v7 ∨ ¬v10 ∨ v17 ∨ v16 ∨ v14 ∨ v21 ∨ v4 ∨ v11 ∨ v3 ∨ v9 ∨ v8 ∨ v44 ∨ v45 ∨ v46)
    (c407 : v11 ∨ ¬v12 ∨ v48 ∨ v1 ∨ v4 ∨ v20 ∨ v5 ∨ v46 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v47 ∨ v14)
    (c425 : v36 ∨ v22 ∨ v40 ∨ v23 ∨ v35 ∨ ¬v29 ∨ v33 ∨ v21 ∨ v16 ∨ v34 ∨ v15 ∨ v30 ∨ v26 ∨ v42)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c432 : ¬v37 ∨ v15 ∨ v44 ∨ v30 ∨ v16 ∨ v38 ∨ v17 ∨ v23 ∨ v36 ∨ v29 ∨ v39 ∨ v32 ∨ v45 ∨ v46)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c441 : ¬v24 ∨ v31 ∨ v17 ∨ v32 ∨ v25 ∨ v18 ∨ v23 ∨ v16)
    (c442 : v20 ∨ v47 ∨ v5 ∨ v16 ∨ v9 ∨ v6 ∨ v21 ∨ v2 ∨ v12 ∨ v14 ∨ ¬v13 ∨ v8 ∨ v48 ∨ v49)
    (c443 : v48 ∨ v14 ∨ v5 ∨ v12 ∨ v7 ∨ ¬v6 ∨ v47 ∨ v13)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c466 : ¬v10 ∨ v9 ∨ v17 ∨ v16 ∨ v2 ∨ v4 ∨ v11 ∨ v3)
    (c471 : v21 ∨ v41 ∨ v8 ∨ v40 ∨ v5 ∨ v14 ∨ v20 ∨ v12 ∨ v1 ∨ ¬v13 ∨ v6 ∨ v15 ∨ v42 ∨ v48)
    (c475 : v36 ∨ v22 ∨ v9 ∨ ¬v29 ∨ v41 ∨ v14 ∨ v15 ∨ v30 ∨ v23 ∨ v34 ∨ v35 ∨ v27 ∨ v8 ∨ v42)
    (c493 : ¬v31 ∨ v38 ∨ v30 ∨ v25 ∨ v24 ∨ v39 ∨ v32 ∨ v23)
    (c506 : ¬v24 ∨ v31 ∨ v17 ∨ v25 ∨ v23 ∨ v16 ∨ v15 ∨ v32 ∨ v29 ∨ v22 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c559 : v36 ∨ ¬v43 ∨ v2 ∨ v8 ∨ v1 ∨ v9 ∨ v14 ∨ v5 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c596 : ¬v20 ∨ v27 ∨ v13 ∨ v12 ∨ v21 ∨ v14 ∨ v26 ∨ v19)
    (c598 : v5 ∨ v6 ∨ v19 ∨ v14 ∨ v12 ∨ ¬v13 ∨ v20 ∨ v7)
    (c605 : ¬v24 ∨ v31 ∨ v17 ∨ v23 ∨ v30 ∨ v16 ∨ v32 ∨ v25)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c617 : v21 ∨ ¬v4 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c641 : ¬v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c646 : v27 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c657 : ¬v20 ∨ ¬v25 ∨ v26 ∨ v32 ∨ v33)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c667 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c693 : ¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c725 : ¬v3 ∨ ¬v12 ∨ ¬v13 ∨ v18 ∨ v21 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v49)
    (c727 : v13 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c740 : v25 ∨ ¬v10 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c796 : ¬v20 ∨ ¬v2 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c815 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c820 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c825 : v26 ∨ ¬v9 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v24 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c894 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c898 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c907 : v30 ∨ v10 ∨ ¬v11 ∨ v16 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c908 : v30 ∨ ¬v27 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45)
    (c911 : v45 ∨ v10 ∨ v16 ∨ v18 ∨ v20 ∨ v25 ∨ v29 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c912 : v30 ∨ v10 ∨ v16 ∨ v20 ∨ ¬v23 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v24 ∨ v23 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45) ∧ (¬v4 ∨ ¬v3 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23) ∧ (¬v10 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v16 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v47 ∨ ¬v10 ∨ ¬v11 ∨ v20 ∨ v27 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49) ∧ (¬v10 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v5 ∨ ¬v6 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20) ∧ (¬v20 ∨ v6 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v11 ∨ ¬v10 ∨ ¬v20 ∨ v26 ∨ v27) ∧ (v44 ∨ ¬v10 ∨ v16 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v25 ∨ v31 ∨ v32) ∧ (v36 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v25 ∨ v10 ∨ v11 ∨ v16 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v40 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v16 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v27 ∨ v4 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v34 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48) := by
  have c913 : v24 ∨ v23 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n8
    have u4 : v43 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
    have u5 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v46 := by
      rcases c170 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v25 := by
      rcases c493 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n1
    have u9 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u8 a
    rcases c204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n1
  have c914 : v30 ∨ v10 ∨ v16 ∨ ¬v23 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : v20 := by
      rcases c912 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
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
    have u3 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u2 a
    rcases c906 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n0
  have c915 : v23 ∨ v16 ∨ ¬v20 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n8
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n9
    have u5 : v32 := by
      rcases c432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    rcases c135 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c916 : v29 ∨ v10 ∨ v16 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n10
    have u4 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v23 := by
      rcases c914 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
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
    have u6 : ¬v20 := by
      rcases c915 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v24 := by
      rcases c913 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v18 := by
      rcases c911 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u8
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
      · exact absurd a n14
    have u10 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u9 a
    rcases c432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u11
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n11
  have c917 : ¬v10 ∨ ¬v15 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c918 : v40 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v10 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
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
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v27 := by
      rcases c908 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n10
    have u6 : v24 := by
      rcases c913 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v19 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v20 := by
      rcases c915 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v15 := by
      rcases c917 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v17 := by
      rcases c432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u17 a
      · exact a
    rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c919 : ¬v10 ∨ v16 ∨ v20 ∨ ¬v23 ∨ v27 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v19 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v15 := by
      rcases c917 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u3
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
    have u8 : v17 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u8 a
      · exact a
    rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c920 : v30 ∨ v16 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v23 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
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
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
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
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v10 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
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
    have u8 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n9
    have u9 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v20 := by
      rcases c919 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u11 a
    rcases c906 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n0
  have c921 : ¬v23 ∨ v16 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
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
  have c922 : ¬v11 ∨ ¬v10 ∨ v16 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    rcases c596 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u5
  have c923 : ¬v9 ∨ ¬v10 ∨ ¬v20 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n2 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u5
  have c924 : v28 ∨ v2 ∨ ¬v10 ∨ v16 ∨ ¬v20 ∨ v23 ∨ v27 ∨ v32 ∨ v33 ∨ v35 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
    have u6 : ¬v25 := by
      rcases c657 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v9 := by
      rcases c923 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n0
    have u8 : ¬v11 := by
      rcases c922 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n9
    have u9 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n11
    have u10 : v3 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd n2 a
    have u11 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u10 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u9 a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n15 a
    · exact absurd a n1
    · exact absurd a n16
    · exact absurd a n14
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n18
  have c925 : v40 ∨ v16 ∨ ¬v20 ∨ v30 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u7 : v29 := by
      rcases c920 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
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
    have u8 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v27 := by
      rcases c908 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v26 := by
      rcases c665 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
    have u17 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u18 : ¬v23 := by
      rcases c921 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
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
    have u19 : ¬v24 := by
      rcases c441 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n1
    have u20 : v22 := by
      rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n7
    have u21 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v2 := by
      rcases c796 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u23 : ¬v10 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u22
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u8 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
    have u24 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u15
    have u25 : v13 := by
      rcases c727 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
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
    have u26 : ¬v12 := by
      rcases c725 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u25 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u27 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u16
      · exact a
      · exact absurd a n11
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n0
    have u28 : ¬v1 := by
      rcases c7 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u27 a
    have u29 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd u27 a
      · exact absurd u24 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a u22
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a n13
  have c926 : ¬v4 ∨ ¬v3 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n6
  have c927 : v4 ∨ v10 ∨ v16 ∨ v18 ∨ v25 ∨ v27 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v29 := by
      rcases c920 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
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
    have u2 : ¬v20 := by
      rcases c925 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
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
    have u3 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
    rcases c907 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd u4 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
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
  have c928 : v26 ∨ v10 ∨ v16 ∨ v17 ∨ v23 ∨ v25 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v29 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n4
      · exact a
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
    have u2 : ¬v20 := by
      rcases c925 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
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
    have u3 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v27 := by
      rcases c908 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v24 := by
      rcases c605 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
    have u13 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u9
    have u14 : ¬v4 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd u4 a
      · exact absurd a n12
      · exact absurd a n17
    have u15 : v18 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u11
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
    have u16 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v11 := by
      rcases c883 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n0
    have u20 : ¬v9 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u19 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n15
    have u21 : v22 := by
      rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
    have u22 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u14
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a n12
      · exact absurd a n13
    have u23 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u21 a
      · exact a
    rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd u22 a
    · exact absurd u13 a
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n16
    · exact absurd a n17
  have c929 : ¬v25 ∨ ¬v29 ∨ v30 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    rcases c898 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c930 : v10 ∨ v16 ∨ ¬v22 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v29 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact a
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
    have u5 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v20 := by
      rcases c925 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
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
    have u7 : v17 := by
      rcases c928 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
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
    have u8 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v11 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
    have u14 : v9 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
    have u15 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u13 a
    have u16 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u14 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u14 a
      · exact absurd u13 a
      · exact a
    have u18 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n11
    have u19 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u1
      · exact a
      · exact absurd a n15
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
    have u20 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u5
    rcases c35 with a|a|a
    · exact absurd u19 a
    · exact absurd u20 a
    · exact absurd u18 a
  have c931 : v46 ∨ v10 ∨ v16 ∨ v23 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v29 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v27 := by
      rcases c908 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v25 := by
      rcases c929 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n9
    have u8 : ¬v22 := by
      rcases c930 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
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
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v28 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n9
    have u10 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a u4
    rcases c928 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u7
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
    · exact absurd a n13
    · exact absurd a n14
  have c932 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    rcases c382 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
  have c933 : v16 ∨ ¬v10 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v27 ∨ ¬v29 ∨ v30 ∨ v34 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v15 := by
      rcases c932 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    rcases c475 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd n6 a
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n11
  have c934 : ¬v10 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v12 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
    have u3 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    rcases c450 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u1 a
    · exact absurd a u5
  have c935 : v20 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n19
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n13
    have u2 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n21
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd u4 a
      · exact absurd a n17
      · exact absurd a n22
    have u6 : v9 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd n1 a
    have u7 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u9 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n21
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a u3
    have u10 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n8
      · exact a
      · exact absurd a n20
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n14
    rcases c32 with a|a|a
    · exact absurd u9 a
    · exact absurd u10 a
    · exact absurd u1 a
  have c936 : v23 ∨ ¬v10 ∨ v16 ∨ v20 ∨ v22 ∨ v27 ∨ ¬v29 ∨ v30 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v25 := by
      rcases c929 with a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u6 : v28 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u7 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v19 := by
      rcases c685 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u2
    have u9 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u2
    have u10 : ¬v11 := by
      rcases c933 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v18 := by
      rcases c935 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u4
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
      · exact absurd a n18
    have u12 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u11 a
      · exact a
    rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd n6 a
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a n12
  have c937 : v11 ∨ ¬v10 ∨ ¬v18 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v12 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a u2
    have u6 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u8 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u9 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u11 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n15
    have u12 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n19
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a u6
    have u13 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u14 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    rcases c407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u5 a
    · exact absurd a n19
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a n17
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n18
    · exact absurd a u9
  have c938 : v28 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n22
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v19 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v18 := by
      rcases c937 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u7 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n20
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n14
    have u8 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u9 : v21 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u10 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd u3 a
      · exact absurd a n18
      · exact absurd a n23
    have u11 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v9 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd n1 a
    have u14 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u16 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u16
    · exact absurd a u11
  have c939 : v42 ∨ v16 ∨ v23 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v29 := by
      rcases c920 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
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
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : v10 := by
      rcases c931 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v20 := by
      rcases c925 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v25 := by
      rcases c929 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n0
    have u13 : ¬v27 := by
      rcases c908 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v22 := by
      rcases c936 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u11
      · exact a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u9
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
    have u15 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v19 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u10 a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u19 : v11 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u10 a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
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
    have u20 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u19 a
    have u22 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u15
      · exact a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a n6
    have u23 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u4
    have u24 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u23 a
    have u25 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u22 a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u23 a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u3 a
    · exact absurd a u26
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a n13
  have c940 : v16 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v23 := by
      rcases c939 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
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
      · exact absurd a n11
      · exact absurd a n12
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
    have u7 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v29 := by
      rcases c920 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u7
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
  have c941 : ¬v5 ∨ v2 ∨ ¬v6 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n7
  have c942 : v47 ∨ ¬v10 ∨ ¬v11 ∨ v20 ∨ v27 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n5
    have u7 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v5 := by
      rcases c941 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n13
    have u9 : v7 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u5
    have u10 : v1 := by
      rcases c559 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n10 a
      · exact absurd a u7
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    rcases c15 with a|a|a
    · exact absurd u10 a
    · exact absurd u6 a
    · exact absurd u9 a
  have c943 : ¬v10 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n3
    have u2 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
    rcases c68 with a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd n0 a
  have c944 : v5 ∨ ¬v6 ∨ ¬v7 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n13
      · exact a
      · exact absurd a n6
      · exact absurd a n11
    have u5 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v9 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u2
    have u8 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n3 a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n12
  have c945 : v9 ∨ v2 ∨ ¬v6 ∨ v7 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v25 ∨ v32 ∨ v36 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v1 := by
      rcases c236 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n12 a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n15
    have u2 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u4 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n14
      · exact a
      · exact absurd a n7
      · exact absurd a n10
    have u5 : v17 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u3
    rcases c91 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c946 : v16 ∨ v5 ∨ ¬v6 ∨ ¬v10 ∨ v11 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v7 := by
      rcases c944 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v13 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u5 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u6 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u7 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u8 : v2 := by
      rcases c945 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n19
    have u9 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n2 a
    have u10 : v18 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u11 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u10 a
      · exact a
    rcases c399 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n3 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c947 : ¬v5 ∨ ¬v6 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n6
  have c948 : v49 ∨ ¬v6 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v5 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n0
    rcases c946 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd n1 a
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
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n0
  have c949 : v36 ∨ ¬v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v4 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n5
    have u3 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u4 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n7 a
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n12
  have c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := by
      rcases c598 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n0
    have u2 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u1 a
    rcases c252 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd n4 a
  have c951 : v11 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v10 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u3 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u4 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u5 : v7 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n7
    have u6 : v1 := by
      rcases c559 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n11 a
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v21 := by
      rcases c442 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u7 a
    rcases c210 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd n4 a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n0
  have c952 : v40 ∨ ¬v10 ∨ v16 ∨ v20 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v11 := by
      rcases c942 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd u1 a
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v6 := by
      rcases c948 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n17
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n8
    have u5 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u6 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u7 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u8 : ¬v5 := by
      rcases c949 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd u1 a
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : v7 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a n3
    have u10 : v2 := by
      rcases c951 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd u1 a
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u11 : v18 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u10 a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u9 a
    have u13 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u11 a
      · exact a
    rcases c471 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a n12
    · exact absurd a n17
  have c953 : ¬v20 ∨ v6 ∨ ¬v10 ∨ v11 ∨ ¬v12 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    rcases c253 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n10
  have c954 : v6 ∨ ¬v10 ∨ v11 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v12 := by
      rcases c953 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
    have u4 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v4 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a u1
    have u6 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
    have u7 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u3 a
      · exact absurd u5 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n11 a
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n16
  have c955 : ¬v11 ∨ ¬v10 ∨ ¬v20 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n2 a
    rcases c596 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u5
  have c956 : v44 ∨ ¬v10 ∨ v16 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v20 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v26 := by
      rcases c665 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v11 := by
      rcases c955 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n4
    have u5 : ¬v6 := by
      rcases c948 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c954 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c957 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v25 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    rcases c441 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
  have c958 : v36 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n10
    have u2 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n5 a
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n10
  have c959 : ¬v24 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c960 : v25 ∨ v10 ∨ v11 ∨ v16 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n17
      · exact a
      · exact absurd a n0
      · exact absurd a n12
    have u3 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v24 := by
      rcases c959 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c883 with a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u6
  have c961 : v40 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v16 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v24 := by
      rcases c959 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n10
    have u7 : ¬v9 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n19
    have u8 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u6 a
    have u10 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
    have u11 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n19
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n0
    have u12 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n20
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n13
    rcases c70 with a|a|a
    · exact absurd u11 a
    · exact absurd u12 a
    · exact absurd n3 a
  have c962 : v27 ∨ v4 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v34 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v12 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n1
    have u2 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n4 a
    have u6 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u6 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u6 a
    have u9 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n13
      · exact absurd a n11
    have u10 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u9 a
      · exact a
    rcases c225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u8
  exact ⟨c913, c926, c932, c934, c940, c942, c943, c947, c950, c953, c955, c956, c957, c958, c960, c961, c962⟩
