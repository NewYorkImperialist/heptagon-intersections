import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 450-499 of the 2189-step refutation of ccase000: 120 core clauses and 47 earlier-derived ones give 28 more. -/
theorem CCase000_block009
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c44 : ¬v8 ∨ ¬v13)
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
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c79 : ¬v19 ∨ ¬v20)
    (c82 : ¬v22 ∨ ¬v23)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
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
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c152 : ¬v48 ∨ ¬v43)
    (c169 : v43 ∨ v49 ∨ v46 ∨ v48 ∨ v45 ∨ v44 ∨ v47)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c216 : v18 ∨ v8 ∨ v17 ∨ v3 ∨ v1 ∨ v15 ∨ v11 ∨ v9 ∨ ¬v10 ∨ v30 ∨ v24 ∨ v2 ∨ v31 ∨ v32)
    (c221 : ¬v23 ∨ v22 ∨ v9 ∨ v10 ∨ v33 ∨ v8 ∨ v15 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v16)
    (c225 : v48 ∨ v13 ∨ v1 ∨ ¬v7 ∨ v8 ∨ v6 ∨ v14 ∨ v49)
    (c235 : v13 ∨ ¬v19 ∨ v26 ∨ v25 ∨ v20 ∨ v12 ∨ v18 ∨ v11)
    (c243 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v35 ∨ v49 ∨ v42)
    (c250 : v46 ∨ v6 ∨ ¬v5 ∨ v4 ∨ v13 ∨ v11 ∨ v47 ∨ v12)
    (c256 : v36 ∨ ¬v43 ∨ v37 ∨ v7 ∨ v2 ∨ v1 ∨ v44 ∨ v49)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c286 : ¬v34 ∨ v41 ∨ v27 ∨ v35 ∨ v40 ∨ v26 ∨ v28 ∨ v33)
    (c309 : ¬v32 ∨ v39 ∨ v25 ∨ v33 ∨ v26 ∨ v40 ∨ v24 ∨ v31)
    (c332 : v4 ∨ v7 ∨ v3 ∨ v12 ∨ v45 ∨ v18 ∨ v47 ∨ v19 ∨ v21 ∨ v10 ∨ ¬v11 ∨ v14 ∨ v46 ∨ v13)
    (c358 : v36 ∨ v42 ∨ v37 ∨ v1 ∨ ¬v43 ∨ v2 ∨ v44 ∨ v49)
    (c390 : v46 ∨ v10 ∨ v2 ∨ v4 ∨ v45 ∨ v11 ∨ v44 ∨ ¬v3)
    (c401 : v15 ∨ ¬v16 ∨ v23 ∨ v9 ∨ v10 ∨ v24 ∨ v17 ∨ v8)
    (c412 : ¬v42 ∨ v36 ∨ v29 ∨ v35 ∨ v49 ∨ v41 ∨ v48 ∨ v34)
    (c434 : v15 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ v8)
    (c444 : ¬v32 ∨ v39 ∨ v25 ∨ v40 ∨ v38 ∨ v33 ∨ v26 ∨ v31)
    (c461 : ¬v34 ∨ v41 ∨ v23 ∨ v29 ∨ v28 ∨ v27 ∨ v49 ∨ v48 ∨ v47 ∨ v35 ∨ v33 ∨ v37 ∨ v30 ∨ v40)
    (c504 : v19 ∨ v32 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v17 ∨ ¬v10 ∨ v11 ∨ v9 ∨ v24 ∨ v30 ∨ v31 ∨ v16)
    (c505 : v5 ∨ v12 ∨ v26 ∨ v24 ∨ v25 ∨ v17 ∨ ¬v19 ∨ v20 ∨ v10 ∨ v13 ∨ v18 ∨ v46 ∨ v47 ∨ v48)
    (c562 : ¬v3 ∨ ¬v8 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c593 : v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c628 : ¬v16 ∨ v8 ∨ v9 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c671 : v6 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c700 : ¬v7 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c735 : v18 ∨ v3 ∨ ¬v4 ∨ ¬v7 ∨ v8 ∨ v11 ∨ v13 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c808 : v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c820 : v4 ∨ ¬v13 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c833 : ¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c848 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c853 : ¬v13 ∨ v5 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v47)
    (c855 : ¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c867 : v26 ∨ v5 ∨ v12 ∨ v13 ∨ v25 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c899 : ¬v24 ∨ ¬v16 ∨ v23 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c905 : v5 ∨ v6 ∨ v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c906 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c917 : ¬v2 ∨ v1 ∨ v5 ∨ ¬v7 ∨ ¬v12 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c944 : v15 ∨ v2 ∨ v3 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v21 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c950 : ¬v3 ∨ ¬v1 ∨ v2 ∨ ¬v5 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c955 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c984 : ¬v9 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c985 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c992 : v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1006 : v48 ∨ v7 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c1010 : v4 ∨ v2 ∨ ¬v3 ∨ ¬v11 ∨ v44 ∨ v45 ∨ v46)
    (c1011 : v2 ∨ ¬v1 ∨ ¬v3 ∨ v4 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    : (v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32) ∧ (¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32) ∧ (v24 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45) ∧ (¬v11 ∨ ¬v2 ∨ v3 ∨ ¬v7 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47) ∧ (¬v10 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49) ∧ (v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v30 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (¬v31 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (¬v4 ∨ ¬v2 ∨ ¬v7 ∨ v11 ∨ v45 ∨ v46 ∨ v47) ∧ (v2 ∨ v3 ∨ v4 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46) ∧ (v4 ∨ v2 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v33 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24) ∧ (v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44) ∧ (v29 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ ¬v34 ∨ v37 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ v33 ∨ v40 ∨ v47) ∧ (v6 ∨ v13 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v32 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (v24 ∨ v2 ∨ v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v44 ∨ v2 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v26 ∨ ¬v24 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ ¬v2 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ ¬v43 ∨ v45 ∨ v46 ∨ v47) ∧ (v27 ∨ v4 ∨ v10 ∨ v11 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n2 a
      · exact a
    rcases c593 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1013 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1012 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1014 : v11 ∨ v2 ∨ v3 ∨ v4 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c1013 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    rcases c955 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a n0
  have c1015 : v4 ∨ ¬v1 ∨ v2 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v3 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
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
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v11 := by
      rcases c1014 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
    have u6 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n13
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n14
  have c1016 : v44 ∨ v2 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v41 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v7 := by
      rcases c1006 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
    have u4 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n2
    have u11 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v1 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
    have u17 : v4 := by
      rcases c1015 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u18 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact absurd u2 a
      · exact a
    have u19 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact absurd u2 a
      · exact a
    have u20 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u17 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n0
    have u24 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n0
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a n3
  have c1017 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v5 := by
      rcases c28 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v1 := by
      rcases c7 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v6 := by
      rcases c29 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v3 := by
      rcases c23 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u5 : ¬v48 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n8
  have c1018 : v22 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n7 a
      · exact a
    rcases c221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n5
  have c1019 : v24 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v23 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u2 a
    rcases c1018 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
  have c1020 : ¬v11 ∨ ¬v2 ∨ v3 ∨ ¬v7 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v1 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
    have u7 : v24 := by
      rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u8 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u7 a
    rcases c867 with a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n12
  have c1021 : v3 ∨ ¬v2 ∨ v4 ∨ ¬v7 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v11 := by
      rcases c1020 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u2 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    have u3 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v24 := by
      rcases c1013 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v23 := by
      rcases c985 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
    have u9 : ¬v12 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
    have u10 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v5 := by
      rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
    have u13 : v6 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a u9
    rcases c30 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u12 a
    · exact absurd n3 a
    · exact absurd u13 a
  have c1022 : ¬v10 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
  have c1023 : v11 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v5 ∨ ¬v7 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
    have u2 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c1013 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v23 := by
      rcases c985 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v12 := by
      rcases c917 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
    have u8 : v26 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a u2
      · exact a
      · exact absurd a n16
      · exact absurd a n10
    rcases c97 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1024 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v41 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
    have u3 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n0
    have u8 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v2 := by
      rcases c1016 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v7 := by
      rcases c1006 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u14 : ¬v4 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u15 : v3 := by
      rcases c1021 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact absurd u12 a
    have u17 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd u12 a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact absurd u12 a
    have u19 : ¬v10 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd u13 a
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v11 := by
      rcases c1023 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd u13 a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u20 a
      · exact a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd u13 a
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a n6
  have c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n1 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u2
  have c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n1 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u2
  have c1027 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c23 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c28 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c625 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1028 : v2 ∨ v3 ∨ v4 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v11 := by
      rcases c1014 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
    rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n12
  have c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v11 := by
      rcases c1010 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c390 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd n0 a
  have c1030 : v4 ∨ v2 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v3 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    rcases c1029 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1031 : v6 ∨ v5 ∨ ¬v23 ∨ v24 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v34 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n5
    have u6 : ¬v13 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    rcases c715 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n12
  have c1032 : v33 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v5 := by
      rcases c32 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n16
    have u5 : ¬v23 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n16
      · exact a
      · exact absurd a u5
    have u7 : ¬v19 := by
      rcases c69 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v22 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u13 : v8 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u10
      · exact a
    have u14 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u15 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v34 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a n15
    · exact absurd a u16
    · exact absurd a n10
    · exact absurd a n14
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a n0
  have c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n1 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u3
  have c1034 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c899 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u1
  have c1035 : v15 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n4 a
      · exact a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
  have c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1035 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n0
  have c1038 : v2 ∨ v10 ∨ ¬v11 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
    have u5 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v24 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v23 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n3
    have u16 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v32 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u12
    have u20 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n6
    have u21 : v3 := by
      rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n4
    have u22 : v4 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v7 := by
      rcases c32 with a|a|a|a
      · exact absurd u20 a
      · exact absurd u21 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v1 := by
      rcases c950 with a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n0
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c256 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u4 a
    · exact absurd a u9
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a n3
    · exact absurd a n8
  have c1039 : v40 ∨ ¬v1 ∨ ¬v3 ∨ ¬v4 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c11 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v32 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n6
    have u8 : ¬v13 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
    have u9 : v34 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n10
      · exact absurd a n12
    have u10 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u9 a
      · exact a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n7
  have c1040 : v46 ∨ v2 ∨ v9 ∨ v10 ∨ ¬v23 ∨ v24 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v11 := by
      rcases c1038 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
    have u7 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v32 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u15
    have u18 : v4 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
    have u19 : v3 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n7
    have u20 : ¬v1 := by
      rcases c1039 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v7 := by
      rcases c256 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u6 a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n10
    have u22 : ¬v5 := by
      rcases c32 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
      · exact absurd u18 a
    have u23 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact absurd u21 a
      · exact a
    have u24 : v35 := by
      rcases c1032 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd u19 a
      · exact absurd u18 a
      · exact absurd u21 a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u25 : v34 := by
      rcases c905 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u16
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    rcases c124 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1041 : v29 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ ¬v34 ∨ v37 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n6 a
      · exact a
    rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n8
  have c1042 : ¬v34 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1043 : v47 ∨ v2 ∨ v9 ∨ v10 ∨ v24 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c1040 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v8 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n5
    have u12 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n5
      · exact a
      · exact absurd a u1
    have u13 : ¬v19 := by
      rcases c69 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v22 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u15
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n5
    have u18 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n6
    have u19 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
    have u24 : ¬v34 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd u11 a
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u24
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
  have c1044 : v2 ∨ ¬v3 ∨ ¬v4 ∨ ¬v5 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c32 with a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v1 := by
      rcases c950 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
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
      rcases c131 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u3 a
    rcases c256 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n9
  have c1045 : v1 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ ¬v9 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v7 := by
      rcases c256 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    rcases c632 with a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n9
    · exact absurd a n10
  have c1046 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
    have u2 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u1 a
      · exact a
    rcases c235 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n2
  have c1047 : v6 ∨ v13 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v34 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1048 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd n0 a
      · exact a
    rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1049 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1048 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c1050 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1049 with a|a|a|a|a|a|a|a|a|a|a|a
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
  have c1051 : v24 ∨ v2 ∨ v10 ∨ v23 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
    have u3 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v4 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n6
    have u14 : ¬v5 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v9 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v1 := by
      rcases c1045 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd u12 a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    have u20 : ¬v26 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v27 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u20
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n8
    have u22 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u4
      · exact a
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a u11
    have u23 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u21 a
      · exact a
    rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n1 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u3
  have c1053 : v24 ∨ v2 ∨ v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v10 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a n2
    have u17 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v22 := by
      rcases c628 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u18
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    have u21 : v4 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n5
    have u22 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n6
    have u26 : ¬v34 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v3 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u21 a
      · exact absurd u25 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u28 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u26
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u29 : v1 := by
      rcases c216 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u27
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
    rcases c17 with a|a|a|a
    · exact absurd u29 a
    · exact absurd u25 a
    · exact absurd u28 a
    · exact absurd u21 a
  have c1054 : v24 ∨ v2 ∨ v9 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v23 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v18 := by
      rcases c985 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
    have u18 : v10 := by
      rcases c1040 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v4 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u24 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n7
    have u25 : ¬v3 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : ¬v7 := by
      rcases c735 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd u23 a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u27 : v1 := by
      rcases c256 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n9
    have u28 : ¬v6 := by
      rcases c17 with a|a|a|a
      · exact absurd u27 a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
    have u29 : v34 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd u18 a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u30 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u29 a
      · exact a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u30
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u15
  have c1055 : v2 ∨ v24 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v23 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v9 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a
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
    have u16 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v5 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n6
    have u21 : v4 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n5
    have u22 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u5
    have u23 : ¬v3 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u21 a
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u25 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v7 := by
      rcases c944 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a u23
      · exact a
      · exact absurd u15 a
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
    have u28 : v1 := by
      rcases c434 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd u15 a
      · exact absurd a u25
      · exact absurd a u23
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u18
    rcases c18 with a|a|a|a
    · exact absurd u28 a
    · exact absurd u21 a
    · exact absurd u27 a
    · exact absurd u20 a
  have c1056 : v44 ∨ v2 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v24 := by
      rcases c1055 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v17 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
    have u18 : v9 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v34 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u17 a
    have u24 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u17 a
    have u25 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u18 a
      · exact a
    have u26 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u18 a
      · exact a
    have u27 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u18 a
      · exact a
    have u28 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u18 a
    have u29 : v5 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n5
    have u30 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u2
    have u31 : v4 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u32 : ¬v7 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u33 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u30 a
      · exact absurd u31 a
    rcases c944 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd u18 a
    · exact absurd a u27
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n0
  have c1058 : v27 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v5 := by
      rcases c27 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : v11 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    rcases c55 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1059 : v21 ∨ ¬v2 ∨ v13 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n21
    have u2 : ¬v4 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v11 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n19
    have u4 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n20
    have u8 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
      · exact absurd u1 a
    rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a n18
    · exact absurd a n3
    · exact absurd a n20
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd u3 a
    · exact absurd a u5
    · exact absurd a n19
    · exact absurd a n2
  have c1060 : v26 ∨ ¬v24 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v2 := by
      rcases c1056 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v34 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v17 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
    have u18 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v13 := by
      rcases c1059 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u6 a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v4 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u27 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n5
    have u28 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u27 a
      · exact absurd u26 a
    have u29 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd u26 a
      · exact absurd u6 a
      · exact a
      · exact absurd u27 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd u6 a
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u22
  have c1061 : ¬v13 ∨ ¬v2 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ ¬v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v48 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n11 a
    have u6 : v3 := by
      rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u7 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
    have u8 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd u7 a
    have u9 : ¬v6 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a u5
  have c1062 : v27 ∨ v4 ∨ v10 ∨ v11 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v2 := by
      rcases c1056 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v24 := by
      rcases c1060 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
    have u5 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v13 := by
      rcases c1061 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v25 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u16 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v34 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n6
    have u20 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n9
    have u21 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    rcases c818 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd u19 a
    · exact absurd a u21
    · exact absurd u20 a
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  exact ⟨c1012, c1013, c1019, c1020, c1022, c1024, c1025, c1026, c1027, c1028, c1029, c1030, c1033, c1034, c1036, c1037, c1041, c1042, c1046, c1047, c1050, c1052, c1053, c1056, c1058, c1060, c1061, c1062⟩
