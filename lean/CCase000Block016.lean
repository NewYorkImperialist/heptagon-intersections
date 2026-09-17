import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 800-849 of the 2189-step refutation of ccase000: 139 core clauses and 92 earlier-derived ones give 17 more. -/
theorem CCase000_block016
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v3 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21)
    (c68 : ¬v16 ∨ ¬v18)
    (c72 : ¬v17 ∨ ¬v18)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
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
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c113 : ¬v34 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c125 : v29 ∨ v35 ∨ v30 ∨ v32 ∨ v31 ∨ v34 ∨ v33)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c147 : v36 ∨ v42 ∨ v38 ∨ v41 ∨ v40 ∨ v37 ∨ v39)
    (c148 : ¬v44 ∨ ¬v43)
    (c149 : ¬v45 ∨ ¬v43)
    (c154 : ¬v45 ∨ ¬v44)
    (c158 : ¬v49 ∨ ¬v44)
    (c161 : ¬v48 ∨ ¬v45)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c242 : v29 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v34 ∨ v22 ∨ v27)
    (c243 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v35 ∨ v49 ∨ v42)
    (c259 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ ¬v6 ∨ v14 ∨ v48 ∨ v12)
    (c309 : ¬v32 ∨ v39 ∨ v25 ∨ v33 ∨ v26 ∨ v40 ∨ v24 ∨ v31)
    (c318 : ¬v18 ∨ v26 ∨ v4 ∨ v13 ∨ v25 ∨ v11 ∨ v10 ∨ v27 ∨ v17 ∨ v19 ∨ v20 ∨ v45 ∨ v46 ∨ v47)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c345 : v4 ∨ ¬v3 ∨ v2 ∨ v10 ∨ v46 ∨ v45 ∨ v9 ∨ v11)
    (c347 : v20 ∨ v5 ∨ v4 ∨ v6 ∨ v13 ∨ ¬v12 ∨ v19 ∨ v11)
    (c353 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v49 ∨ v42 ∨ v33)
    (c368 : v1 ∨ v7 ∨ v16 ∨ v14 ∨ v9 ∨ v21 ∨ ¬v8 ∨ v15)
    (c369 : v4 ∨ v6 ∨ v2 ∨ v13 ∨ v5 ∨ v9 ∨ v10 ∨ v18 ∨ v16 ∨ v17 ∨ ¬v3 ∨ v45 ∨ v46 ∨ v48)
    (c394 : ¬v39 ∨ v32 ∨ v38 ∨ v45 ∨ v31 ∨ v40 ∨ v46 ∨ v33)
    (c400 : v29 ∨ ¬v22 ∨ v30 ∨ v21 ∨ v15 ∨ v23 ∨ v16 ∨ v28)
    (c416 : ¬v39 ∨ v32 ∨ v38 ∨ v47 ∨ v31 ∨ v40 ∨ v33 ∨ v46)
    (c417 : ¬v44 ∨ v36 ∨ v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ v45)
    (c431 : ¬v33 ∨ v25 ∨ v27 ∨ v26 ∨ v34 ∨ v32 ∨ v40 ∨ v41)
    (c436 : v43 ∨ v46 ∨ v38 ∨ v2 ∨ v4 ∨ v45 ∨ v1 ∨ v10 ∨ v30 ∨ v32 ∨ v31 ∨ v8 ∨ v9 ∨ ¬v3)
    (c448 : ¬v22 ∨ v29 ∨ v30 ∨ v23 ∨ v28 ∨ v35 ∨ v16 ∨ v15)
    (c458 : ¬v39 ∨ v32 ∨ v38 ∨ v40 ∨ v31 ∨ v45 ∨ v46 ∨ v47)
    (c480 : v5 ∨ ¬v19 ∨ v27 ∨ v26 ∨ v28 ∨ v46 ∨ v11 ∨ v12 ∨ v18 ∨ v20 ∨ v21 ∨ v14 ∨ v47 ∨ v48)
    (c490 : ¬v34 ∨ v41 ∨ v33 ∨ v28 ∨ v35 ∨ v42 ∨ v40 ∨ v27)
    (c501 : ¬v45 ∨ v37 ∨ v4 ∨ v25 ∨ v38 ∨ v23 ∨ v24 ∨ v31 ∨ v5 ∨ v3 ∨ v40 ∨ v44 ∨ v46 ∨ v47)
    (c525 : ¬v45 ∨ v2 ∨ v46 ∨ v37 ∨ v4 ∨ v38 ∨ v3 ∨ v44)
    (c529 : v43 ∨ ¬v1 ∨ v9 ∨ v7 ∨ v2 ∨ v14 ∨ v49 ∨ v8)
    (c530 : ¬v45 ∨ v42 ∨ v9 ∨ v7 ∨ v4 ∨ v3 ∨ v11 ∨ v37 ∨ v10 ∨ v38 ∨ v43 ∨ v44 ∨ v46 ∨ v49)
    (c531 : v40 ∨ ¬v33 ∨ v27 ∨ v39 ∨ v34 ∨ v32 ∨ v25 ∨ v26)
    (c546 : v10 ∨ ¬v18 ∨ v25 ∨ v24 ∨ v19 ∨ v26 ∨ v11 ∨ v17)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c623 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c624 : ¬v11 ∨ v3 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c633 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c681 : v23 ∨ v9 ∨ ¬v11 ∨ v22 ∨ v25 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c753 : ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c820 : v4 ∨ ¬v13 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c848 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c855 : ¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c912 : ¬v31 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c961 : ¬v28 ∨ v2 ∨ v9 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c984 : ¬v9 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c985 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c992 : v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1009 : ¬v18 ∨ v5 ∨ v12 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32)
    (c1013 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1047 : v6 ∨ v13 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1069 : v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1070 : ¬v3 ∨ ¬v2 ∨ ¬v5 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1079 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1100 : ¬v28 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v33 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1117 : ¬v27 ∨ ¬v33 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1126 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1143 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1156 : v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1170 : ¬v21 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1185 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v38 ∨ v39)
    (c1204 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1208 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1258 : v40 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1259 : ¬v28 ∨ v6 ∨ v13 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1261 : ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1265 : v5 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1271 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1274 : ¬v32 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v36 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1278 : v25 ∨ v4 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1286 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1287 : ¬v22 ∨ v5 ∨ v12 ∨ v33 ∨ v40 ∨ v47)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1298 : v31 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1310 : v36 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1317 : v5 ∨ v12 ∨ v22 ∨ v24 ∨ v27 ∨ v29 ∨ v35 ∨ ¬v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v47 ∨ v49)
    (c1322 : v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1337 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42)
    (c1342 : ¬v29 ∨ ¬v38 ∨ v45 ∨ v46)
    (c1355 : ¬v32 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47)
    (c1358 : v28 ∨ v13 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1359 : v26 ∨ v5 ∨ v12 ∨ v25 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v47)
    (c1361 : v25 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v22 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1362 : v23 ∨ v4 ∨ ¬v5 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v22 ∨ v28 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    : (¬v36 ∨ v4 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v46) ∧ (¬v19 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48) ∧ (v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46) ∧ (v23 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v39 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v46 ∨ v47) ∧ (v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v38 ∨ v4 ∨ v11 ∨ v18 ∨ v22 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47) ∧ (v40 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47) ∧ (v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47) ∧ (v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ v11 ∨ ¬v12 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v47 ∨ ¬v1 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v48 ∨ v49) ∧ (v12 ∨ v4 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v24 ∨ v31 ∨ v33 ∨ v34 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48) ∧ (v12 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ ¬v9 ∨ v24 ∨ v31 ∨ v33 ∨ v34 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1363 : v12 ∨ v4 ∨ v5 ∨ v10 ∨ v11 ∨ v28 ∨ ¬v29 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v38 := by
      rcases c1342 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v39 := by
      rcases c1298 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c394 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n7
  have c1364 : ¬v36 ∨ v5 ∨ v12 ∨ v22 ∨ v24 ∨ v27 ∨ v29 ∨ v35 ∨ v40 ∨ v42 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1317 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1365 : v36 ∨ v4 ∨ v11 ∨ v18 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a
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
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n8
  have c1366 : v45 ∨ v22 ∨ v25 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v13 := by
      rcases c1358 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
    have u12 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n2
    have u17 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n3
    have u18 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u13
    have u19 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a n13
    have u20 : ¬v5 := by
      rcases c1362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u2
      · exact a
      · exact absurd u19 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u21 : ¬v29 := by
      rcases c1363 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v36 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n13
    have u23 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n1
      · exact a
    have u24 : v39 := by
      rcases c1365 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u21
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u25 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u27 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n0
    have u28 : v2 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u27 a
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
    rcases c4 with a|a|a|a
    · exact absurd u23 a
    · exact absurd u27 a
    · exact absurd u19 a
    · exact absurd u28 a
  have c1367 : v28 ∨ v22 ∨ v25 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v13 := by
      rcases c1358 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v35 := by
      rcases c1366 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v27 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v36 := by
      rcases c1290 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n9
  have c1368 : ¬v36 ∨ v4 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u5 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n9
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n9
  have c1369 : v9 ∨ ¬v5 ∨ ¬v6 ∨ ¬v7 ∨ v10 ∨ v11 ∨ ¬v22 ∨ v25 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u5 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v49 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n12 a
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n12 a
      · exact a
    have u10 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a u8
    have u12 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u11
    have u13 : v13 := by
      rcases c1358 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u8
    have u14 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a n13
    have u16 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n11
    have u20 : v32 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u17
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c1355 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a u19
    · exact absurd a n9
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1370 : v28 ∨ v25 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v22 := by
      rcases c1367 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v13 := by
      rcases c1358 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u5 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v36 := by
      rcases c1368 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n8
    have u17 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
    have u18 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v7 := by
      rcases c1369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u17 a
      · exact absurd u19 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v21 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a n11
  have c1371 : ¬v19 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ v18 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd n0 a
      · exact a
    rcases c480 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n12
  have c1372 : ¬v19 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1371 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    · exact absurd a n11
  have c1373 : v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v13 := by
      rcases c1358 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v25 := by
      rcases c1370 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v4 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v35 := by
      rcases c753 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
    have u16 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
    have u17 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n10
    have u18 : ¬v5 := by
      rcases c1362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u3
      · exact a
      · exact absurd u17 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v19 := by
      rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a n1
  have c1374 : ¬v39 ∨ v31 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    rcases c458 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1375 : v47 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v13 := by
      rcases c1358 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v33 := by
      rcases c1373 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v39 := by
      rcases c1374 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : v26 := by
      rcases c839 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u10 a
      · exact a
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n7
  have c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v26 := by
      rcases c843 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
    have u3 : v24 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c94 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1377 : v45 ∨ v28 ∨ v34 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v13 := by
      rcases c1358 with a|a|a|a|a|a|a|a|a|a
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
    have u5 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : v40 := by
      rcases c1375 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a n5
    have u21 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v1 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u3
    have u26 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a n1
    have u27 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u22
    have u28 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n1
    have u29 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n0
    have u30 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u28
      · exact absurd a n8
    have u31 : v2 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u29 a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
    rcases c4 with a|a|a|a
    · exact absurd u25 a
    · exact absurd u29 a
    · exact absurd u30 a
    · exact absurd u31 a
  have c1378 : v11 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v12 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u2 a
    rcases c546 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u4
  have c1379 : v28 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v34 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n7
    have u12 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v39 := by
      rcases c1374 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v27 := by
      rcases c490 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u12
      · exact a
    have u15 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n4
    have u21 : v11 := by
      rcases c1378 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n7
    have u27 : v5 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u28 : v1 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u3
    have u29 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u2
      · exact a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c20 with a|a|a|a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd u29 a
  have c1380 : v13 ∨ v4 ∨ v6 ∨ v12 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v5 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v26 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u2 a
      · exact a
    rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c1381 : v10 ∨ v8 ∨ v9 ∨ v12 ∨ v13 ∨ v14 ∨ v23 ∨ v28 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v42 := by
      rcases c1379 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
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
      · exact absurd a n12
      · exact absurd a n13
    have u10 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n13
    have u15 : v35 := by
      rcases c1126 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u14
      · exact a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v6 := by
      rcases c1380 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v1 := by
      rcases c1310 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : v22 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u13
    have u20 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v5 := by
      rcases c1287 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n11
    have u24 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n9
    have u25 : ¬v2 := by
      rcases c1070 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a u25
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u24 a
  have c1382 : v45 ∨ ¬v11 ∨ v28 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : v42 := by
      rcases c1379 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v35 := by
      rcases c1126 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v23 := by
      rcases c1381 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a n2
    have u24 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u20
      · exact a
    rcases c1310 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u25 a
    · exact absurd u24 a
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u8 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1383 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ v36 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c8 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n10
    rcases c1310 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1384 : v45 ∨ v12 ∨ v28 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v42 := by
      rcases c1379 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
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
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v11 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n4
    have u17 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v24 := by
      rcases c1013 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
    have u22 : ¬v23 := by
      rcases c985 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u10
    have u23 : ¬v22 := by
      rcases c400 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n2
    have u24 : v25 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n5
    have u28 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v1 := by
      rcases c1383 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u28 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u30 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u13
    have u31 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u17
      · exact a
      · exact absurd a u23
      · exact absurd a u29
    have u32 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n0
    have u33 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u31 a
      · exact a
    have u35 : v7 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u20
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd a u19
      · exact absurd u31 a
      · exact absurd a u17
    rcases c34 with a|a|a|a
    · exact absurd u32 a
    · exact absurd u27 a
    · exact absurd u35 a
    · exact absurd u28 a
  have c1385 : v41 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v42 := by
      rcases c1379 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v12 := by
      rcases c1384 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n3
    have u20 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u19 a
    have u26 : ¬v24 := by
      rcases c1013 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
    have u27 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n2
    have u28 : ¬v23 := by
      rcases c985 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u26
      · exact absurd a u8
      · exact absurd a u9
    have u29 : v2 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u27 a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u16
    have u30 : ¬v22 := by
      rcases c400 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a n1
    have u31 : ¬v6 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd u27 a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u32 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u30
      · exact a
    have u33 : v5 := by
      rcases c347 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u2
      · exact absurd a u31
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u20
      · exact absurd a u16
    rcases c2 with a|a|a|a
    · exact absurd u32 a
    · exact absurd u33 a
    · exact absurd u27 a
    · exact absurd u29 a
  have c1386 : ¬v12 ∨ v4 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
    have u6 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
    have u7 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v22 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u7
    have u11 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u10
      · exact a
    have u12 : ¬v24 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n15
    have u14 : ¬v2 := by
      rcases c4 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact absurd u5 a
      · exact a
    rcases c345 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u13 a
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n16
    · exact absurd a n15
    · exact absurd a u4
    · exact absurd a u2
  have c1387 : v45 ∨ v5 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v41 := by
      rcases c1385 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u8 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
    have u13 : ¬v30 := by
      rcases c1204 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
    have u14 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a u8
    have u15 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v12 := by
      rcases c1386 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
    have u19 : ¬v18 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
    have u21 : v11 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u3
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n6
    have u22 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n6
    have u23 : v3 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n0
    have u24 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n9
    have u28 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u29 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a n4
    have u30 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a n2
      · exact a
    have u31 : ¬v2 := by
      rcases c4 with a|a|a|a
      · exact absurd u30 a
      · exact absurd u23 a
      · exact absurd u27 a
      · exact a
    have u32 : ¬v6 := by
      rcases c16 with a|a|a|a
      · exact absurd u30 a
      · exact absurd u23 a
      · exact a
      · exact absurd u27 a
    have u33 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u20
    rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u24
    · exact absurd a n1
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u19
    · exact absurd a u29
    · exact absurd a u33
    · exact absurd u23 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n8
  have c1388 : v23 ∨ v22 ∨ v24 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v41 := by
      rcases c1385 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v42 := by
      rcases c146 with a|a
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
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
    have u11 : ¬v30 := by
      rcases c1204 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u7
    have u13 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v5 := by
      rcases c1387 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v12 := by
      rcases c1386 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u20 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u2
      · exact a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v1 := by
      rcases c1383 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u20 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u18
    have u23 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n4
    have u24 : ¬v7 := by
      rcases c34 with a|a|a|a
      · exact absurd u23 a
      · exact absurd u16 a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v2 := by
      rcases c24 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u23 a
      · exact absurd u20 a
    have u26 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n8
    have u27 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n8
    rcases c345 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u23 a
    · exact absurd a u25
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u26
    · exact absurd a u27
  have c1389 : v28 ∨ v23 ∨ ¬v24 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v41 := by
      rcases c1385 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v44 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
    have u17 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u12
    have u18 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : v17 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
    have u23 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n4
    have u24 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a n5
    have u25 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u6
      · exact a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u28 : ¬v1 := by
      rcases c1383 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u27 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u29 : v11 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u6
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a n4
    have u30 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u26
      · exact a
      · exact absurd a u1
      · exact absurd a u28
    rcases c42 with a|a
    · exact absurd u29 a
    · exact absurd u30 a
  have c1390 : v23 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v41 := by
      rcases c1385 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u5
    have u9 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v24 := by
      rcases c1389 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v22 := by
      rcases c1388 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
    have u18 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
    have u19 : v11 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
    have u20 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n4
    have u21 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n2
    have u22 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n6
    have u23 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u1
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c34 with a|a|a|a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c1391 : v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v23 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v44 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v41 := by
      rcases c1385 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
    have u19 : ¬v32 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n2
    have u21 : v34 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u15
    have u22 : v11 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n2
    have u23 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u22 a
      · exact a
    have u28 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a n3
    have u29 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u3
      · exact absurd a n0
    have u30 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u2
      · exact a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u31 : ¬v1 := by
      rcases c1383 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u30 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a u3
    · exact absurd a u31
  have c1392 : v22 ∨ v4 ∨ ¬v5 ∨ ¬v6 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v36 ∨ v38 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v39 := by
      rcases c1374 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n16
    have u3 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n16
    have u4 : v11 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n16
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n15
    have u8 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v1 := by
      rcases c14 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact absurd n3 a
    have u10 : ¬v2 := by
      rcases c24 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact absurd n3 a
    have u11 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n4
    have u12 : v30 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n15
      · exact absurd a u9
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd u7 a
    have u13 : v29 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n11
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u9
    rcases c104 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c1393 : ¬v5 ∨ ¬v6 ∨ v31 ∨ v36 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v28 := by
      rcases c1391 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v44 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v32 := by
      rcases c1392 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v39 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n2
    have u18 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v21 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u7
    have u21 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v17 := by
      rcases c75 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v1 := by
      rcases c1383 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u24 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u21
      · exact a
      · exact absurd a u3
      · exact absurd a u23
    have u25 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u30 : v2 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u29 a
      · exact a
      · exact absurd a u28
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u26
      · exact absurd a u27
    rcases c1337 with a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd u29 a
    · exact absurd n1 a
    · exact absurd a u25
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1394 : v38 ∨ v12 ∨ v31 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v28 := by
      rcases c1391 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
    have u11 : v44 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v36 := by
      rcases c1393 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd u12 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u1
    have u18 : ¬v13 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n5
    have u19 : v11 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n5
    have u20 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n5
    have u21 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n5
    have u22 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u19 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
    have u24 : ¬v2 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u12 a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v1 := by
      rcases c14 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u23 a
      · exact absurd u12 a
    have u26 : ¬v30 := by
      rcases c681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd u19 a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u15
    rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd u23 a
  have c1395 : v38 ∨ v12 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v28 := by
      rcases c1391 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v31 := by
      rcases c1394 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v39 := by
      rcases c912 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c1185 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u8
  have c1396 : v49 ∨ v12 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v33 := by
      rcases c1395 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v28 := by
      rcases c1391 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u16 : v11 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n5
    have u20 : v40 := by
      rcases c531 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u15
    have u21 : v44 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u22 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u16 a
      · exact a
    have u24 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u25 : v3 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
    have u26 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u12
    have u27 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u20 a
      · exact a
    have u28 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u20 a
      · exact a
    have u29 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u21 a
      · exact a
    have u30 : v6 := by
      rcases c1259 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u28
      · exact absurd a u9
      · exact absurd a u29
      · exact absurd a n7
      · exact absurd a n0
    have u31 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u10
      · exact a
    have u32 : ¬v2 := by
      rcases c3 with a|a|a|a
      · exact absurd u31 a
      · exact absurd u25 a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v7 := by
      rcases c16 with a|a|a|a
      · exact absurd u31 a
      · exact absurd u25 a
      · exact absurd u30 a
      · exact a
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd u31 a
    · exact absurd a u19
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u24
  have c1397 : ¬v39 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v45 := by
      rcases c1374 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v33 := by
      rcases c416 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n6
    have u5 : ¬v48 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v27 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
  have c1398 : v38 ∨ v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v28 := by
      rcases c1391 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v39 := by
      rcases c1396 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v32 := by
      rcases c1397 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u7 a
      · exact a
    rcases c1395 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1399 : v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v28 := by
      rcases c1391 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v38 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v29 := by
      rcases c1342 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n3
    have u17 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v32 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v11 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n2
    have u21 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u4
    have u25 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u5
    have u26 : v44 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u3
      · exact a
    have u29 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd u28 a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u30 : ¬v2 := by
      rcases c8 with a|a|a|a
      · exact absurd u28 a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact a
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd u28 a
    · exact absurd a u20
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a u22
  have c1400 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1401 : ¬v38 ∨ v4 ∨ v11 ∨ v18 ∨ v22 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c1342 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
    rcases c1365 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1402 : v40 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v31 := by
      rcases c1374 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c912 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1403 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1402 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1404 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
  have c1405 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v28 := by
      rcases c1391 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v12 := by
      rcases c1399 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v4 := by
      rcases c1261 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v18 := by
      rcases c1400 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u18 : ¬v38 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u19 : v32 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u20 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u24 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u25 : v3 := by
      rcases c1322 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a n0
    have u26 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u20
    have u27 : v6 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a n3
    have u28 : ¬v2 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u27 a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c345 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u25 a
    · exact absurd a u28
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u12
  have c1406 : v9 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ ¬v5 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd n10 a
      · exact a
    rcases c530 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a n12
  have c1407 : v14 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : v39 := by
      rcases c147 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a u2
      · exact absurd a n16
      · exact a
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u5 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v32 := by
      rcases c416 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n20
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n7
      · exact a
    have u10 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v2 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a u8
    have u12 : ¬v5 := by
      rcases c1406 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd u11 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd u4 a
      · exact absurd a n20
      · exact absurd a n23
    have u13 : v3 := by
      rcases c501 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n17
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n20
      · exact absurd a n21
    have u14 : ¬v6 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact absurd a u12
      · exact a
      · exact absurd a n6
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u15 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u13 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v28 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n22
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n19
    · exact absurd a n23
  have c1408 : v4 ∨ v11 ∨ ¬v12 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
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
    have u6 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n9
    have u7 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : v39 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n13
      · exact a
      · exact absurd a u7
    have u9 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n9
    have u10 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u11 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v23 := by
      rcases c1407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u15 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u15
    have u19 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n18
    have u20 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n17
    have u21 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n3
      · exact a
    have u22 : ¬v2 := by
      rcases c10 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    have u23 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u22
    · exact absurd a n15
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a u23
    · exact absurd a u13
  have c1409 : ¬v3 ∨ ¬v1 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v12 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v28 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v23 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v5 := by
      rcases c1359 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u3
      · exact absurd a n19
    have u7 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c14 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd u7 a
  have c1410 : v47 ∨ ¬v1 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v12 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n19
    have u3 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n19
      · exact absurd a n0
      · exact absurd a n20
      · exact absurd a n17
      · exact absurd a n12
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v3 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n18
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n16
      · exact a
      · exact absurd a u6
    have u8 : v9 := by
      rcases c1409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u1
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
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n19
    have u9 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n20
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u10
    have u13 : ¬v5 := by
      rcases c15 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
      · exact absurd u12 a
    have u14 : ¬v6 := by
      rcases c16 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n19
    have u16 : ¬v28 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a n19
    rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n18
    · exact absurd a n0
    · exact absurd a n19
  have c1411 : v12 ∨ v4 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v24 ∨ v31 ∨ v33 ∨ v34 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v5 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v27 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v28 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
    rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1412 : v12 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ ¬v9 ∨ v24 ∨ v31 ∨ v33 ∨ v34 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n7
    have u6 : v6 := by
      rcases c1411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
    have u8 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    rcases c259 with a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a n0
  exact ⟨c1368, c1372, c1376, c1390, c1391, c1397, c1399, c1400, c1401, c1402, c1403, c1404, c1405, c1408, c1410, c1411, c1412⟩
