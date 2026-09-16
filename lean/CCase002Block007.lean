import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 350-399 of the 2934-step refutation of ccase002: 120 core clauses and 46 earlier-derived ones give 14 more. -/
theorem CCase002_block007
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c143 : ¬v37 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c165 : ¬v45 ∨ ¬v43)
    (c166 : ¬v43 ∨ ¬v46)
    (c185 : v43 ∨ v44 ∨ v48 ∨ v47 ∨ v46 ∨ v45 ∨ v49)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c213 : ¬v26 ∨ v33 ∨ v20 ∨ v32 ∨ v34 ∨ v19 ∨ v27 ∨ v25)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c219 : v20 ∨ v27 ∨ v17 ∨ v26 ∨ v33 ∨ v18 ∨ v24 ∨ v12 ∨ ¬v19 ∨ v11 ∨ v10 ∨ v39 ∨ v40 ∨ v41)
    (c226 : v36 ∨ ¬v43 ∨ v42 ∨ v44 ∨ v2 ∨ v7 ∨ v1 ∨ v49)
    (c233 : ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v15 ∨ v34 ∨ v27 ∨ v22)
    (c239 : v13 ∨ v8 ∨ v48 ∨ v6 ∨ ¬v7 ∨ v1 ∨ v49 ∨ v14)
    (c243 : v13 ∨ v6 ∨ v25 ∨ v47 ∨ v26 ∨ v21 ∨ v27 ∨ v19 ∨ v18 ∨ v11 ∨ v14 ∨ ¬v20 ∨ v48 ∨ v49)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c257 : v12 ∨ v48 ∨ v4 ∨ v6 ∨ ¬v5 ∨ v47 ∨ v11 ∨ v46)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c289 : ¬v37 ∨ v36 ∨ v31 ∨ v45 ∨ v38 ∨ v29 ∨ v30 ∨ v44)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c298 : ¬v28 ∨ v35 ∨ v14 ∨ v34 ∨ v18 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v25 ∨ v27 ∨ v32 ∨ v21 ∨ v15)
    (c321 : ¬v32 ∨ v39 ∨ v40 ∨ v25 ∨ v31 ∨ v33 ∨ v24 ∨ v26)
    (c356 : v22 ∨ ¬v25 ∨ v23 ∨ v26 ∨ v38 ∨ v32 ∨ v18 ∨ v17 ∨ v33 ∨ v15 ∨ v29 ∨ v24 ∨ v39 ∨ v40)
    (c360 : v36 ∨ v29 ∨ v28 ∨ ¬v43 ∨ v22 ∨ v1 ∨ v3 ∨ v2 ∨ v23 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c394 : v20 ∨ v27 ∨ v18 ∨ v25 ∨ v26 ∨ v12 ∨ ¬v19 ∨ v13)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c398 : v21 ∨ v49 ∨ v20 ∨ ¬v13 ∨ v5 ∨ v16 ∨ v2 ∨ v6 ∨ v14 ∨ v12 ∨ v8 ∨ v47 ∨ v48 ∨ v9)
    (c424 : v4 ∨ v6 ∨ v18 ∨ v11 ∨ v13 ∨ v19 ∨ v5 ∨ ¬v12)
    (c466 : v19 ∨ v10 ∨ v17 ∨ v4 ∨ v18 ∨ v5 ∨ v12 ∨ ¬v11)
    (c477 : v16 ∨ v19 ∨ v46 ∨ v5 ∨ v18 ∨ v13 ∨ v2 ∨ v9 ∨ v11 ∨ v6 ∨ v10 ∨ ¬v12 ∨ v47 ∨ v48)
    (c499 : ¬v38 ∨ v31 ∨ v46 ∨ v44 ∨ v37 ∨ v30 ∨ v39 ∨ v45)
    (c509 : v27 ∨ v28 ∨ v17 ∨ v11 ∨ v20 ∨ v3 ∨ v21 ∨ v26 ∨ v5 ∨ v14 ∨ v10 ∨ ¬v13 ∨ v12 ∨ v6)
    (c513 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v32 ∨ v27 ∨ v33 ∨ v19)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c525 : v36 ∨ ¬v28 ∨ v35 ∨ v42 ∨ v22 ∨ v17 ∨ v27 ∨ v31 ∨ v24 ∨ v15 ∨ v23 ∨ v34 ∨ v41 ∨ v21)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c581 : ¬v13 ∨ v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c595 : ¬v19 ∨ v12 ∨ ¬v15 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c601 : v48 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c615 : v17 ∨ ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c620 : v21 ∨ ¬v9 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c671 : ¬v28 ∨ ¬v18 ∨ v20 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c679 : ¬v6 ∨ ¬v11 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c783 : v21 ∨ ¬v2 ∨ v13 ∨ v14 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c806 : ¬v4 ∨ ¬v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47)
    (c836 : v19 ∨ ¬v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c847 : v20 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c853 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c854 : v36 ∨ ¬v4 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c859 : ¬v33 ∨ v26 ∨ v32 ∨ v39 ∨ v40 ∨ v41)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c868 : ¬v43 ∨ ¬v19 ∨ ¬v20 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c869 : ¬v25 ∨ v17 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c872 : ¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c874 : ¬v7 ∨ v4 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c878 : v19 ∨ ¬v17 ∨ ¬v18 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c879 : v5 ∨ ¬v6 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v14 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c880 : v46 ∨ v7 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c892 : ¬v34 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c893 : v21 ∨ ¬v6 ∨ ¬v8 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c897 : v20 ∨ v13 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    : (¬v24 ∨ ¬v29 ∨ v36 ∨ v42) ∧ (v36 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v33 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v12 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v39 ∨ v40 ∨ v41) ∧ (v12 ∨ v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v27) ∧ (v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28) ∧ (v46 ∨ ¬v13 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v34 ∨ v35) ∧ (v7 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v32 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40) ∧ (v2 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v13 ∨ v16 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48) ∧ (v25 ∨ ¬v6 ∨ v13 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25) ∧ (v42 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) := by
  have c899 : v21 ∨ v13 ∨ v20 ∨ v26 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
    rcases c897 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n3
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
    · exact absurd a n15
  have c900 : v27 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n17
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n9
    have u2 : ¬v33 := by
      rcases c859 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c901 : v20 ∨ v13 ∨ v21 ∨ v26 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v33 := by
      rcases c859 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n7
    have u6 : ¬v18 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u5 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v19 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
    rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd u8 a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n17
  have c902 : v30 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v24 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
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
    rcases c615 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
  have c903 : ¬v24 ∨ ¬v29 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    rcases c856 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
  have c904 : ¬v25 ∨ ¬v29 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    rcases c856 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
  have c905 : v25 ∨ v13 ∨ v18 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v19 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
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
    have u2 : ¬v33 := by
      rcases c859 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v17 := by
      rcases c902 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    rcases c599 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd u3 a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c906 : ¬v7 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v14 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c879 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
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
  have c907 : v9 ∨ ¬v6 ∨ v8 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n9
    rcases c906 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd n10 a
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c908 : v44 ∨ ¬v6 ∨ v13 ∨ ¬v18 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n22
      · exact absurd a n21
      · exact absurd a n20
      · exact absurd a n19
      · exact absurd a n23
    have u4 : ¬v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n22
      · exact absurd a n23
    have u5 : ¬v8 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n23
    have u6 : v14 := by
      rcases c907 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u7 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n19
      · exact absurd a n15
      · exact absurd a n11
    have u9 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u8 a
    · exact absurd a n19
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n20
    · exact absurd a u4
  have c909 : v26 ∨ v13 ∨ v20 ∨ v21 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v29 := by
      rcases c899 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
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
    have u7 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v24 := by
      rcases c903 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n8
    have u11 : ¬v28 := by
      rcases c901 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : v6 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n13
    have u13 : ¬v27 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n3
    have u14 : ¬v25 := by
      rcases c904 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n8
    have u15 : v18 := by
      rcases c905 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v19 := by
      rcases c908 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd u15 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v17 := by
      rcases c878 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v11 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd u15 a
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a n0
  have c910 : v42 ∨ v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ ¬v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v27 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u2 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n16
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n0
    have u11 : v7 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u3
    have u13 : ¬v4 := by
      rcases c854 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u14 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v32 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n9
    have u16 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u13
      · exact a
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u15
    have u18 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u17 a
      · exact absurd n3 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd u17 a
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n5
  have c911 : ¬v20 ∨ ¬v4 ∨ v13 ∨ ¬v15 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v14 := by
      rcases c806 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v11 := by
      rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v12 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd n0 a
    rcases c51 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c912 : v26 ∨ v13 ∨ v21 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v20 := by
      rcases c909 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact absurd a n13
    have u2 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n13
    have u5 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v19 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u9 : v28 := by
      rcases c910 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u12
    have u16 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v32 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n3
    have u18 : ¬v16 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u19 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u21 : ¬v15 := by
      rcases c911 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u19 a
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u22 : v17 := by
      rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n2
    have u23 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u22 a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u14
    have u24 : v8 := by
      rcases c298 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u21
    have u25 : v11 := by
      rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a u23
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n13
    rcases c38 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c913 : v40 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n13
    have u4 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v19 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
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
    have u6 : v13 := by
      rcases c912 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
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
    have u7 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n0
    have u13 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v1 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a n13
    have u15 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u14 a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v6 := by
      rcases c12 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u12 a
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd u12 a
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c914 : v36 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v33 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v45 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n9 a
    have u7 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n7
    have u9 : v6 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u2
    have u10 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u6
    have u11 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n9 a
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n14
  have c915 : ¬v28 ∨ v12 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v15 := by
      rcases c595 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u2
  have c916 : ¬v7 ∨ v2 ∨ v6 ∨ ¬v13 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v46 := by
      rcases c166 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v16 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v5 := by
      rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd n3 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
    have u8 : v4 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
    rcases c31 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd n0 a
  have c917 : v42 ∨ v21 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n12
    have u4 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v20 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v13 := by
      rcases c909 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a n1
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
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v19 := by
      rcases c914 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u8 a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v28 := by
      rcases c915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v27 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n1
    have u18 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n12
      · exact absurd a n0
    have u19 : ¬v6 := by
      rcases c906 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v25 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd u8 a
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n0
    have u25 : ¬v4 := by
      rcases c854 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u18 a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u26 : ¬v3 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a n9
      · exact a
      · exact absurd a u12
    have u27 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u25
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u28 : v16 := by
      rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a u27
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u9
    have u29 : v17 := by
      rcases c509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u19
    rcases c74 with a|a|a
    · exact absurd u28 a
    · exact absurd u29 a
    · exact absurd u15 a
  have c918 : v12 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v25 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c919 : v18 ∨ ¬v13 ∨ v17 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c920 : v12 ∨ v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u3 : v11 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    have u4 : v25 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    have u5 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n1
  have c921 : v36 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v27 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v46 := by
      rcases c166 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u3 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u5 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v13 := by
      rcases c919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n6
    have u8 : v12 := by
      rcases c920 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd u7 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v28 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u6
    have u14 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u14
      · exact a
    have u17 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    rcases c321 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a n4
  have c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v14 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n0
    have u5 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u4 a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u6
  have c923 : v42 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v21 := by
      rcases c917 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n13
    have u5 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v27 := by
      rcases c921 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v13 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u11
    have u15 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v32 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n4
    have u17 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v3 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n9
    have u19 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u16
    have u20 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u21 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u22 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a n13
  have c924 : v46 ∨ ¬v13 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
    have u7 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n6
    have u9 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v1 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a n12
    have u11 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v6 := by
      rcases c12 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u8 a
    rcases c257 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u8 a
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a n0
  have c925 : ¬v27 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
  have c926 : v36 ∨ ¬v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n6
    have u3 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u4 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n8 a
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n13
  have c927 : v42 ∨ v20 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c923 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n12
    have u5 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v13 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v27 := by
      rcases c925 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u7
    have u11 : v12 := by
      rcases c926 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u10 a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v7 := by
      rcases c906 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v5 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n10
      · exact a
      · exact absurd a u12
      · exact absurd u10 a
      · exact absurd a n11
      · exact absurd a u15
      · exact absurd a u8
    have u17 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u16 a
    have u18 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u10 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a n12
  have c928 : v7 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    rcases c396 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n3
  have c929 : ¬v32 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    rcases c738 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c930 : v33 ∨ v15 ∨ v17 ∨ v18 ∨ ¬v25 ∨ v26 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n10
    have u7 : v32 := by
      rcases c356 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n12
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n11
  have c931 : v25 ∨ ¬v1 ∨ ¬v5 ∨ v6 ∨ v18 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : v12 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v32 := by
      rcases c929 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u3
    rcases c51 with a|a
    · exact absurd u4 a
    · exact absurd u2 a
  have c932 : v2 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v13 ∨ v16 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    rcases c477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a n9
    · exact absurd a n10
  have c933 : v13 ∨ ¬v1 ∨ v6 ∨ ¬v20 ∨ ¬v21 ∨ v25 ∨ v26 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v5 := by
      rcases c931 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n10
    have u6 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v2 := by
      rcases c932 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v4 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u5 a
    rcases c2 with a|a|a
    · exact absurd n1 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c934 : v25 ∨ ¬v6 ∨ v13 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v32 := by
      rcases c929 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u2
    have u4 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v7 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v5 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n2
    have u8 : ¬v1 := by
      rcases c928 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n12 a
      · exact absurd a n11
      · exact absurd a n13
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n17
    rcases c21 with a|a|a
    · exact absurd u9 a
    · exact absurd u7 a
    · exact absurd n1 a
  have c935 : v6 ∨ v4 ∨ ¬v20 ∨ ¬v21 ∨ v25 ∨ v26 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v32 := by
      rcases c929 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u4
    have u6 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v5 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd u5 a
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd u8 a
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c936 : v1 ∨ ¬v4 ∨ v6 ∨ ¬v12 ∨ v13 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v7 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u1
    have u6 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n11
    have u7 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u6 a
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a u3
  have c937 : v42 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n11
    have u4 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v21 := by
      rcases c917 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
    have u6 : v20 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
    have u7 : ¬v19 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u6 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u8 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u9 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u10 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u11 : ¬v13 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v25 := by
      rcases c930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v6 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v1 := by
      rcases c933 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u13
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v4 := by
      rcases c935 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v12 := by
      rcases c936 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u15 a
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n4
    have u19 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u15 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a n11
  have c938 : v7 ∨ ¬v20 ∨ ¬v26 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n8
    have u12 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v30 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a u11
      · exact a
      · exact absurd a n10
    have u14 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v18 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u1
    have u17 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact a
    have u18 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n1 a
    have u19 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u5
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n14
    · exact absurd a n8
  have c939 : v42 ∨ v6 ∨ v7 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v26 := by
      rcases c937 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n12
    have u4 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v20 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u8 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n0
    have u15 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u5
    have u17 : v30 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u14
      · exact a
      · exact absurd a n7
    have u18 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n0
    have u22 : v19 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a u8
    have u23 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u22 a
    rcases c613 with a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd u21 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c940 : v6 ∨ v4 ∨ ¬v7 ∨ v20 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n7
    have u4 : v19 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a u1
    have u5 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n5
    have u14 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u4 a
    rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n15
    · exact absurd a n3
    · exact absurd u3 a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a u5
  have c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u2
  have c942 : v38 ∨ v6 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v26 := by
      rcases c937 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n11
    have u4 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
    have u14 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n5
    have u15 : v30 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a n6
    have u16 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v7 := by
      rcases c939 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v4 := by
      rcases c854 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u18 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
    have u20 : v20 := by
      rcases c940 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd u18 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v19 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u20 a
      · exact absurd u2 a
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
    have u22 : v18 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u4
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u21
    have u23 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u22 a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u4
    have u26 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u4
    have u27 : v12 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u7
      · exact a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u26
    have u28 : ¬v2 := by
      rcases c783 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd u20 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u29 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v3 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u29
      · exact absurd a n7
      · exact absurd a u28
      · exact absurd a u19
      · exact absurd a n8
      · exact a
      · exact absurd a u30
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u13
  have c943 : ¬v7 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    rcases c360 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd n8 a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c944 : ¬v6 ∨ v7 ∨ v13 ∨ ¬v18 ∨ ¬v19 ∨ v20 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u3 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u4 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n11
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v1 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
    have u7 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n8
    rcases c8 with a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd n0 a
  have c945 : v7 ∨ ¬v6 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v18 := by
      rcases c944 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
    have u4 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n19
      · exact absurd a n15
      · exact absurd a n8
      · exact absurd a n11
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n22
      · exact absurd a n17
    have u7 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n3 a
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u6 a
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u5
  have c946 : v28 ∨ ¬v6 ∨ v7 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v13 := by
      rcases c945 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
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
    have u2 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n21
      · exact absurd a n16
    have u4 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    rcases c613 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd u3 a
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n0
  have c947 : v42 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n10
    have u2 : v26 := by
      rcases c937 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
    have u10 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u11 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n0
    have u15 : v6 := by
      rcases c942 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u16 : ¬v7 := by
      rcases c943 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u17 : ¬v20 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u2 a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u18 : v30 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a n5
    have u19 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v19 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u12
      · exact a
      · exact absurd a u6
      · exact absurd a u3
    rcases c946 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u15 a
    · exact absurd a u16
    · exact absurd u21 a
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c948 : ¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n1 a
      · exact a
    rcases c499 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n4
  exact ⟨c903, c914, c918, c920, c922, c924, c925, c928, c929, c932, c934, c941, c947, c948⟩
