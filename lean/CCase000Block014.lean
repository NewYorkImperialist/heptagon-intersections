import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 700-749 of the 2189-step refutation of ccase000: 119 core clauses and 57 earlier-derived ones give 22 more. -/
theorem CCase000_block014
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v3 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c52 : ¬v10 ∨ ¬v12)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c59 : ¬v14 ∨ ¬v12)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c67 : ¬v16 ∨ ¬v17)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c127 : ¬v38 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c145 : ¬v42 ∨ ¬v40)
    (c148 : ¬v44 ∨ ¬v43)
    (c158 : ¬v49 ∨ ¬v44)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c224 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v47 ∨ v40 ∨ v48)
    (c233 : ¬v32 ∨ v39 ∨ v25 ∨ v38 ∨ v33 ∨ v26 ∨ v24 ∨ v31)
    (c235 : v13 ∨ ¬v19 ∨ v26 ∨ v25 ∨ v20 ∨ v12 ∨ v18 ∨ v11)
    (c271 : ¬v20 ∨ v28 ∨ v14 ∨ v27 ∨ v21 ∨ v12 ∨ v19 ∨ v13)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c312 : v36 ∨ ¬v35 ∨ v42 ∨ v41 ∨ v22 ∨ v34 ∨ v29 ∨ v28)
    (c319 : v36 ∨ ¬v29 ∨ v22 ∨ v28 ∨ v23 ∨ v35 ∨ v30 ∨ v42)
    (c320 : v1 ∨ v9 ∨ v4 ∨ v3 ∨ v15 ∨ v18 ∨ v24 ∨ ¬v11 ∨ v10 ∨ v12 ∨ v19 ∨ v8 ∨ v25 ∨ v26)
    (c321 : ¬v31 ∨ v4 ∨ v23 ∨ v24 ∨ v2 ∨ v38 ∨ v39 ∨ v3 ∨ v22 ∨ v32 ∨ v36 ∨ v29 ∨ v30 ∨ v45)
    (c325 : ¬v49 ∨ v7 ∨ v4 ∨ v42 ∨ v39 ∨ v1 ∨ v41 ∨ v13 ∨ v8 ∨ v14 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c345 : v4 ∨ ¬v3 ∨ v2 ∨ v10 ∨ v46 ∨ v45 ∨ v9 ∨ v11)
    (c349 : v43 ∨ ¬v35 ∨ v42 ∨ v48 ∨ v24 ∨ v22 ∨ v31 ∨ v30 ∨ v41 ∨ v28 ∨ v29 ∨ v34 ∨ v38 ∨ v49)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c356 : v22 ∨ v28 ∨ v6 ∨ v47 ∨ v27 ∨ v13 ∨ v21 ∨ v19 ∨ v8 ∨ v12 ∨ v15 ∨ ¬v20 ∨ v48 ∨ v49)
    (c369 : v4 ∨ v6 ∨ v2 ∨ v13 ∨ v5 ∨ v9 ∨ v10 ∨ v18 ∨ v16 ∨ v17 ∨ ¬v3 ∨ v45 ∨ v46 ∨ v48)
    (c379 : v12 ∨ ¬v25 ∨ v33 ∨ v32 ∨ v35 ∨ v18 ∨ v24 ∨ v11 ∨ v17 ∨ v27 ∨ v26 ∨ v28 ∨ v21 ∨ v10)
    (c391 : v36 ∨ v29 ∨ v38 ∨ v37 ∨ ¬v30 ∨ v31 ∨ v23 ∨ v24)
    (c409 : ¬v44 ∨ v37 ∨ v4 ∨ v3 ∨ v2 ∨ v24 ∨ v23 ∨ v30 ∨ v36 ∨ v22 ∨ v39 ∨ v43 ∨ v45 ∨ v46)
    (c427 : ¬v12 ∨ v6 ∨ v18 ∨ v5 ∨ v11 ∨ v4 ∨ v19 ∨ v13)
    (c437 : v36 ∨ ¬v29 ∨ v37 ∨ v42 ∨ v22 ∨ v28 ∨ v35 ∨ v30)
    (c440 : v36 ∨ ¬v32 ∨ v46 ∨ v39 ∨ v24 ∨ v29 ∨ v40 ∨ v33 ∨ v22 ∨ v30 ∨ v31 ∨ v45 ∨ v25 ∨ v47)
    (c444 : ¬v32 ∨ v39 ∨ v25 ∨ v40 ∨ v38 ∨ v33 ∨ v26 ∨ v31)
    (c449 : ¬v44 ∨ v43 ∨ v2 ∨ v1 ∨ v37 ∨ v36 ∨ v38 ∨ v45)
    (c458 : ¬v39 ∨ v32 ∨ v38 ∨ v40 ∨ v31 ∨ v45 ∨ v46 ∨ v47)
    (c464 : ¬v27 ∨ v21 ∨ v19 ∨ v20 ∨ v34 ∨ v26 ∨ v28 ∨ v35)
    (c482 : ¬v44 ∨ v43 ∨ v3 ∨ v2 ∨ v36 ∨ v37 ∨ v38 ∨ v45)
    (c528 : ¬v25 ∨ v19 ∨ v45 ∨ v31 ∨ v32 ∨ v27 ∨ v18 ∨ v24 ∨ v26 ∨ v39 ∨ v34 ∨ v20 ∨ v46 ∨ v47)
    (c541 : v22 ∨ v21 ∨ v23 ∨ v14 ∨ v28 ∨ v16 ∨ ¬v15 ∨ v8)
    (c550 : ¬v44 ∨ v36 ∨ v41 ∨ v2 ∨ v3 ∨ v8 ∨ v37 ∨ v10 ∨ v9 ∨ v6 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c599 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c806 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c841 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c848 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c896 : ¬v5 ∨ ¬v1 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c906 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c912 : ¬v31 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c979 : ¬v18 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c984 : ¬v9 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c985 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c988 : v42 ∨ v24 ∨ v28 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c992 : v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1008 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1009 : ¬v18 ∨ v5 ∨ v12 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1050 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1079 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1117 : ¬v27 ∨ ¬v33 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1182 : ¬v31 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c1185 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v38 ∨ v39)
    (c1187 : v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1208 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1226 : v22 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1228 : v36 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v41 ∨ v42)
    (c1243 : v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1256 : v12 ∨ v6 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1258 : v40 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1261 : ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1262 : v11 ∨ v4 ∨ v9 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    : (¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26) ∧ (v33 ∨ v5 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v5 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v32 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v6 ∨ v13 ∨ v28 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v25 ∨ v4 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v20 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v45 ∨ v12 ∨ v13 ∨ v24 ∨ v28 ∨ v34 ∨ v38 ∨ ¬v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v22 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v28 ∨ v29 ∨ v36 ∨ v43) ∧ (¬v22 ∨ v5 ∨ v12 ∨ v33 ∨ v40 ∨ v47) ∧ (¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42) ∧ (v38 ∨ v1 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v13 ∨ v24 ∨ v28 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v22 ∨ ¬v31 ∨ v38 ∨ v39) ∧ (¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43) ∧ (¬v9 ∨ v1 ∨ v4 ∨ v21 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ v36 ∨ v39 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47) ∧ (v31 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v22 ∨ v5 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v47) ∧ (v13 ∨ v1 ∨ v12 ∨ v24 ∨ v28 ∨ v34 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v36 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v28 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v13 ∨ v24 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd n0 a
      · exact a
    rcases c235 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
  have c1264 : v33 ∨ v5 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v11 := by
      rcases c1263 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v10 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c51 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1265 : v5 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    rcases c1264 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1266 : v45 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v5 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v40 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u12
    have u17 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n9
    have u21 : v11 := by
      rcases c1262 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n12
    have u26 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd u21 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n0
    have u27 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a n5
    have u28 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a n5
    have u29 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a u1
      · exact a
    have u30 : ¬v19 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u31 : ¬v2 := by
      rcases c4 with a|a|a|a
      · exact absurd u29 a
      · exact absurd u26 a
      · exact absurd u25 a
      · exact a
    have u32 : v20 := by
      rcases c464 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u28
      · exact absurd a u30
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
    have u33 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u32 a
    rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u31
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u33
    · exact absurd a u19
    · exact absurd a u34
    · exact absurd u26 a
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n11
  have c1267 : v45 ∨ ¬v1 ∨ ¬v12 ∨ v23 ∨ v24 ∨ v28 ∨ v35 ∨ ¬v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v2 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
    have u10 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n0
    rcases c345 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u10 a
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u3
  have c1268 : ¬v38 ∨ v2 ∨ v3 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n7 a
      · exact a
    rcases c550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1269 : v47 ∨ v6 ∨ v13 ∨ ¬v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v12 := by
      rcases c1266 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
    have u16 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n4
    have u17 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u2
    have u18 : v1 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd u15 a
      · exact absurd a u11
      · exact a
      · exact absurd a n12
    have u19 : ¬v40 := by
      rcases c1267 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u18 a
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v33 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u21 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a n5
    have u22 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v5 := by
      rcases c427 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u22
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a n2
    have u25 : ¬v2 := by
      rcases c9 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u15 a
      · exact absurd u24 a
    have u26 : ¬v3 := by
      rcases c15 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u24 a
      · exact a
      · exact absurd u15 a
    have u27 : ¬v38 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u28 : v31 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a u27
      · exact absurd a n9
    have u29 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v39 := by
      rcases c912 with a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u19
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    rcases c1182 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u29
    · exact absurd a u20
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd a u19
  have c1270 : v28 ∨ v6 ∨ v13 ∨ ¬v27 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v35 := by
      rcases c1269 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v36 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n0
    have u10 : v38 := by
      rcases c349 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a n11
    rcases c127 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1271 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1226 with a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1272 : v30 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v31 ∨ ¬v32 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n6 a
      · exact a
    rcases c440 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n6 a
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a n12
  have c1273 : v30 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ ¬v32 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n5 a
    rcases c1272 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1274 : ¬v32 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1273 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1275 : v45 ∨ v6 ∨ v13 ∨ v28 ∨ v34 ∨ ¬v38 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v27 := by
      rcases c1270 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v12 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a n6
    have u8 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
    have u9 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v32 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u10
      · exact a
      · exact absurd a u2
    have u16 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n7
    rcases c1274 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
  have c1276 : v12 ∨ v6 ∨ v13 ∨ v15 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v14 := by
      rcases c271 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n2
    have u2 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    rcases c356 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n11
    · exact absurd a n12
  have c1277 : v6 ∨ v13 ∨ v28 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v38 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v27 := by
      rcases c1270 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a n4
    have u7 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
    have u8 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v12 := by
      rcases c1276 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v5 := by
      rcases c427 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n1
    have u22 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n10
    have u23 : v1 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd u22 a
      · exact absurd a u19
      · exact a
      · exact absurd a n10
    have u24 : v31 := by
      rcases c896 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd u23 a
      · exact absurd u22 a
      · exact absurd a u15
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u25 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u24 a
      · exact a
    rcases c607 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a n3
  have c1278 : v25 ∨ v4 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n9
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    rcases c979 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1279 : v20 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : v19 := by
      rcases c528 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    rcases c288 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u3 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
  have c1280 : v37 ∨ ¬v1 ∨ ¬v6 ∨ ¬v7 ∨ v36 ∨ v38 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v2 := by
      rcases c10 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n6 a
      · exact a
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n7
  have c1281 : v5 ∨ v13 ∨ v15 ∨ v17 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n14
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v7 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v1 := by
      rcases c1280 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a n16
    have u6 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u5
    have u7 : v2 := by
      rcases c449 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
    have u8 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v3 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n13
    · exact absurd a n16
  have c1282 : v37 ∨ v11 ∨ v12 ∨ v13 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v30 := by
      rcases c391 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n15
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u3 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u4 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u5 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v25 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u11 : v18 := by
      rcases c1279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u12 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v5 := by
      rcases c1281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u16 : ¬v2 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
    have u17 : v3 := by
      rcases c409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd a n18
    have u18 : v1 := by
      rcases c449 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    rcases c14 with a|a|a|a
    · exact absurd u18 a
    · exact absurd u15 a
    · exact absurd u17 a
    · exact absurd u3 a
  have c1283 : ¬v1 ∨ ¬v6 ∨ ¬v7 ∨ v36 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c10 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n6 a
      · exact a
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
  have c1284 : v29 ∨ v12 ∨ v13 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n14
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v11 := by
      rcases c1282 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n20
    have u7 : ¬v1 := by
      rcases c1283 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u6 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd u1 a
      · exact absurd a n16
    have u8 : v2 := by
      rcases c449 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n16
    have u9 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u6 a
      · exact absurd u2 a
    have u10 : ¬v3 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u11 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n16
    have u12 : v25 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n12
      · exact absurd a n16
    have u13 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u12 a
    rcases c528 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u13
    · exact absurd a n16
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a n13
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a n17
    · exact absurd a n18
  have c1285 : v45 ∨ v12 ∨ v13 ∨ v24 ∨ v28 ∨ v34 ∨ v38 ∨ ¬v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : v23 := by
      rcases c1284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v18 := by
      rcases c985 with a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
    have u18 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n10
    have u19 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u2
    have u20 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n13
    have u23 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n4
    have u24 : ¬v1 := by
      rcases c1283 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u22 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd u5 a
      · exact absurd a n0
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u24
  have c1286 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v28 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n1
  have c1287 : ¬v22 ∨ v5 ∨ v12 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1187 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1288 : v7 ∨ v1 ∨ v13 ∨ ¬v17 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n7
    rcases c599 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c1289 : v7 ∨ v1 ∨ ¬v6 ∨ v12 ∨ v13 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v17 := by
      rcases c1288 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u2 : v5 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u5 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u6 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u7 : ¬v2 := by
      rcases c24 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u6 a
      · exact absurd n2 a
    have u8 : v9 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n11
      · exact a
      · exact absurd a u5
    have u9 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u8 a
      · exact a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n15
  have c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1228 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c1291 : v38 ∨ v1 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v13 ∨ v24 ∨ v28 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u2 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u4 : v31 := by
      rcases c1289 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v39 := by
      rcases c912 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n12
    have u9 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u13 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n6
    rcases c1182 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n9
  have c1292 : v28 ∨ v1 ∨ v4 ∨ v12 ∨ ¬v14 ∨ v24 ∨ v29 ∨ v32 ∨ v36 ∨ v39 ∨ v43 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u6 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n1
    rcases c1215 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n0
  have c1293 : ¬v22 ∨ ¬v31 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n1 a
      · exact a
    rcases c1185 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
  have c1294 : v43 ∨ v1 ∨ v4 ∨ v9 ∨ v10 ∨ v12 ∨ v17 ∨ v24 ∨ v28 ∨ ¬v31 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v14 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n14
    have u5 : ¬v22 := by
      rcases c1293 with a|a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v8 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n0
    have u7 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n14
    have u9 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u8 a
      · exact a
    rcases c1182 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1286 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1296 : v17 ∨ v1 ∨ v4 ∨ v12 ∨ v13 ∨ v24 ∨ v28 ∨ ¬v31 ∨ v35 ∨ v36 ∨ v38 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v39 := by
      rcases c912 with a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v14 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n14
    have u6 : ¬v22 := by
      rcases c1293 with a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n10
      · exact absurd a u4
    have u7 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n12
    have u8 : v9 := by
      rcases c1294 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n14
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v25 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n14
    have u12 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
    have u13 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n1
    have u14 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v18 := by
      rcases c379 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u7
    rcases c63 with a|a
    · exact absurd u13 a
    · exact absurd u16 a
  have c1297 : ¬v9 ∨ v1 ∨ v4 ∨ v21 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ v36 ∨ v39 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n1
    have u5 : ¬v18 := by
      rcases c63 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v23 := by
      rcases c541 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a u2
    have u8 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v32 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a u5
      · exact a
      · exact absurd a n9
    rcases c1274 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1298 : v31 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
    rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1299 : ¬v22 ∨ v5 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v33 := by
      rcases c1287 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    rcases c839 with a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1300 : v13 ∨ v1 ∨ v5 ∨ v12 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v32 ∨ v36 ∨ v39 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : v25 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n12
      · exact a
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a u1
    have u5 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v11 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u9 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n1
    rcases c42 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c1301 : v2 ∨ v1 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v39 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v32 := by
      rcases c1300 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v14 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
    have u3 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v9 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : v11 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n18
      · exact absurd a n17
      · exact absurd a u4
      · exact a
    have u6 : v8 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
    rcases c42 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1302 : v31 ∨ v1 ∨ v4 ∨ ¬v6 ∨ ¬v7 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v24 ∨ v28 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n18
    have u2 : ¬v2 := by
      rcases c26 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : ¬v5 := by
      rcases c34 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u4 : v44 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u6 : ¬v22 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n20
    have u7 : ¬v49 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a u7
    have u9 : v29 := by
      rcases c1301 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u10 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v23 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a n10
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n16
    have u14 : v26 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n20
    rcases c90 with a|a
    · exact absurd u13 a
    · exact absurd u14 a
  have c1303 : v31 ∨ v1 ∨ v4 ∨ ¬v10 ∨ v22 ∨ v24 ∨ v28 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v29 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n10
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v23 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n9
    have u8 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n11
    rcases c985 with a|a|a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n0
  have c1304 : v39 ∨ v1 ∨ v4 ∨ ¬v6 ∨ ¬v7 ∨ v12 ∨ v13 ∨ v17 ∨ v24 ∨ v28 ∨ v31 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v22 := by
      rcases c1303 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u4 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v32 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n10
  have c1305 : v47 ∨ v1 ∨ v12 ∨ v13 ∨ v17 ∨ v24 ∨ v28 ∨ v34 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v40 := by
      rcases c1285 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v7 := by
      rcases c1291 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v31 := by
      rcases c1296 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u9 : v39 := by
      rcases c1304 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
    have u10 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u12 : v2 := by
      rcases c449 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u13 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u4 a
      · exact absurd u1 a
    have u16 : ¬v3 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u17 : ¬v22 := by
      rcases c1287 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n0
    have u18 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n12
    rcases c1295 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a u7
  have c1306 : v38 ∨ ¬v6 ∨ ¬v7 ∨ v12 ∨ ¬v22 ∨ v24 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v5 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u6 : ¬v31 := by
      rcases c1293 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u7 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u10 : ¬v32 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u6
    have u11 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n9
    rcases c848 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n10
  have c1307 : ¬v17 ∨ v1 ∨ v4 ∨ v22 ∨ v24 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : v23 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n6 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n11
    have u7 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v26 := by
      rcases c1008 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v37 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n6 a
      · exact a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
    have u14 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u15 : v11 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n13
    have u16 : ¬v41 := by
      rcases c224 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n15
    have u17 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u6 a
    have u18 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n13
    have u20 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u21 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u15 a
      · exact a
    have u23 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u15 a
      · exact a
    have u24 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u15 a
      · exact a
    have u25 : v3 := by
      rcases c320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd u15 a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u12
    have u26 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n15
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u16
    have u27 : v5 := by
      rcases c1264 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u28 : ¬v7 := by
      rcases c34 with a|a|a|a
      · exact absurd u25 a
      · exact absurd u27 a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v49 := by
      rcases c325 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c968 with a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd u15 a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a u29
  have c1308 : ¬v17 ∨ v1 ∨ ¬v6 ∨ ¬v7 ∨ v12 ∨ v24 ∨ v28 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v22 := by
      rcases c1306 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v29 := by
      rcases c1307 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u8
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u11 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u8
    have u12 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a n1
    have u13 : ¬v9 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v23 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
    have u16 : v25 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n5
      · exact a
    rcases c89 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c1309 : v13 ∨ v1 ∨ v12 ∨ v24 ∨ v28 ∨ v34 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v40 := by
      rcases c1285 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v7 := by
      rcases c1291 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v17 := by
      rcases c1305 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v39 := by
      rcases c1308 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v2 := by
      rcases c449 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u12 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u6 a
      · exact absurd u2 a
    have u14 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c924 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n12
  have c1310 : v36 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v7 := by
      rcases c1283 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u3 : v5 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v2 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
  have c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n6
    have u7 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v23 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
    have u9 : v25 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
      · exact a
    rcases c89 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c1312 : v28 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v13 ∨ v24 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
    have u2 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
    have u3 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
    have u4 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v5 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n14
    have u6 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v2 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n12
    have u11 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v22 := by
      rcases c1293 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n13
    have u16 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n16
    have u17 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u15 a
      · exact a
    rcases c321 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n12
  exact ⟨c1263, c1264, c1265, c1271, c1274, c1277, c1278, c1279, c1285, c1286, c1287, c1290, c1291, c1293, c1295, c1297, c1298, c1299, c1309, c1310, c1311, c1312⟩
