import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 250-299 of the 2915-step refutation of ccase001: 139 core clauses and 34 earlier-derived ones give 19 more. -/
theorem CCase001_block005
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
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
    (c106 : ¬v22 ∨ ¬v27)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c129 : ¬v35 ∨ ¬v29)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c168 : ¬v44 ∨ ¬v43)
    (c170 : ¬v46 ∨ ¬v43)
    (c172 : ¬v48 ∨ ¬v43)
    (c189 : v43 ∨ v48 ∨ v44 ∨ v47 ∨ v49 ∨ v45 ∨ v46)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c202 : v7 ∨ v3 ∨ v30 ∨ v44 ∨ v14 ∨ v9 ∨ ¬v2 ∨ v29 ∨ v1 ∨ v31 ∨ v37 ∨ v8 ∨ v45 ∨ v49)
    (c204 : ¬v31 ∨ v38 ∨ v35 ∨ v24 ∨ v46 ∨ v44 ∨ v28 ∨ v29 ∨ v32 ∨ v39 ∨ v42 ∨ v30 ∨ v45 ∨ v23)
    (c208 : v22 ∨ ¬v21 ∨ v20 ∨ v28 ∨ v13 ∨ v14 ∨ v15 ∨ v8)
    (c225 : v7 ∨ ¬v20 ∨ v27 ∨ v5 ∨ v24 ∨ v14 ∨ v18 ∨ v17 ∨ v10 ∨ v21 ∨ v19 ∨ v13 ∨ v26 ∨ v6)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c236 : v36 ∨ ¬v43 ∨ v2 ∨ v44 ∨ v42 ∨ v1 ∨ v7 ∨ v49)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c252 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13)
    (c278 : ¬v40 ∨ v33 ∨ v41 ∨ v47 ∨ v34 ∨ v32 ∨ v46 ∨ v39)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c303 : ¬v37 ∨ v29 ∨ v44 ∨ v31 ∨ v38 ∨ v30 ∨ v36 ∨ v45)
    (c328 : ¬v35 ∨ v29 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42 ∨ v34)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c343 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v29 ∨ v42 ∨ v34 ∨ v41)
    (c347 : v15 ∨ v6 ∨ v13 ∨ v7 ∨ v8 ∨ v21 ∨ v1 ∨ ¬v14)
    (c349 : v36 ∨ v22 ∨ v35 ∨ v30 ∨ v28 ∨ v23 ∨ ¬v29 ∨ v42)
    (c358 : ¬v35 ∨ v42 ∨ v28 ∨ v14 ∨ v13 ∨ v41 ∨ v22 ∨ v21 ∨ v8 ∨ v34 ∨ v29 ∨ v33 ∨ v26 ∨ v40)
    (c377 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v29 ∨ v36 ∨ v30 ∨ v38)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c401 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v25)
    (c427 : v13 ∨ v9 ∨ v24 ∨ v18 ∨ v4 ∨ v25 ∨ v10 ∨ v20 ∨ v2 ∨ ¬v17 ∨ v3 ∨ v19 ∨ v16 ∨ v27)
    (c431 : v15 ∨ v12 ∨ v17 ∨ v1 ∨ v46 ∨ v4 ∨ v8 ∨ ¬v11 ∨ v9 ∨ v10 ∨ v18 ∨ v45 ∨ v5 ∨ v47)
    (c432 : ¬v37 ∨ v15 ∨ v44 ∨ v30 ∨ v16 ∨ v38 ∨ v17 ∨ v23 ∨ v36 ∨ v29 ∨ v39 ∨ v32 ∨ v45 ∨ v46)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c467 : v29 ∨ ¬v27 ∨ v41 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v33 ∨ v21 ∨ v22 ∨ v15 ∨ v47 ∨ v48 ∨ v49)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c493 : ¬v31 ∨ v38 ∨ v30 ∨ v25 ∨ v24 ∨ v39 ∨ v32 ∨ v23)
    (c496 : v43 ∨ ¬v36 ∨ v22 ∨ v42 ∨ v37 ∨ v49 ∨ v30 ∨ v28 ∨ v23 ∨ v40 ∨ v33 ∨ v29 ∨ v47 ∨ v41)
    (c499 : v12 ∨ v6 ∨ v5 ∨ v4 ∨ v32 ∨ v20 ∨ v17 ∨ ¬v11 ∨ v25 ∨ v18 ∨ v10 ∨ v31 ∨ v13 ∨ v33)
    (c510 : ¬v37 ∨ v29 ∨ v2 ∨ v8 ∨ v10 ∨ v30 ∨ v9 ∨ v35 ∨ v36 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c515 : v29 ∨ v22 ∨ v30 ∨ v24 ∨ ¬v23 ∨ v17 ∨ v16 ∨ v15)
    (c527 : v29 ∨ ¬v16 ∨ v30 ∨ v24 ∨ v9 ∨ v23 ∨ v27 ∨ v8 ∨ v20 ∨ v15 ∨ v21 ∨ v13 ∨ v17 ∨ v31)
    (c600 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26 ∨ v10 ∨ v19 ∨ v17)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c612 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c620 : v20 ∨ ¬v10 ∨ ¬v11 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v47 ∨ v48)
    (c626 : v20 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v48)
    (c646 : v27 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c652 : ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c680 : ¬v19 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c683 : ¬v19 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v27)
    (c684 : v46 ∨ v2 ∨ ¬v3 ∨ v10 ∨ v16 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c694 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c721 : ¬v5 ∨ v10 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c723 : ¬v21 ∨ v8 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28)
    (c728 : ¬v11 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c742 : ¬v3 ∨ v2 ∨ v10 ∨ ¬v11 ∨ ¬v12 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c795 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c815 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c816 : ¬v11 ∨ ¬v2 ∨ v10 ∨ v12 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c820 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c824 : v27 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c836 : v48 ∨ ¬v9 ∨ ¬v11 ∨ v12 ∨ v18 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v49)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c847 : v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c853 : v20 ∨ v9 ∨ v11 ∨ v18 ∨ v22 ∨ v26 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c859 : ¬v12 ∨ v11 ∨ v13 ∨ v18 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c860 : v11 ∨ ¬v12 ∨ v18 ∨ v22 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c861 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24)
    : (¬v26 ∨ ¬v35 ∨ v41 ∨ v42) ∧ (¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31) ∧ (¬v23 ∨ ¬v35 ∨ v41 ∨ v42) ∧ (v14 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42) ∧ (¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v20 ∨ ¬v22 ∨ v29 ∨ v30) ∧ (¬v11 ∨ v10 ∨ ¬v16 ∨ v18 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v10 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48) ∧ (¬v19 ∨ ¬v22 ∨ v29 ∨ v30) ∧ (v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42) ∧ (¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v42) ∧ (¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (v2 ∨ v8 ∨ v9 ∨ v10 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30) ∧ (v30 ∨ v10 ∨ ¬v11 ∨ v16 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v30 ∨ ¬v27 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45) ∧ (v45 ∨ v10 ∨ v16 ∨ v18 ∨ v20 ∨ v25 ∨ v29 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v30 ∨ v10 ∨ v16 ∨ v20 ∨ ¬v23 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c862 : v37 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
    have u8 : v13 := by
      rcases c859 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
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
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n2 a
    have u11 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u12 : v22 := by
      rcases c860 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
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
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
    have u16 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u5
    have u17 : ¬v16 := by
      rcases c861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
    have u18 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u7 a
      · exact absurd u16 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u17
    · exact absurd a u13
  have c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n1 a
      · exact a
    rcases c328 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
  have c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
  have c865 : v22 ∨ v2 ∨ v9 ∨ v11 ∨ v18 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v20 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
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
      · exact absurd a n16
    have u5 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u6
      · exact a
    rcases c864 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
  have c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n1 a
      · exact a
    rcases c328 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
  have c867 : v22 ∨ v10 ∨ v11 ∨ v18 ∨ v28 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v27 := by
      rcases c328 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
    have u10 : ¬v40 := by
      rcases c278 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n8
    have u11 : v36 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n9
    have u12 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u13 : v43 := by
      rcases c496 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n9
    have u14 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n8
    have u16 : ¬v48 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v44 := by
      rcases c168 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v17 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u12
    have u19 : ¬v12 := by
      rcases c862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u16
      · exact absurd a n14
    have u20 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u6
    have u21 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u15 a
    have u22 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a n13
      · exact absurd a u3
      · exact a
      · exact absurd a u10
    have u23 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u22 a
      · exact a
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u9 a
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u25
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a n13
    · exact absurd a u16
    · exact absurd a n14
  have c868 : v14 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v21 := by
      rcases c358 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n10
    have u2 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n1
  have c869 : v22 ∨ v11 ∨ v18 ∨ v28 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v12 := by
      rcases c862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u7
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
    have u10 : ¬v2 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v9 := by
      rcases c865 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
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
    have u12 : v10 := by
      rcases c867 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u13 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    have u15 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u12 a
    rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c870 : v34 ∨ ¬v18 ∨ v22 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v33 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n1 a
      · exact a
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n4 a
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c871 : ¬v10 ∨ ¬v11 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c872 : v13 ∨ v8 ∨ ¬v11 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v27 := by
      rcases c328 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
    have u9 : ¬v10 := by
      rcases c871 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v14 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v18 := by
      rcases c870 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n2 a
    have u15 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
    have u16 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u12
    have u17 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
    have u18 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u16
      · exact absurd a u7
    have u19 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u5
    have u20 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u21 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u22 : v19 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u18 a
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n12
    have u23 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u18 a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u24 : v15 := by
      rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n13
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a u23
      · exact absurd a n14
    rcases c83 with a|a
    · exact absurd u24 a
    · exact absurd u22 a
  have c873 : ¬v11 ∨ v13 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v10 := by
      rcases c871 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
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
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v27 := by
      rcases c328 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
    have u11 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v18 := by
      rcases c870 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v8 := by
      rcases c872 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
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
      · exact absurd a n15
    have u15 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n0 a
    have u16 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n0 a
    have u17 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u12
    have u19 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u7
    have u20 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u18
      · exact absurd a u9
    have u21 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
    have u22 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    have u23 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    have u24 : v19 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u20 a
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n11
    have u25 : v20 := by
      rcases c499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u5
      · exact a
      · exact absurd a u17
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u4
    rcases c98 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c874 : v22 ∨ v28 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v27 := by
      rcases c328 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
    have u10 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v18 := by
      rcases c870 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v11 := by
      rcases c869 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u12
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
    have u14 : ¬v10 := by
      rcases c871 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v13 := by
      rcases c873 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
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
    have u16 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u15 a
    have u17 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u15 a
    have u18 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
    have u19 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
    have u20 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u8
    have u21 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u22 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u8
    have u23 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u6
    have u24 : v19 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u15 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u25 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u22 a
    have u26 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u22 a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u27 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u22 a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u24 a
      · exact a
    rcases c252 with a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd u15 a
  have c876 : v8 ∨ v9 ∨ v10 ∨ v13 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v16 := by
      rcases c745 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a u1
      · exact absurd a n6
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n12
    have u5 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u6 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u7 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    have u9 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n21
      · exact absurd a n3
      · exact absurd a n10
      · exact a
      · exact absurd a n17
      · exact absurd a n13
    have u10 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v14 := by
      rcases c347 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u6
      · exact a
    rcases c225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u9 a
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a u5
  have c877 : ¬v11 ∨ v8 ∨ v10 ∨ v13 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v9 := by
      rcases c876 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n26
    have u2 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    have u3 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v20 := by
      rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u6 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n25
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a n19
    have u7 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n26
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n20
      · exact absurd a n15
    have u8 : v17 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n26
    have u9 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u12 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u8 a
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a n2
  have c878 : v13 ∨ v10 ∨ ¬v11 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v8 := by
      rcases c877 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
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
    have u2 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v2 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n22
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n15
    · exact absurd a n21
    · exact absurd a u6
    · exact absurd a n5
  have c879 : ¬v11 ∨ v10 ∨ v18 ∨ v22 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v28 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : v13 := by
      rcases c878 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
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
    have u14 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
    have u15 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n0 a
    have u16 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
    have u17 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
    have u18 : ¬v17 := by
      rcases c815 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u19 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a u9
    have u20 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u7
    have u21 : v19 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u22 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
    have u23 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u19 a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u24 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
    have u25 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u21 a
    rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u24
    · exact absurd a n12
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd n0 a
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a u23
    · exact absurd a n13
  have c880 : v27 ∨ ¬v10 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v20 := by
      rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c881 : v41 ∨ ¬v11 ∨ v22 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v28 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
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
    have u2 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v10 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v18 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
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
    have u14 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u11
    have u19 : ¬v13 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u20 : v2 := by
      rcases c684 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd u18 a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u21 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u9
    rcases c18 with a|a|a
    · exact absurd u21 a
    · exact absurd u18 a
    · exact absurd u20 a
  have c882 : v17 ∨ v10 ∨ v11 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n3 a
      · exact a
    rcases c600 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
  have c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    rcases c882 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c884 : v11 ∨ v10 ∨ v24 ∨ v25 ∨ v27 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
    have u8 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
    have u9 : ¬v12 := by
      rcases c862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u5
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
    have u10 : ¬v17 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
    have u12 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u5
      · exact a
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n8
    have u13 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u4
    rcases c26 with a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u8 a
  have c885 : v11 ∨ ¬v10 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n2 a
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
    have u6 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u7 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u10 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n11
    have u11 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a n3
    have u12 : ¬v1 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
    have u13 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact a
    rcases c202 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a n14
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd u11 a
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a n15
    · exact absurd a n17
  have c886 : v40 ∨ v22 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v28 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
    have u11 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v11 := by
      rcases c881 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
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
      · exact absurd a n12
    have u15 : v10 := by
      rcases c884 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
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
    have u16 : ¬v18 := by
      rcases c885 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u15 a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n4
    have u18 : ¬v12 := by
      rcases c862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a u8
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
    have u19 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
    have u20 : ¬v2 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u8
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a n0
    have u22 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u17 a
    have u23 : v9 := by
      rcases c865 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u20
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd u1 a
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
      · exact absurd a n12
    have u24 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u15 a
    have u25 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u15 a
    have u26 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u15 a
    have u27 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n11
      · exact absurd a u26
      · exact absurd a u13
      · exact a
      · exact absurd a n5
      · exact absurd a u3
    rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
  have c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n1 a
      · exact a
    rcases c856 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
  have c888 : ¬v10 ∨ v11 ∨ v18 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v22 := by
      rcases c886 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u3
    have u13 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n5
    have u14 : ¬v12 := by
      rcases c862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u8
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
    have u15 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
    have u16 : ¬v2 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u8
      · exact a
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n6
    have u18 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u13 a
    have u19 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u17 a
      · exact absurd u13 a
      · exact a
    have u20 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n13
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u4
    have u21 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n0 a
    have u22 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n0 a
    have u23 : v21 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u15
      · exact absurd u20 a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u18
    have u24 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a u9
    rcases c90 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c889 : ¬v18 ∨ ¬v22 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n1 a
      · exact a
    rcases c856 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
  have c890 : v41 ∨ ¬v10 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v22 := by
      rcases c886 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
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
      · exact absurd a n12
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
    have u9 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
    have u10 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v18 := by
      rcases c889 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u3
    have u14 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u3
    have u15 : v11 := by
      rcases c888 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u13
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
    have u16 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u15 a
    have u18 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u15 a
    have u20 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
    have u21 : v16 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u21 a
      · exact a
    rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u21 a
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u16
    · exact absurd a u23
    · exact absurd a u7
  have c891 : ¬v11 ∨ v10 ∨ ¬v16 ∨ v18 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v5 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n9
    have u5 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n20
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n15
    have u6 : v2 := by
      rcases c742 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
    have u7 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u6 a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n21
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n16
    · exact absurd a n12
  have c892 : v10 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v3 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n19
      · exact a
      · exact absurd a n7
      · exact absurd a n11
    rcases c815 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c893 : ¬v19 ∨ ¬v22 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n1 a
      · exact a
    rcases c856 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
  have c894 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v22 := by
      rcases c886 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v35 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u8 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u8
    have u15 : ¬v19 := by
      rcases c893 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u8
    have u16 : ¬v10 := by
      rcases c890 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v18 := by
      rcases c889 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u8
    have u18 : v11 := by
      rcases c884 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
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
    have u19 : ¬v16 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v12 := by
      rcases c892 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u18 a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u21 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u2
      · exact a
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n3
    have u22 : v17 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u23 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u22 a
      · exact a
    rcases c856 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u8
  have c895 : v42 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v29 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n18
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n19
    have u4 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u8 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a n21
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n16
    have u9 : v17 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u10 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n13
      · exact absurd a u4
    have u12 : ¬v23 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u13 : v9 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n9
    have u14 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n2 a
    have u15 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
    have u16 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n23
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n0
    have u17 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n22
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n17
      · exact absurd a n13
    rcases c35 with a|a|a
    · exact absurd u8 a
    · exact absurd u17 a
    · exact absurd u16 a
  have c896 : v42 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v30 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n21
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v31 := by
      rcases c895 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
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
      · exact a
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
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v23 := by
      rcases c493 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a u6
      · exact a
    have u10 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u11 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u10
      · exact a
      · exact absurd a n20
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n15
    have u12 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v9 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n21
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n20
      · exact absurd a n22
    have u15 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u16 : v8 := by
      rcases c510 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
    have u17 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u16 a
      · exact absurd n2 a
      · exact a
    have u18 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n21
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n12
    have u19 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u18 a
    have u20 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u11 a
      · exact absurd u18 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a u15
    · exact absurd a n17
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n22
  have c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    rcases c824 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c898 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    rcases c349 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n6
  have c899 : v42 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v27 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n19
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v24 := by
      rcases c896 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact absurd a u1
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
    have u6 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v29 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n0
    have u11 : ¬v35 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n14
    have u12 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a n15
      · exact a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n16
    have u13 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd a n18
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n13
    have u15 : ¬v9 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n20
    have u16 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u17 : v8 := by
      rcases c510 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
    have u18 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u17 a
      · exact absurd n2 a
      · exact a
    have u19 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n19
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a u1
    have u20 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u19 a
    have u21 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u14 a
      · exact absurd u19 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a u16
    · exact absurd a n15
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a n20
  have c900 : ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v20 ∨ ¬v24 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
    have u8 : ¬v29 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n12
    have u9 : ¬v35 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n11
    have u10 : v2 := by
      rcases c510 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n12
    rcases c25 with a|a|a
    · exact absurd u10 a
    · exact absurd n0 a
    · exact absurd u11 a
  have c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n3
    have u4 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
    rcases c71 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n2 a
  have c902 : v2 ∨ v8 ∨ v9 ∨ v10 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n4
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n10
    have u3 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u2 a
    rcases c510 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c903 : v10 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u5
    have u7 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v29 := by
      rcases c902 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u9 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v24 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u11 : ¬v3 := by
      rcases c742 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u12 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n15
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v4 := by
      rcases c427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n7
    rcases c728 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u16 a
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a u15
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c904 : ¬v4 ∨ v2 ∨ ¬v3 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n7
  have c905 : v20 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v27 ∨ ¬v29 ∨ v30 ∨ v34 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n11
      · exact absurd a u1
    have u8 : ¬v24 := by
      rcases c652 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u2
    have u9 : ¬v2 := by
      rcases c816 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
    have u10 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u3
    have u11 : ¬v4 := by
      rcases c904 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u10 a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n21
    have u12 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n19
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n17
      · exact absurd a n18
    have u13 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n2 a
    have u14 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u12 a
      · exact absurd n2 a
      · exact a
    have u15 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n2 a
    have u16 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n21
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n15
    have u17 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n11
    have u18 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u9
      · exact a
    rcases c15 with a|a|a
    · exact absurd u18 a
    · exact absurd u17 a
    · exact absurd u16 a
  have c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    rcases c515 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
  have c907 : v30 ∨ v10 ∨ ¬v11 ∨ v16 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v12 := by
      rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v19 := by
      rcases c899 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v29 := by
      rcases c905 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd u3 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u10 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a n13
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n14
    have u11 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
    have u12 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n0
    rcases c432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a u12
    · exact absurd a n14
    · exact absurd a n15
  have c908 : v30 ∨ ¬v27 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v29 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
    have u7 : v43 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n3
    have u8 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n7
    have u9 : ¬v46 := by
      rcases c170 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u8 a
    rcases c204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u2
  have c909 : ¬v4 ∨ v2 ∨ v10 ∨ v11 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : v43 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
    have u3 : ¬v3 := by
      rcases c904 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n13
    have u4 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd n0 a
    have u5 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n13
  have c910 : v11 ∨ ¬v4 ∨ v10 ∨ v29 ∨ v30 ∨ v34 ∨ ¬v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v2 := by
      rcases c909 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u2 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n13
    · exact absurd a n11
    · exact absurd n1 a
  have c911 : v45 ∨ v10 ∨ v16 ∨ v18 ∨ v20 ∨ v25 ∨ v29 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v27 := by
      rcases c908 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u4 : v31 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n13
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n0
    have u5 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v11 := by
      rcases c907 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
    rcases c910 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u8 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c912 : v30 ∨ v10 ∨ v16 ∨ v20 ∨ ¬v23 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v18 := by
      rcases c911 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u1
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
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    rcases c906 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n0
  exact ⟨c863, c864, c866, c868, c883, c887, c891, c892, c893, c894, c897, c898, c901, c902, c906, c907, c908, c911, c912⟩
