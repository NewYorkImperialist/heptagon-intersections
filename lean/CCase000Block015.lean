import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 750-799 of the 2189-step refutation of ccase000: 117 core clauses and 82 earlier-derived ones give 13 more. -/
theorem CCase000_block015
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
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
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c57 : ¬v11 ∨ ¬v14)
    (c59 : ¬v14 ∨ ¬v12)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c65 : ¬v15 ∨ ¬v20)
    (c72 : ¬v17 ∨ ¬v18)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c123 : ¬v35 ∨ ¬v33)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c147 : v36 ∨ v42 ∨ v38 ∨ v41 ∨ v40 ∨ v37 ∨ v39)
    (c148 : ¬v44 ∨ ¬v43)
    (c157 : ¬v48 ∨ ¬v44)
    (c158 : ¬v49 ∨ ¬v44)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c213 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v40 ∨ v48 ∨ v49)
    (c219 : ¬v15 ∨ v22 ∨ v42 ∨ v29 ∨ v37 ∨ v16 ∨ v13 ∨ v20 ∨ v27 ∨ v21 ∨ v14 ∨ v8 ∨ v36 ∨ v23)
    (c285 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v45 ∨ v30 ∨ v32 ∨ v46)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c305 : v29 ∨ ¬v30 ∨ v38 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v22)
    (c309 : ¬v32 ∨ v39 ∨ v25 ∨ v33 ∨ v26 ∨ v40 ∨ v24 ∨ v31)
    (c310 : ¬v11 ∨ v12 ∨ v5 ∨ v18 ∨ v17 ∨ v4 ∨ v3 ∨ v10)
    (c318 : ¬v18 ∨ v26 ∨ v4 ∨ v13 ∨ v25 ∨ v11 ∨ v10 ∨ v27 ∨ v17 ∨ v19 ∨ v20 ∨ v45 ∨ v46 ∨ v47)
    (c319 : v36 ∨ ¬v29 ∨ v22 ∨ v28 ∨ v23 ∨ v35 ∨ v30 ∨ v42)
    (c321 : ¬v31 ∨ v4 ∨ v23 ∨ v24 ∨ v2 ∨ v38 ∨ v39 ∨ v3 ∨ v22 ∨ v32 ∨ v36 ∨ v29 ∨ v30 ∨ v45)
    (c328 : ¬v38 ∨ v29 ∨ v9 ∨ v46 ∨ v45 ∨ v3 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v10 ∨ v43 ∨ v39 ∨ v11)
    (c345 : v4 ∨ ¬v3 ∨ v2 ∨ v10 ∨ v46 ∨ v45 ∨ v9 ∨ v11)
    (c349 : v43 ∨ ¬v35 ∨ v42 ∨ v48 ∨ v24 ∨ v22 ∨ v31 ∨ v30 ∨ v41 ∨ v28 ∨ v29 ∨ v34 ∨ v38 ∨ v49)
    (c409 : ¬v44 ∨ v37 ∨ v4 ∨ v3 ∨ v2 ∨ v24 ∨ v23 ∨ v30 ∨ v36 ∨ v22 ∨ v39 ∨ v43 ∨ v45 ∨ v46)
    (c416 : ¬v39 ∨ v32 ∨ v38 ∨ v47 ∨ v31 ∨ v40 ∨ v33 ∨ v46)
    (c417 : ¬v44 ∨ v36 ∨ v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ v45)
    (c418 : v36 ∨ ¬v30 ∨ v22 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v29)
    (c436 : v43 ∨ v46 ∨ v38 ∨ v2 ∨ v4 ∨ v45 ∨ v1 ∨ v10 ∨ v30 ∨ v32 ∨ v31 ∨ v8 ∨ v9 ∨ ¬v3)
    (c437 : v36 ∨ ¬v29 ∨ v37 ∨ v42 ∨ v22 ∨ v28 ∨ v35 ∨ v30)
    (c449 : ¬v44 ∨ v43 ∨ v2 ∨ v1 ∨ v37 ∨ v36 ∨ v38 ∨ v45)
    (c458 : ¬v39 ∨ v32 ∨ v38 ∨ v40 ∨ v31 ∨ v45 ∨ v46 ∨ v47)
    (c466 : v13 ∨ v32 ∨ v4 ∨ v17 ∨ v19 ∨ v5 ∨ v3 ∨ v11 ∨ v10 ∨ v20 ∨ v26 ∨ ¬v12 ∨ v33 ∨ v34)
    (c473 : v43 ∨ v29 ∨ v44 ∨ v49 ∨ v35 ∨ v42 ∨ ¬v36 ∨ v37)
    (c493 : v4 ∨ v7 ∨ v3 ∨ v9 ∨ v37 ∨ v11 ∨ v8 ∨ ¬v1 ∨ v36 ∨ v2 ∨ v42 ∨ v43 ∨ v46 ∨ v49)
    (c496 : ¬v38 ∨ v3 ∨ v35 ∨ v45 ∨ v37 ∨ v30 ∨ v2 ∨ v36 ∨ v31 ∨ v39 ∨ v42 ∨ v4 ∨ v46 ∨ v49)
    (c542 : ¬v32 ∨ v39 ∨ v28 ∨ v35 ∨ v38 ∨ v33 ∨ v25 ∨ v26 ∨ v31 ∨ v34 ∨ v42 ∨ v45 ∨ v46 ∨ v47)
    (c546 : v10 ∨ ¬v18 ∨ v25 ∨ v24 ∨ v19 ∨ v26 ∨ v11 ∨ v17)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c681 : v23 ∨ v9 ∨ ¬v11 ∨ v22 ∨ v25 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c753 : ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24)
    (c808 : v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c823 : v12 ∨ v5 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c833 : ¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c841 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c848 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c857 : ¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c861 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c866 : ¬v27 ∨ v4 ∨ v5 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c895 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46)
    (c903 : ¬v1 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c906 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c912 : ¬v31 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c955 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c984 : ¬v9 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c988 : v42 ∨ v24 ∨ v28 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c992 : v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1008 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1009 : ¬v18 ∨ v5 ∨ v12 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1013 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1069 : v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1079 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1131 : v14 ∨ v1 ∨ v3 ∨ v7 ∨ v13 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v43 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1156 : v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1173 : ¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1208 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1229 : v28 ∨ v1 ∨ v7 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v29 ∨ v42 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1258 : v40 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1261 : ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1265 : v5 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1271 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1274 : ¬v32 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1277 : v6 ∨ v13 ∨ v28 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1278 : v25 ∨ v4 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1279 : v20 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1285 : v45 ∨ v12 ∨ v13 ∨ v24 ∨ v28 ∨ v34 ∨ v38 ∨ ¬v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1286 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1287 : ¬v22 ∨ v5 ∨ v12 ∨ v33 ∨ v40 ∨ v47)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1291 : v38 ∨ v1 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v13 ∨ v24 ∨ v28 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1293 : ¬v22 ∨ ¬v31 ∨ v38 ∨ v39)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1297 : ¬v9 ∨ v1 ∨ v4 ∨ v21 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ v36 ∨ v39 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47)
    (c1298 : v31 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1299 : ¬v22 ∨ v5 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v47)
    (c1309 : v13 ∨ v1 ∨ v12 ∨ v24 ∨ v28 ∨ v34 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1310 : v36 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1312 : v28 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v13 ∨ v24 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17) ∧ (v5 ∨ v12 ∨ v22 ∨ v24 ∨ v27 ∨ v29 ∨ v35 ∨ ¬v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v47 ∨ v49) ∧ (v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45) ∧ (¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42) ∧ (¬v29 ∨ ¬v38 ∨ v45 ∨ v46) ∧ (v1 ∨ v3 ∨ v7 ∨ v13 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v43 ∨ v49) ∧ (v22 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v32 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47) ∧ (v28 ∨ v13 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ v5 ∨ v12 ∨ v25 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v47) ∧ (v25 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v22 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v23 ∨ v4 ∨ ¬v5 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v22 ∨ v28 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) := by
  have c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    rcases c955 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
  have c1314 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v22 ∨ v24 ∨ v28 ∨ v35 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v10 := by
      rcases c1313 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u2 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n14
    have u3 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v23 := by
      rcases c321 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u8 : ¬v18 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v11 := by
      rcases c310 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u1
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n15
  have c1315 : v24 ∨ v12 ∨ v13 ∨ v28 ∨ v34 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v40 := by
      rcases c1285 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v1 := by
      rcases c1309 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u7 : v37 := by
      rcases c1310 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v7 := by
      rcases c1312 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u11 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u2 a
      · exact absurd u9 a
    have u12 : ¬v2 := by
      rcases c10 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u13 : ¬v22 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n11
    have u14 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v17 := by
      rcases c1314 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v33 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n11
    have u18 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v26 := by
      rcases c839 with a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n7
    have u21 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u11
      · exact a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n9
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u8
  have c1316 : ¬v5 ∨ ¬v6 ∨ ¬v7 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : v36 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n6
    rcases c1173 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd n5 a
    · exact absurd a n6
  have c1317 : v5 ∨ v12 ∨ v22 ∨ v24 ∨ v27 ∨ v29 ∨ v35 ∨ ¬v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v30 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : v44 := by
      rcases c473 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n5
      · exact a
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd n7 a
      · exact absurd a u3
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : v23 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n2
    have u10 : ¬v48 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : v26 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a n13
    rcases c90 with a|a
    · exact absurd u9 a
    · exact absurd u11 a
  have c1318 : v12 ∨ v5 ∨ v13 ∨ v24 ∨ v28 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v40 := by
      rcases c1285 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n2
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
    have u2 : v36 := by
      rcases c1315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
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
    have u4 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v7 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a n12
    have u10 : ¬v22 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n12
    have u11 : v29 := by
      rcases c1317 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n14
    have u12 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v18 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : v26 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n12
    have u18 : v11 := by
      rcases c1298 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u11 a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
    have u20 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u18 a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n10
    have u25 : ¬v2 := by
      rcases c26 with a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u9 a
      · exact absurd u4 a
    have u26 : ¬v1 := by
      rcases c16 with a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u4 a
      · exact absurd u9 a
    rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a n7
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd u24 a
  have c1319 : v28 ∨ v12 ∨ v13 ∨ v24 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v40 := by
      rcases c1285 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v5 := by
      rcases c1318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v36 := by
      rcases c1315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v7 := by
      rcases c1316 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd u2 a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n9
    have u9 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
    have u10 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
    have u11 : v1 := by
      rcases c1291 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u5 a
      · exact a
      · exact absurd u2 a
    have u13 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u10
      · exact a
      · exact absurd a n6
      · exact absurd a n9
    have u14 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1208 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n13
  have c1320 : v13 ∨ v12 ∨ v24 ∨ v28 ∨ v34 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v35 := by
      rcases c1319 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u4 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v25 := by
      rcases c753 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v36 := by
      rcases c1290 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v39 := by
      rcases c416 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n9
    have u15 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n9
    have u16 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : v22 := by
      rcases c349 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n12
    have u18 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v5 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n10
    have u20 : v11 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v7 := by
      rcases c1316 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n8
    have u22 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n8
    have u25 : v1 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c14 with a|a|a|a
    · exact absurd u25 a
    · exact absurd u19 a
    · exact absurd u24 a
    · exact absurd u3 a
  have c1321 : v45 ∨ v13 ∨ v24 ∨ v28 ∨ v34 ∨ ¬v35 ∨ v38 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v25 := by
      rcases c753 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v39 := by
      rcases c416 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n9
    have u8 : v12 := by
      rcases c1320 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n9
    have u12 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v26 := by
      rcases c546 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a u13
    have u15 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u14 a
      · exact a
    rcases c607 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd u14 a
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
  have c1322 : v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v23 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    rcases c906 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1323 : ¬v3 ∨ v4 ∨ ¬v6 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v2 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
    rcases c26 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n3 a
    · exact absurd n2 a
  have c1324 : v24 ∨ v13 ∨ v28 ∨ v34 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v35 := by
      rcases c1321 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
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
    have u6 : v12 := by
      rcases c1319 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n11
    have u13 : ¬v3 := by
      rcases c1323 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v31 := by
      rcases c1322 with a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u15 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n11
    have u21 : ¬v39 := by
      rcases c912 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v22 := by
      rcases c1293 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a u21
    have u23 : v1 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u4
    have u24 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u12 a
      · exact absurd u2 a
    have u25 : ¬v2 := by
      rcases c10 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u12 a
      · exact absurd u2 a
    have u26 : ¬v27 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n9
    have u27 : v23 := by
      rcases c321 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n7
    have u28 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u27 a
      · exact a
    rcases c848 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u15
    · exact absurd a n4
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a n8
  have c1325 : v11 ∨ v4 ∨ v10 ∨ v13 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n11
      · exact a
      · exact absurd a n6
      · exact absurd a n9
    have u2 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v26 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1326 : v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v6 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v13 ∨ v24 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n18 a
      · exact a
    have u2 : v1 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd n18 a
      · exact absurd a n15
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n19
    have u3 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u4 : ¬v27 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
    have u5 : v25 := by
      rcases c1325 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u6 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u5 a
      · exact a
    rcases c409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n18 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n15
    · exact absurd a u6
    · exact absurd a n16
    · exact absurd a u1
    · exact absurd a n19
    · exact absurd a n20
  have c1327 : v3 ∨ v4 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v24 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v27 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v25 := by
      rcases c1325 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n8
    have u7 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n7
    have u8 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
    have u9 : v18 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v12 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c466 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd u11 a
    · exact absurd a n11
    · exact absurd a n12
  have c1328 : v32 ∨ ¬v2 ∨ v3 ∨ v4 ∨ ¬v5 ∨ ¬v6 ∨ v13 ∨ v24 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ v43 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
    have u4 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
    have u5 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
    have u6 : v14 := by
      rcases c1131 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u7 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n16
    have u8 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n9
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
    rcases c1215 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n8
  have c1329 : v28 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v24 ∨ ¬v31 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u3 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v38 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v5 := by
      rcases c1327 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v2 := by
      rcases c1328 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u15 a
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a n12
      · exact absurd a n15
    have u17 : v1 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n11
    have u18 : ¬v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u6 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n15
    have u20 : v8 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a n12
      · exact absurd a n15
    have u21 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n12
    have u22 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n0
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u25
    · exact absurd a n15
  have c1330 : v31 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v28 ∨ v32 ∨ v35 ∨ ¬v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : v30 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n6
      · exact absurd a n10
    have u6 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n10
    have u9 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v26 := by
      rcases c1008 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v25 := by
      rcases c546 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u8 a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u11
    have u15 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u14 a
      · exact a
    rcases c418 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u5 a
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u6
  have c1331 : v9 ∨ v3 ∨ v10 ∨ v11 ∨ v13 ∨ v24 ∨ v28 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v38 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v31 := by
      rcases c1329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v32 := by
      rcases c1330 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u10 a
      · exact a
    rcases c328 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n3
  have c1332 : v13 ∨ v3 ∨ ¬v6 ∨ ¬v7 ∨ v12 ∨ v24 ∨ v28 ∨ ¬v32 ∨ v35 ∨ ¬v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n9 a
    have u7 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n9 a
      · exact a
    have u8 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n9 a
      · exact a
    have u9 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n9 a
      · exact a
    have u10 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : v2 := by
      rcases c496 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a n16
    have u13 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u15 : ¬v1 := by
      rcases c10 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u16 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u17 : ¬v22 := by
      rcases c1287 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n14
    have u18 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n14
    have u19 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u13
    have u20 : v25 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u17
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u21 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n6
    have u23 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u6
      · exact a
      · exact absurd a u21
      · exact absurd a n14
      · exact absurd a u1
    have u24 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v11 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u23 a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a n0
    rcases c310 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u19
  have c1333 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ v13 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v18 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
    rcases c310 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
  have c1334 : v3 ∨ v10 ∨ ¬v11 ∨ v13 ∨ v24 ∨ v28 ∨ ¬v31 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : v38 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n14
    have u10 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : v5 := by
      rcases c1333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u9 a
      · exact absurd u7 a
    have u15 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u9 a
      · exact absurd u7 a
    rcases c417 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a n10
  have c1335 : v3 ∨ v10 ∨ ¬v11 ∨ v13 ∨ v24 ∨ v28 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : v38 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u6 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n13
    have u13 : ¬v32 := by
      rcases c1332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd u12 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v31 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : v30 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n9
      · exact a
      · exact absurd a u13
      · exact absurd a n10
    have u16 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v5 := by
      rcases c1333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u12 a
      · exact absurd u5 a
    have u19 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u12 a
      · exact absurd u5 a
    rcases c417 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n9
  have c1336 : v24 ∨ v3 ∨ v10 ∨ v13 ∨ v28 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c1335 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
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
      · exact absurd a n12
    have u2 : v38 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
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
    have u6 : v9 := by
      rcases c1331 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
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
      · exact absurd a n12
    have u7 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n12
    have u17 : ¬v32 := by
      rcases c1332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a u15
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n9
    have u19 : v31 := by
      rcases c1330 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a n4
    have u25 : v2 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u5 a
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u26 : v1 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c10 with a|a|a|a
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd u16 a
    · exact absurd u5 a
  have c1337 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c818 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    rcases c437 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
  have c1339 : v37 ∨ ¬v3 ∨ ¬v6 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n15
    have u6 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v1 := by
      rcases c16 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u5 a
    have u8 : ¬v5 := by
      rcases c34 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v22 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
    have u11 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
    rcases c1286 with a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a u9
  have c1340 : v13 ∨ v10 ∨ v24 ∨ v28 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : v38 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v3 := by
      rcases c1336 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u12 : ¬v2 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v11 := by
      rcases c1339 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v9 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd a u13
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n11
    have u19 : ¬v1 := by
      rcases c16 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact absurd u18 a
    have u20 : ¬v5 := by
      rcases c34 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u18 a
      · exact absurd u1 a
    have u21 : ¬v22 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n9
    have u22 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n6
    have u24 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u19
    have u25 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n3
    have u26 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : v23 := by
      rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u8
      · exact a
    have u29 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v32 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u29
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c984 with a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u7
    · exact absurd a n8
  have c1341 : v37 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v28 ∨ v35 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v1 := by
      rcases c16 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v5 := by
      rcases c34 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v22 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
    have u4 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n14
    have u5 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
    rcases c1138 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n8
  have c1342 : ¬v29 ∨ ¬v38 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n1 a
      · exact a
    rcases c285 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
  have c1343 : v1 ∨ v3 ∨ ¬v6 ∨ ¬v7 ∨ ¬v10 ∨ v28 ∨ v29 ∨ v36 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v2 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n13
    have u4 : v22 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
    have u5 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    rcases c1299 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n14
  have c1344 : v41 ∨ v13 ∨ v24 ∨ v28 ∨ v34 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v10 := by
      rcases c1340 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u6 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v38 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v29 := by
      rcases c1342 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n5
    have u18 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n10
    have u19 : ¬v3 := by
      rcases c1341 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u2 a
      · exact absurd u18 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n8
    have u20 : ¬v32 := by
      rcases c1332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd u2 a
      · exact absurd u18 a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u17
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v1 := by
      rcases c1343 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u2 a
      · exact absurd u18 a
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n8
    have u22 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u18 a
      · exact absurd u2 a
    have u23 : ¬v2 := by
      rcases c10 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u18 a
      · exact absurd u2 a
    have u24 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u25 : v17 := by
      rcases c1313 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u3
      · exact a
    have u26 : v33 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u24
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n8
    have u27 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v25 := by
      rcases c1279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u28
      · exact absurd a n2
      · exact a
      · exact absurd a u29
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u30
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd a u14
  have c1345 : v29 ∨ v3 ∨ v4 ∨ v5 ∨ v11 ∨ v13 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v36 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n20
    have u2 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n20
    have u3 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n14 a
    have u4 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n14 a
    have u5 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : v32 := by
      rcases c1325 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u10 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v44 := by
      rcases c857 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd n14 a
      · exact absurd a n15
      · exact a
      · exact absurd a n18
      · exact absurd a n19
    have u13 : v24 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n16
      · exact a
      · exact absurd a u10
    have u14 : ¬v49 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v48 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u14
    have u18 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u15
    have u19 : v1 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n17
    have u20 : ¬v2 := by
      rcases c10 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    rcases c496 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n14 a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n18
    · exact absurd a n13
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a n12
    · exact absurd a u10
    · exact absurd a n15
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n19
    · exact absurd a u14
  have c1346 : v29 ∨ ¬v1 ∨ v3 ∨ v13 ∨ v28 ∨ v34 ∨ v36 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v38 := by
      rcases c147 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n11
      · exact a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v24 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v11 := by
      rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : v5 := by
      rcases c1345 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v2 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n16
    have u18 : v8 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u13
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a n16
    have u19 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a n16
  have c1347 : v1 ∨ v3 ∨ v7 ∨ v13 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
    have u2 : v14 := by
      rcases c1131 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n0
  have c1348 : v29 ∨ v3 ∨ v13 ∨ v28 ∨ v34 ∨ v36 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v24 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v1 := by
      rcases c1346 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v2 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n11
    have u14 : v7 := by
      rcases c1347 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n15
    have u15 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u16 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n13
    have u17 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n13
    have u18 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u16 a
    rcases c1286 with a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u10
  have c1349 : v39 ∨ v3 ∨ v13 ∨ v28 ∨ v29 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v24 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v36 := by
      rcases c1348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
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
    have u14 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v30 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n4
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n14
    have u16 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
    have u19 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n12
    have u20 : ¬v7 := by
      rcases c1316 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd u4 a
      · exact absurd a n10
    have u21 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n14
    have u22 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n14
    have u23 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u8
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a n0
  have c1350 : v39 ∨ ¬v6 ∨ v13 ∨ ¬v24 ∨ v29 ∨ v37 ∨ ¬v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : v44 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v1 := by
      rcases c1310 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v17 := by
      rcases c1013 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n0
    have u19 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u17
      · exact a
      · exact absurd a u4
      · exact absurd a u14
    rcases c42 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c1351 : v22 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
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
    have u4 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v1 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
    rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1352 : ¬v9 ∨ ¬v3 ∨ ¬v6 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v5 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u2 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    rcases c34 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd n2 a
  have c1353 : ¬v3 ∨ v2 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v9 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n20
    have u6 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v11 := by
      rcases c1351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u8 : v10 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a u7
    have u9 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v7 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n20
    have u12 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v5 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n18
    rcases c34 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u13 a
    · exact absurd u11 a
    · exact absurd n2 a
  have c1354 : v42 ∨ v13 ∨ v28 ∨ v29 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v24 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v40 := by
      rcases c1350 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
    have u13 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n7
    have u14 : v3 := by
      rcases c1349 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v9 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
    have u16 : ¬v2 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : v36 := by
      rcases c1353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v30 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n12
    have u20 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n9
    have u23 : v5 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u24 : ¬v11 := by
      rcases c681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u15
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u19 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a n6
    have u25 : ¬v7 := by
      rcases c1316 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd u3 a
      · exact absurd a n8
    have u26 : v10 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u14 a
      · exact absurd a u16
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u24
    rcases c1130 with a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u25
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n12
  have c1355 : ¬v32 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    rcases c542 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1356 : v34 ∨ v13 ∨ v28 ∨ v29 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v24 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
    have u13 : v37 := by
      rcases c1354 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n5
    have u18 : ¬v11 := by
      rcases c1351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v32 := by
      rcases c1355 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n8
      · exact a
      · exact absurd a u19
      · exact absurd a n4
    have u21 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n8
    have u22 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : v5 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u26 : v10 := by
      rcases c843 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u8
    have u27 : ¬v2 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd u25 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u28 : v7 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n11
    have u29 : v3 := by
      rcases c1313 with a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u27
      · exact a
      · exact absurd a u4
      · exact absurd a u23
    rcases c34 with a|a|a|a
    · exact absurd u29 a
    · exact absurd u25 a
    · exact absurd u28 a
    · exact absurd u1 a
  have c1357 : v45 ∨ v13 ∨ v28 ∨ v34 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v24 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u12 : v29 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v38 := by
      rcases c1342 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u18 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n6
    have u19 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : v17 := by
      rcases c1013 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
    have u21 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n7
    have u22 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a n8
    have u23 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : v11 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u3
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n7
    have u27 : ¬v2 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd u22 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u28 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : ¬v1 := by
      rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u32 : ¬v3 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u29
      · exact absurd a u28
      · exact a
    rcases c1173 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u31
    · exact absurd a u27
    · exact absurd a u32
    · exact absurd u2 a
    · exact absurd a n0
  have c1358 : v28 ∨ v13 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v6 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v24 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v39 := by
      rcases c1357 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v1 := by
      rcases c1310 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v29 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n4
    have u20 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : v2 := by
      rcases c449 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
    have u23 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : v7 := by
      rcases c1347 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u23
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n9
    have u25 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u24 a
      · exact absurd u3 a
    have u26 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a n7
    have u27 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a n7
    have u28 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u26 a
    rcases c1286 with a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u18
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u2
  have c1359 : v26 ∨ v5 ∨ v12 ∨ v25 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v27 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n5
    have u3 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u2 a
      · exact a
    rcases c190 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1360 : v14 ∨ ¬v5 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v22 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
    have u5 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n14
    have u6 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd n2 a
    have u7 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd n2 a
    have u8 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd n2 a
    have u9 : ¬v36 := by
      rcases c1173 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd n12 a
      · exact absurd a n13
    have u10 : v29 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u7
    rcases c841 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n11
  have c1361 : v25 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v22 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u2 : v5 := by
      rcases c1359 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u3 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u4 : ¬v41 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v27 := by
      rcases c1360 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd u6 a
      · exact absurd a n15
      · exact absurd a n19
    have u10 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n9
    have u11 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a n19
    have u12 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
      · exact absurd u7 a
    have u13 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
      · exact absurd u7 a
    have u14 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
      · exact absurd u7 a
    have u15 : ¬v36 := by
      rcases c1173 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd a n15
    have u16 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a n15
    have u17 : v29 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u13
    have u18 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u17 a
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n16
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a u18
  have c1362 : v23 ∨ v4 ∨ ¬v5 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v22 ∨ v28 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd u1 a
    have u3 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd u1 a
    have u4 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd u1 a
    have u7 : ¬v36 := by
      rcases c1173 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd n11 a
      · exact absurd a n12
    have u8 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n10
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u3
  exact ⟨c1313, c1317, c1322, c1337, c1338, c1342, c1347, c1351, c1355, c1358, c1359, c1361, c1362⟩
