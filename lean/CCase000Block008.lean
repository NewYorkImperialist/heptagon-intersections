import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 400-449 of the 2189-step refutation of ccase000: 125 core clauses and 46 earlier-derived ones give 19 more. -/
theorem CCase000_block008
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c39 : v4 ∨ v6 ∨ v2 ∨ v5 ∨ v7)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c63 : ¬v15 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c169 : v43 ∨ v49 ∨ v46 ∨ v48 ∨ v45 ∨ v44 ∨ v47)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c202 : v46 ∨ ¬v3 ∨ v2 ∨ v44 ∨ v4 ∨ v10 ∨ v9 ∨ v45)
    (c223 : ¬v22 ∨ v29 ∨ v30 ∨ v35 ∨ v15 ∨ v28 ∨ v23 ∨ v21)
    (c225 : v48 ∨ v13 ∨ v1 ∨ ¬v7 ∨ v8 ∨ v6 ∨ v14 ∨ v49)
    (c229 : v5 ∨ v7 ∨ v6 ∨ ¬v13 ∨ v21 ∨ v12 ∨ v14 ∨ v20)
    (c235 : v13 ∨ ¬v19 ∨ v26 ∨ v25 ∨ v20 ∨ v12 ∨ v18 ∨ v11)
    (c238 : v22 ∨ ¬v21 ∨ v27 ∨ v15 ∨ v28 ∨ v8 ∨ v14 ∨ v20)
    (c243 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v35 ∨ v49 ∨ v42)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c267 : v29 ∨ ¬v23 ∨ v31 ∨ v30 ∨ v22 ∨ v24 ∨ v17 ∨ v16)
    (c276 : v15 ∨ v7 ∨ v20 ∨ v6 ∨ v21 ∨ v8 ∨ ¬v14 ∨ v13)
    (c293 : v36 ∨ v42 ∨ v37 ∨ v1 ∨ ¬v43 ∨ v7 ∨ v44 ∨ v49)
    (c333 : v3 ∨ v10 ∨ v19 ∨ v5 ∨ v4 ∨ v18 ∨ v12 ∨ ¬v11)
    (c353 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v49 ∨ v42 ∨ v33)
    (c357 : v22 ∨ ¬v23 ∨ v30 ∨ v17 ∨ v24 ∨ v15 ∨ v16 ∨ v31)
    (c358 : v36 ∨ v42 ∨ v37 ∨ v1 ∨ ¬v43 ∨ v2 ∨ v44 ∨ v49)
    (c373 : v22 ∨ v21 ∨ v1 ∨ v49 ∨ v12 ∨ ¬v7 ∨ v6 ∨ v5 ∨ v8 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v14)
    (c380 : v35 ∨ ¬v26 ∨ v20 ∨ v25 ∨ v27 ∨ v33 ∨ v32 ∨ v28 ∨ v19 ∨ v21 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c382 : v21 ∨ v6 ∨ v5 ∨ v19 ∨ v14 ∨ ¬v13 ∨ v20 ∨ v12)
    (c390 : v46 ∨ v10 ∨ v2 ∨ v4 ∨ v45 ∨ v11 ∨ v44 ∨ ¬v3)
    (c400 : v29 ∨ ¬v22 ∨ v30 ∨ v21 ∨ v15 ∨ v23 ∨ v16 ∨ v28)
    (c402 : ¬v41 ∨ v7 ∨ v34 ∨ v33 ∨ v40 ∨ v5 ∨ v6 ∨ v38 ∨ v31 ∨ v39 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c442 : v4 ∨ ¬v2 ∨ v22 ∨ v11 ∨ v24 ∨ v16 ∨ v8 ∨ v3 ∨ v1 ∨ v23 ∨ v9 ∨ v44 ∨ v45 ∨ v46)
    (c472 : v12 ∨ v18 ∨ v4 ∨ v19 ∨ v17 ∨ v5 ∨ v10 ∨ ¬v11)
    (c523 : ¬v40 ∨ v47 ∨ v41 ∨ v48 ∨ v34 ∨ v46 ∨ v39 ∨ v33)
    (c535 : ¬v18 ∨ v25 ∨ v4 ∨ v24 ∨ v45 ∨ v19 ∨ v16 ∨ v11 ∨ v9 ∨ v12 ∨ v17 ∨ v23 ∨ v46 ∨ v47)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c593 : v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c623 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c624 : ¬v11 ∨ v3 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c627 : v18 ∨ ¬v2 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c731 : ¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31)
    (c760 : ¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c771 : ¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24)
    (c808 : v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c819 : ¬v3 ∨ v4 ∨ v5 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c858 : ¬v6 ∨ ¬v3 ∨ ¬v4 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c892 : v7 ∨ v2 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c917 : ¬v2 ∨ v1 ∨ v5 ∨ ¬v7 ∨ ¬v12 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c928 : ¬v19 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c937 : v44 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c939 : ¬v34 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c948 : v3 ∨ v2 ∨ v7 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c950 : ¬v3 ∨ ¬v1 ∨ v2 ∨ ¬v5 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c951 : v44 ∨ ¬v5 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c958 : v3 ∨ v2 ∨ v5 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c959 : ¬v24 ∨ ¬v1 ∨ v2 ∨ ¬v3 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v46 ∨ v49)
    (c960 : v47 ∨ ¬v1 ∨ v2 ∨ ¬v3 ∨ v5 ∨ ¬v9 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c961 : ¬v28 ∨ v2 ∨ v9 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    : (v20 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13 ∨ v21) ∧ (¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28) ∧ (v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46) ∧ (¬v18 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v9 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31) ∧ (v42 ∨ v24 ∨ v28 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ ¬v3 ∨ ¬v4 ∨ ¬v12 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49) ∧ (v3 ∨ v2 ∨ v7 ∨ v35 ∨ ¬v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v48 ∨ v7 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v18 ∨ v5 ∨ v12 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v4 ∨ v2 ∨ ¬v3 ∨ ¬v11 ∨ v44 ∨ v45 ∨ v46) ∧ (v2 ∨ ¬v1 ∨ ¬v3 ∨ v4 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49) := by
  have c962 : v32 ∨ v2 ∨ v9 ∨ ¬v10 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v27 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
    have u2 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n13
      · exact a
      · exact absurd a n4
    have u3 : ¬v28 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
    rcases c615 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c963 : v44 ∨ ¬v1 ∨ v2 ∨ v9 ∨ ¬v10 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u6
      · exact a
    have u11 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v28 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n0
    have u17 : v3 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n0
    have u19 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n11
    have u20 : ¬v6 := by
      rcases c16 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
      · exact absurd u19 a
    have u21 : v23 := by
      rcases c962 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u21 a
      · exact a
    rcases c715 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n10
  have c964 : v20 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n4 a
    rcases c229 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n0
  have c965 : ¬v23 ∨ v5 ∨ v6 ∨ v17 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v16 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n3
      · exact a
    have u5 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v19 := by
      rcases c69 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u5 a
    rcases c382 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd u5 a
    · exact absurd a u8
    · exact absurd a u9
  have c966 : v44 ∨ v2 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u4 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u5
      · exact a
    have u10 : v1 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n8
    have u11 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : v3 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v24 := by
      rcases c959 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
    have u18 : ¬v9 := by
      rcases c960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a u1
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v10 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u18
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v28 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n0
    have u21 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n0
    have u22 : v4 := by
      rcases c202 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n4
    have u23 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd u10 a
      · exact absurd u16 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v23 := by
      rcases c965 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n7
    have u25 : v22 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u21
      · exact a
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n0
    have u26 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a u24
    have u27 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u26 a
    rcases c223 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u27
  have c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    rcases c238 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
  have c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    rcases c720 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
  have c970 : v28 ∨ ¬v2 ∨ v7 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v1 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n12
      · exact a
      · exact absurd n17 a
      · exact absurd a n2
      · exact absurd a n18
      · exact absurd a n22
    have u2 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n22
    have u3 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n22
    have u4 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n19
    have u6 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u8 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n20
    have u9 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n21
    have u14 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n5
    have u17 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n22
    rcases c967 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n0
  have c971 : ¬v7 ∨ ¬v2 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
    have u3 : ¬v4 := by
      rcases c23 with a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u6 : ¬v12 := by
      rcases c917 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
    have u8 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n18
    have u13 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n6
    have u16 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n8
    rcases c373 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a n19
    · exact absurd a u6
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a u14
  have c972 : v8 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v13 ∨ ¬v25 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n13
    have u7 : ¬v3 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v1 := by
      rcases c10 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd u6 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u3 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
  have c973 : v23 ∨ v4 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v22 ∨ v24 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a u4
      · exact a
    have u8 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v11 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v25 := by
      rcases c972 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
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
    have u15 : v18 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n11
    have u18 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u17 a
      · exact absurd n2 a
      · exact a
    have u19 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n2 a
      · exact absurd u1 a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd n2 a
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a n15
  have c974 : v23 ∨ ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v13 ∨ ¬v22 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : v18 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u3 a
    rcases c400 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n6 a
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n8
  have c975 : v9 ∨ v10 ∨ v23 ∨ v24 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n10
    have u5 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a u6
      · exact a
    have u11 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v7 := by
      rcases c970 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v11 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v22 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd u16 a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : v4 := by
      rcases c973 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u21
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
    have u23 : ¬v1 := by
      rcases c7 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u16 a
      · exact absurd u1 a
    have u24 : ¬v6 := by
      rcases c29 with a|a|a|a
      · exact absurd u22 a
      · exact absurd u1 a
      · exact absurd u16 a
      · exact a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd u16 a
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a n12
  have c976 : ¬v4 ∨ ¬v2 ∨ v5 ∨ ¬v7 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c23 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n0 a
    rcases c625 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c977 : ¬v18 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    rcases c535 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
  have c978 : ¬v18 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    rcases c977 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c979 : ¬v18 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    rcases c978 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c980 : v11 ∨ ¬v2 ∨ v4 ∨ ¬v7 ∨ v9 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n14
      · exact a
      · exact absurd a n10
      · exact absurd a n12
    rcases c979 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c981 : v24 ∨ v9 ∨ v23 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v10 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u11
      · exact a
    have u15 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n11
    have u21 : ¬v4 := by
      rcases c976 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd u20 a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v22 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd u20 a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : v25 := by
      rcases c980 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a u21
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u24 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a n3
    have u25 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v16 := by
      rcases c731 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
    have u28 : ¬v3 := by
      rcases c819 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u29 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n10
    have u30 : v1 := by
      rcases c442 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u2 a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a u28
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c10 with a|a|a|a
    · exact absurd u30 a
    · exact absurd u2 a
    · exact absurd u20 a
    · exact absurd u29 a
  have c982 : ¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    rcases c760 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c983 : v24 ∨ v23 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u4
      · exact a
    have u8 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v9 := by
      rcases c981 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
    have u12 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n10
    have u19 : ¬v4 := by
      rcases c976 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n7
    have u21 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n9
    have u25 : ¬v3 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
      · exact absurd u24 a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u26 : ¬v17 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n6
  have c984 : ¬v9 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c985 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n1 a
    rcases c357 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
  have c986 : v24 ∨ v4 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v23 := by
      rcases c983 with a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u8
      · exact a
    have u11 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v18 := by
      rcases c985 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u13
    have u16 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n10
    have u21 : ¬v19 := by
      rcases c928 with a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u22 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n9
    have u23 : v3 := by
      rcases c333 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd u16 a
    rcases c26 with a|a|a|a
    · exact absurd u2 a
    · exact absurd u23 a
    · exact absurd u20 a
    · exact absurd u22 a
  have c987 : ¬v11 ∨ ¬v2 ∨ ¬v4 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u3 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    rcases c29 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd u3 a
  have c988 : v42 ∨ v24 ∨ v28 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
    have u5 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u6
      · exact a
    have u10 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v23 := by
      rcases c983 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u12 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v4 := by
      rcases c986 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u15 : ¬v11 := by
      rcases c987 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v3 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd u16 a
      · exact absurd u2 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u16 a
      · exact absurd u14 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u18
    · exact absurd u4 a
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a n9
  have c989 : ¬v4 ∨ ¬v1 ∨ ¬v2 ∨ v5 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c625 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c990 : v46 ∨ v24 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v28 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
    have u6 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u11
      · exact a
    have u16 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a u18
    have u20 : ¬v7 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v1 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u13
      · exact a
      · exact absurd u5 a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n8
    have u22 : ¬v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u23 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n0
    have u24 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u11
    have u25 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v19 := by
      rcases c928 with a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
    have u28 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
    rcases c472 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u4
    · exact absurd a u26
    · exact absurd u24 a
  have c991 : v44 ∨ v4 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v24 := by
      rcases c990 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u9
      · exact a
    have u12 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v17 := by
      rcases c593 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u9
    have u21 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n8
    have u25 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a n2
    have u26 : v3 := by
      rcases c333 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd u20 a
    rcases c26 with a|a|a|a
    · exact absurd u2 a
    · exact absurd u26 a
    · exact absurd u24 a
    · exact absurd u25 a
  have c992 : v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v24 := by
      rcases c990 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n1
    have u8 : v4 := by
      rcases c991 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v5 := by
      rcases c951 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u11
      · exact a
    have u13 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v17 := by
      rcases c593 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v2 := by
      rcases c966 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v11 := by
      rcases c987 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u8 a
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a n0
    have u25 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u24 a
    rcases c382 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u26
    · exact absurd u24 a
    · exact absurd a u19
    · exact absurd a u25
  have c993 : v6 ∨ ¬v3 ∨ ¬v4 ∨ ¬v12 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u5 : ¬v1 := by
      rcases c13 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
      · exact absurd n1 a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n8
  have c994 : ¬v7 ∨ ¬v3 ∨ ¬v4 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c23 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v1 := by
      rcases c13 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c358 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd n6 a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
  have c995 : v2 ∨ v7 ∨ v11 ∨ v24 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n4 a
    rcases c892 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c996 : v11 ∨ ¬v1 ∨ ¬v3 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v7 ∨ v28 ∨ v35 ∨ ¬v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c993 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v2 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n9 a
    have u6 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n10
    have u7 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v24 := by
      rcases c959 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u12 : ¬v26 := by
      rcases c995 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u13 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a u12
      · exact absurd a n13
      · exact absurd a u10
    have u14 : v27 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n13
    have u15 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v13 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n0
    rcases c964 with a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd u19 a
    · exact absurd a u17
  have c997 : ¬v35 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    rcases c402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c998 : v47 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v3 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v41 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n0
    have u4 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v6 := by
      rcases c858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n9
    have u8 : ¬v7 := by
      rcases c994 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n9
    have u9 : ¬v35 := by
      rcases c997 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v1 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n9
    have u11 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n4
    have u12 : ¬v2 := by
      rcases c1 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u13 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : v28 := by
      rcases c996 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v9 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u12
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n5
    have u22 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n0
    rcases c48 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c999 : v3 ∨ v2 ∨ v7 ∨ v35 ∨ ¬v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n5
    have u6 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v28 := by
      rcases c948 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u12 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n7
    rcases c773 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n6
  have c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n1 a
    rcases c353 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
  have c1001 : v47 ∨ ¬v1 ∨ v2 ∨ v7 ∨ ¬v28 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v41 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n5
    have u8 : v3 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v5 := by
      rcases c950 with a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u15 : v9 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n6
    have u16 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n0
    rcases c48 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c1002 : ¬v3 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c934 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n14
  have c1003 : v49 ∨ v7 ∨ ¬v28 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v41 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
    have u8 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u14 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
    have u15 : v1 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
    have u16 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v2 := by
      rcases c1001 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u20 : ¬v3 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u19 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n5
    have u22 : ¬v12 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u20
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n5
    have u23 : v4 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n6
    have u24 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n7
    rcases c5 with a|a|a|a
    · exact absurd u15 a
    · exact absurd u19 a
    · exact absurd u24 a
    · exact absurd u23 a
  have c1004 : v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v5 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    rcases c625 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1005 : v7 ∨ ¬v1 ∨ ¬v2 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v28 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v41 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n3
    have u7 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n9
    have u8 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v4 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n6
    have u13 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n9
    have u17 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v6 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd u16 a
      · exact absurd a u18
    have u21 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u20 a
      · exact absurd n2 a
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u17
    · exact absurd u20 a
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n7
  have c1006 : v48 ∨ v7 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v28 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u2 : v41 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
    have u4 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u7 : v1 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
    have u8 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n7
    have u9 : ¬v2 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u10 : v3 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u11 : ¬v5 := by
      rcases c950 with a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd u7 a
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u12 : ¬v4 := by
      rcases c998 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u13 : v10 := by
      rcases c390 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u10 a
    have u14 : v6 := by
      rcases c39 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n1
    have u15 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u13 a
      · exact a
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd u14 a
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n6
  have c1007 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    rcases c380 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1008 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1007 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1009 : ¬v18 ∨ v5 ∨ v12 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v26 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n5
    rcases c1008 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1010 : v4 ∨ v2 ∨ ¬v3 ∨ ¬v11 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n3 a
      · exact a
    rcases c202 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
  have c1011 : v2 ∨ ¬v1 ∨ ¬v3 ∨ v4 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c1010 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v24 := by
      rcases c959 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n14
    have u4 : v10 := by
      rcases c390 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd n2 a
    have u5 : ¬v23 := by
      rcases c985 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a u5
  exact ⟨c964, c967, c968, c969, c979, c982, c984, c985, c988, c992, c993, c997, c999, c1000, c1006, c1008, c1009, c1010, c1011⟩
