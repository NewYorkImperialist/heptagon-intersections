import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1750-1799 of the 2189-step refutation of ccase000: 144 core clauses and 81 earlier-derived ones give 15 more. -/
theorem CCase000_block035
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c37 : v2 ∨ v6 ∨ v3 ∨ v1 ∨ v7)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
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
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c151 : ¬v47 ∨ ¬v43)
    (c152 : ¬v48 ∨ ¬v43)
    (c156 : ¬v44 ∨ ¬v47)
    (c157 : ¬v48 ∨ ¬v44)
    (c160 : ¬v47 ∨ ¬v45)
    (c161 : ¬v48 ∨ ¬v45)
    (c163 : ¬v46 ∨ ¬v47)
    (c164 : ¬v48 ∨ ¬v46)
    (c166 : ¬v48 ∨ ¬v47)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c226 : ¬v48 ∨ v6 ∨ v21 ∨ v7 ∨ v13 ∨ v4 ∨ v19 ∨ v20 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v49)
    (c244 : ¬v47 ∨ v6 ∨ v41 ∨ v46 ∨ v5 ∨ v4 ∨ v40 ∨ v48)
    (c250 : v46 ∨ v6 ∨ ¬v5 ∨ v4 ∨ v13 ∨ v11 ∨ v47 ∨ v12)
    (c263 : v36 ∨ ¬v29 ∨ v38 ∨ v37 ∨ v22 ∨ v14 ∨ v35 ∨ v31 ∨ v28 ∨ v24 ∨ v8 ∨ v30 ∨ v9 ∨ v15)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c276 : v15 ∨ v7 ∨ v20 ∨ v6 ∨ v21 ∨ v8 ∨ ¬v14 ∨ v13)
    (c283 : ¬v48 ∨ v6 ∨ v47 ∨ v41 ∨ v42 ∨ v7 ∨ v40 ∨ v49)
    (c284 : ¬v48 ∨ v41 ∨ v5 ∨ v47 ∨ v7 ∨ v6 ∨ v40 ∨ v49)
    (c286 : ¬v34 ∨ v41 ∨ v27 ∨ v35 ∨ v40 ∨ v26 ∨ v28 ∨ v33)
    (c296 : v43 ∨ v41 ∨ v4 ∨ v6 ∨ v47 ∨ v39 ∨ v46 ∨ v13 ∨ v12 ∨ v40 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v7)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c347 : v20 ∨ v5 ∨ v4 ∨ v6 ∨ v13 ∨ ¬v12 ∨ v19 ∨ v11)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c407 : ¬v47 ∨ v46 ∨ v40 ∨ v41 ∨ v5 ∨ v39 ∨ v6 ∨ v48)
    (c413 : v41 ∨ v5 ∨ v4 ∨ v7 ∨ ¬v12 ∨ v19 ∨ v13 ∨ v20 ∨ v14 ∨ v11 ∨ v21 ∨ v40 ∨ v39 ∨ v47)
    (c434 : v15 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ v8)
    (c444 : ¬v32 ∨ v39 ∨ v25 ∨ v40 ∨ v38 ∨ v33 ∨ v26 ∨ v31)
    (c479 : ¬v32 ∨ v39 ∨ v25 ∨ v38 ∨ v37 ∨ v31 ∨ v30 ∨ v33 ∨ v18 ∨ v23 ∨ v26 ∨ v11 ∨ v12 ∨ v10)
    (c487 : ¬v48 ∨ v6 ∨ v41 ∨ v7 ∨ v14 ∨ v3 ∨ v12 ∨ v38 ∨ v40 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c503 : ¬v48 ∨ v6 ∨ v34 ∨ v41 ∨ v26 ∨ v27 ∨ v7 ∨ v1 ∨ v40 ∨ v28 ∨ v36 ∨ v43 ∨ v47 ∨ v49)
    (c515 : v43 ∨ ¬v42 ∨ v49 ∨ v35 ∨ v36 ∨ v34 ∨ v29 ∨ v41)
    (c531 : v40 ∨ ¬v33 ∨ v27 ∨ v39 ∨ v34 ∨ v32 ∨ v25 ∨ v26)
    (c549 : v43 ∨ v9 ∨ v44 ∨ v2 ∨ v7 ∨ v8 ∨ v14 ∨ ¬v1)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c838 : v32 ∨ v26 ∨ ¬v33 ∨ v39 ∨ v40 ∨ v41)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c944 : v15 ∨ v2 ∨ v3 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v21 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c982 : ¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32)
    (c1020 : ¬v11 ∨ ¬v2 ∨ v3 ∨ ¬v7 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1028 : v2 ∨ v3 ∨ v4 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1030 : v4 ∨ v2 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1034 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1058 : v27 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1155 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1400 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1519 : v7 ∨ v1 ∨ v6 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v48)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1913 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1952 : v32 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45)
    (c1956 : v3 ∨ v1 ∨ v2 ∨ v9 ∨ ¬v10 ∨ ¬v23 ∨ v26 ∨ v43 ∨ v44 ∨ v49)
    (c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c1959 : ¬v3 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v9 ∨ v10 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c1975 : ¬v14 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49)
    (c2056 : v47 ∨ v48 ∨ v49)
    (c2062 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2122 : ¬v1 ∨ v2 ∨ ¬v5 ∨ ¬v6 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49)
    (c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c2130 : v31 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2133 : v46 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c2134 : ¬v31 ∨ v24 ∨ v25 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2140 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2167 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v49)
    (c2191 : ¬v6 ∨ v48 ∨ v49)
    (c2193 : v1 ∨ ¬v9 ∨ v24 ∨ v28 ∨ v48 ∨ v49)
    (c2200 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2205 : ¬v24 ∨ v2 ∨ v9 ∨ v10 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2206 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2226 : ¬v17 ∨ v2 ∨ v3 ∨ v6 ∨ ¬v9 ∨ v43 ∨ v44 ∨ v45)
    (c2231 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2240 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2241 : v37 ∨ v2 ∨ ¬v28 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2243 : v2 ∨ v48 ∨ v49)
    (c2246 : ¬v38 ∨ v48 ∨ v49)
    (c2255 : ¬v7 ∨ ¬v1 ∨ v39 ∨ v40 ∨ v48 ∨ v49)
    (c2257 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2286 : ¬v22 ∨ v1 ∨ v34 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c2297 : ¬v42 ∨ v1 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v48 ∨ v49)
    (c2302 : ¬v11 ∨ v1 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2304 : ¬v13 ∨ v1 ∨ v22 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2307 : v41 ∨ v23 ∨ v24 ∨ v37 ∨ v48 ∨ v49)
    (c2311 : ¬v29 ∨ v22 ∨ v36 ∨ v37 ∨ v42)
    (c2312 : ¬v41 ∨ v24 ∨ v48 ∨ v49)
    (c2313 : v4 ∨ v7 ∨ v29 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c2316 : ¬v1 ∨ v7 ∨ v22 ∨ v24 ∨ v27 ∨ v29 ∨ v32 ∨ v39 ∨ v42 ∨ v48 ∨ v49)
    (c2317 : ¬v7 ∨ ¬v1 ∨ v24 ∨ v32 ∨ v39 ∨ v48 ∨ v49)
    : (v24 ∨ v48 ∨ v49) ∧ (v48 ∨ v49) ∧ (¬v1 ∨ v2 ∨ v7 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v49) ∧ (¬v31 ∨ ¬v42 ∨ v49) ∧ (¬v32 ∨ ¬v42 ∨ v49) ∧ (¬v30 ∨ ¬v42 ∨ v49) ∧ (¬v6 ∨ ¬v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v1 ∨ v26 ∨ v27 ∨ v39 ∨ ¬v42 ∨ v49) ∧ (¬v7 ∨ v1 ∨ ¬v4 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v49) ∧ (¬v29 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38) ∧ (¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41) ∧ (v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45) ∧ (¬v4 ∨ v1 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v42 ∨ v49) ∧ (¬v3 ∨ v1 ∨ v4 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v49) ∧ (v2 ∨ v3 ∨ v4 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) := by
  have c2318 : v38 ∨ ¬v1 ∨ v24 ∨ v29 ∨ v32 ∨ v37 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c2317 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v41 := by
      rcases c2312 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v23 := by
      rcases c2307 with a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u14 : v42 := by
      rcases c2316 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
    have u17 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
      · exact absurd u4 a
    have u18 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd u16 a
      · exact a
    have u19 : v10 := by
      rcases c2133 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
    rcases c847 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd a u7
  have c2319 : ¬v1 ∨ v24 ∨ v29 ∨ v32 ∨ v38 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c2312 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v7 := by
      rcases c2317 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v37 := by
      rcases c2318 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v4 := by
      rcases c2313 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
    rcases c5 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u5 a
    · exact absurd u11 a
    · exact absurd u10 a
  have c2320 : v32 ∨ ¬v1 ∨ v24 ∨ v29 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c2319 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2321 : ¬v32 ∨ v24 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v41 := by
      rcases c2312 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v23 := by
      rcases c2307 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u10 a
      · exact a
    rcases c2140 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n2
  have c2322 : v39 ∨ ¬v1 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v32 := by
      rcases c2321 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v41 := by
      rcases c2312 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v29 := by
      rcases c2320 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u15 : v23 := by
      rcases c2307 with a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n3
    have u21 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v3 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u25 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u6
    rcases c1 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2323 : v28 ∨ v1 ∨ v6 ∨ v26 ∨ v27 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v22 := by
      rcases c2286 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n9
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n10
    have u13 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n0
    have u14 : v3 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u8
    have u15 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
    have u19 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n8
    have u20 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n10
    have u21 : v36 := by
      rcases c2311 with a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u4
      · exact a
      · exact absurd a u19
      · exact absurd a n6
    have u22 : ¬v4 := by
      rcases c23 with a|a|a|a
      · exact absurd u14 a
      · exact absurd u3 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u20 a
      · exact absurd u3 a
    have u24 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u21 a
    rcases c244 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a n9
  have c2324 : ¬v39 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v23 := by
      rcases c2307 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v29 := by
      rcases c2311 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
    have u20 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u21 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u3
    have u22 : v1 := by
      rcases c2323 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
    have u23 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u3
    have u24 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a n2
    have u25 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u24 a
    have u30 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u16
    have u31 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u11
    have u32 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
    have u33 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd u22 a
      · exact absurd u31 a
      · exact a
      · exact absurd u7 a
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u33
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u32
    · exact absurd a n3
  have c2325 : ¬v23 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v39 := by
      rcases c2324 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v32 := by
      rcases c2321 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v41 := by
      rcases c2312 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v1 := by
      rcases c2322 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    have u18 : v42 := by
      rcases c2323 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
    have u19 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
    have u21 : ¬v9 := by
      rcases c2193 with a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
    have u22 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd u8 a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u23 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u22 a
      · exact absurd u20 a
    have u24 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u25 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v34 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a u12
      · exact absurd a n1
    have u28 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n2
    rcases c108 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c2326 : v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v39 := by
      rcases c2324 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v32 := by
      rcases c2321 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v41 := by
      rcases c2312 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v23 := by
      rcases c2325 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v1 := by
      rcases c2322 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u13 : v37 := by
      rcases c2307 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v30 := by
      rcases c2231 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n1
    have u19 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u17 a
    have u24 : ¬v22 := by
      rcases c2286 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
    have u25 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u26 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u27 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u28 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd u3 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u29 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u28 a
      · exact absurd u18 a
    have u30 : ¬v7 := by
      rcases c25 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u28 a
      · exact a
      · exact absurd u3 a
    have u31 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u4
    have u32 : v27 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u24
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n1
    have u33 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u31 a
      · exact a
    have u34 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u31 a
    have u35 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
    have u36 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u32 a
    rcases c190 with a|a|a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u23
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u36
    · exact absurd a u35
    · exact absurd a u20
    · exact absurd a u22
  have c2327 : v1 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v24 := by
      rcases c2326 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v42 := by
      rcases c2297 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u15 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u16 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u17 : v41 := by
      rcases c2323 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
    have u18 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v29 := by
      rcases c2311 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u12
    have u22 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u16
    have u23 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u16
    have u24 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u16
    have u25 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u12
    have u26 : v8 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n0
      · exact a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n2
    have u27 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd u2 a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u28 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u29
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u10
    have u32 : v7 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a n2
    have u33 : ¬v4 := by
      rcases c23 with a|a|a|a
      · exact absurd u27 a
      · exact absurd u2 a
      · exact absurd u32 a
      · exact a
    have u34 : v32 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u33
      · exact absurd a u22
      · exact absurd a u29
      · exact absurd a u23
      · exact a
      · exact absurd a u20
      · exact absurd a u5
    have u35 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u34 a
      · exact a
    have u36 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u34 a
    have u37 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u34 a
      · exact a
    rcases c479 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u36
    · exact absurd a u37
    · exact absurd a u35
    · exact absurd a u31
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u29
    · exact absurd a u23
    · exact absurd a u22
  have c2328 : v34 ∨ v39 ∨ ¬v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v24 := by
      rcases c2326 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v29 := by
      rcases c2311 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
    have u11 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n3
    have u12 : v33 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u12 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u12 a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u9
  have c2329 : ¬v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v1 := by
      rcases c2327 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v24 := by
      rcases c2326 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v29 := by
      rcases c2311 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
    have u14 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u4
    have u15 : v34 := by
      rcases c2328 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
    have u16 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v17 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u8 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
    have u20 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v7 := by
      rcases c2255 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
    have u24 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a n2
    have u25 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u24 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd u24 a
    · exact absurd a u25
  have c2330 : ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v1 := by
      rcases c2327 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v41 := by
      rcases c2329 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v24 := by
      rcases c2326 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u9 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : v32 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u7
    have u14 : v40 := by
      rcases c244 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n5
    have u15 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
    have u16 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u14 a
      · exact a
    rcases c479 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
  have c2331 : ¬v35 ∨ v27 ∨ v28 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v41 := by
      rcases c2329 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v24 := by
      rcases c2326 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v22 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
    rcases c83 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2332 : v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v24 := by
      rcases c2326 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v41 := by
      rcases c2329 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n1
    have u9 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
    have u10 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v35 := by
      rcases c2331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n3
    rcases c2330 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
  have c2333 : v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v1 := by
      rcases c2327 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : v24 := by
      rcases c2326 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v39 := by
      rcases c2332 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n0
    have u16 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n0
    have u17 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n1
    have u18 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u8
    have u22 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
    have u23 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a n2
    have u24 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u23 a
      · exact absurd u3 a
    have u25 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact absurd u23 a
      · exact a
    rcases c244 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a n1
  have c2334 : v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u2 : v24 := by
      rcases c2326 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u3 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u9 : v42 := by
      rcases c2333 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u10 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u16 : v1 := by
      rcases c2327 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u17 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n1
    have u19 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n1
    have u20 : ¬v32 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u19
    have u21 : v17 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
    have u22 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n0
    have u25 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd u16 a
      · exact absurd u15 a
      · exact absurd u24 a
      · exact a
    have u26 : v11 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u25
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u17
    have u27 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u10
    have u29 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u28 a
      · exact a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u29
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u14
  have c2335 : ¬v1 ∨ v2 ∨ v7 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u2 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v9 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
    have u6 : ¬v14 := by
      rcases c1975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u5 a
      · exact a
    rcases c335 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u6
  have c2336 : v2 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v10 ∨ v38 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u2 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
    have u8 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n8
    have u9 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n8
    have u10 : ¬v14 := by
      rcases c1975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u11 : v3 := by
      rcases c487 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
    have u12 : ¬v4 := by
      rcases c11 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd u11 a
      · exact a
    rcases c1029 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2337 : ¬v31 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u7 : v43 := by
      rcases c515 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
    rcases c152 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2338 : v40 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v10 ∨ ¬v24 ∨ v26 ∨ v31 ∨ v38 ∨ v39 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v2 := by
      rcases c2336 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n11
    have u6 : ¬v32 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v5 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n10
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n11
    have u11 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u8
    have u14 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n4
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u8
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u14 a
      · exact a
    rcases c487 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n11
  have c2339 : v49 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v10 ∨ v26 ∨ v39 ∨ ¬v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n0
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n0
    have u7 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v5 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
    have u12 : ¬v24 := by
      rcases c2338 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n0
    have u13 : v2 := by
      rcases c2336 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
    have u14 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact absurd u11 a
      · exact a
    have u16 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
    have u17 : ¬v23 := by
      rcases c2133 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n4
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
    have u18 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : v25 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a u9
    have u22 : v13 := by
      rcases c226 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n3
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    have u23 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u22 a
    rcases c982 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u14
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c2340 : ¬v32 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u7 : v43 := by
      rcases c515 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
    rcases c152 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2341 : v10 ∨ ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v4 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v3 := by
      rcases c3 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
    have u9 : v24 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
    have u10 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1400 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c2342 : v10 ∨ ¬v1 ∨ v7 ∨ v26 ∨ v27 ∨ v39 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u7 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u8 : ¬v33 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
    have u9 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u10 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v6 := by
      rcases c2339 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
    have u16 : ¬v2 := by
      rcases c2341 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n7
    have u18 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u10
    have u19 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v4 := by
      rcases c17 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact absurd u15 a
      · exact a
    have u21 : v30 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u22 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u21 a
    rcases c515 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a u24
    · exact absurd a u3
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u1
  have c2343 : ¬v30 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u6 a
      · exact a
    rcases c515 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
  have c2344 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u4 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n0 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c55 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2345 : v10 ∨ ¬v1 ∨ v26 ∨ v27 ∨ v39 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
    have u6 : ¬v30 := by
      rcases c2343 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
    have u7 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
    have u8 : ¬v33 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
    have u9 : v7 := by
      rcases c2342 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u10 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u11 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v4 := by
      rcases c2344 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u16 : v2 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
      · exact absurd u16 a
    have u18 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v6 := by
      rcases c10 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v11 := by
      rcases c1020 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
    have u21 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u11
    have u22 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u12
    have u23 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u22 a
      · exact a
    rcases c347 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd u21 a
    · exact absurd a u24
    · exact absurd a u20
  have c2346 : ¬v6 ∨ ¬v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    rcases c2122 with a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2347 : ¬v1 ∨ v26 ∨ v27 ∨ v39 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u2 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
    have u5 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
    have u6 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
    have u11 : v10 := by
      rcases c2345 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u12 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
    have u19 : ¬v6 := by
      rcases c2346 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u18 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u20 : v4 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd u18 a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u14
    have u21 : ¬v2 := by
      rcases c5 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u18 a
      · exact absurd u20 a
    have u22 : ¬v7 := by
      rcases c18 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u20 a
      · exact a
      · exact absurd u18 a
    rcases c549 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd n0 a
  have c2348 : ¬v10 ∨ v1 ∨ ¬v4 ∨ ¬v7 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u6 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
    have u9 : v6 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n10
    rcases c35 with a|a|a|a
    · exact absurd n2 a
    · exact absurd u8 a
    · exact absurd n3 a
    · exact absurd u9 a
  have c2349 : v24 ∨ v2 ∨ v3 ∨ v6 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
    have u2 : v9 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c2226 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u2 a
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2350 : ¬v5 ∨ ¬v4 ∨ ¬v7 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v1 := by
      rcases c18 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c32 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v6 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v2 := by
      rcases c28 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u5 : v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v9 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v17 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v15 := by
      rcases c1913 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd u7 a
    have u11 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u8 a
    rcases c434 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u7 a
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u9
  have c2351 : ¬v7 ∨ v1 ∨ ¬v4 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n12
    have u2 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v10 := by
      rcases c2348 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v5 := by
      rcases c2350 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u2
    have u10 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v6 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n12
    have u15 : v3 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    rcases c33 with a|a|a|a
    · exact absurd u15 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd u14 a
  have c2352 : ¬v29 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    rcases c263 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u2
  have c2353 : v36 ∨ v1 ∨ ¬v3 ∨ ¬v4 ∨ ¬v6 ∨ v10 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v48 := by
      rcases c2191 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n15
    have u2 : ¬v5 := by
      rcases c31 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : ¬v2 := by
      rcases c22 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd n3 a
    have u4 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u4
    have u10 : ¬v28 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u3
      · exact a
      · exact absurd a n13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n15
    have u11 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v24 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v23 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u7
    have u16 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v29 := by
      rcases c1959 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd u15 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n15
    rcases c2352 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n13
  have c2354 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
  have c2355 : ¬v3 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v7 := by
      rcases c2351 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n15
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v6 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd n2 a
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
      · exact absurd a n13
      · exact absurd a n15
    have u9 : v5 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n14
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n15
    have u10 : ¬v2 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u10
      · exact a
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n15
    have u12 : ¬v34 := by
      rcases c2354 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
    rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a n14
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n13
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n15
  have c2356 : v6 ∨ v1 ∨ v3 ∨ v7 ∨ v38 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u2 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := by
      rcases c37 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
    have u8 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    rcases c487 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n7
  have c2357 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v24 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    rcases c1012 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2358 : v10 ∨ v1 ∨ ¬v4 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v7 := by
      rcases c2351 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n14
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v3 := by
      rcases c2355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
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
    have u9 : v17 := by
      rcases c2357 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u5
    have u10 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v6 := by
      rcases c2356 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v2 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v9 := by
      rcases c944 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
    have u18 : ¬v24 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2359 : v3 ∨ v1 ∨ ¬v10 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u8 : ¬v30 := by
      rcases c2343 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u9 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u10 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v2 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v24 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v28 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u17 : ¬v23 := by
      rcases c1956 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
    have u18 : v25 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v29 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u12
    have u20 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u18 a
    rcases c2352 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c2360 : ¬v4 ∨ v1 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
    have u7 : ¬v30 := by
      rcases c2343 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
    have u8 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
    have u9 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u10 : ¬v7 := by
      rcases c2351 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n6
    have u11 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : v10 := by
      rcases c2358 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
    have u17 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u11
    have u19 : v3 := by
      rcases c2359 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u20 : ¬v6 := by
      rcases c31 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
      · exact absurd n0 a
    have u21 : ¬v2 := by
      rcases c21 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u22 : ¬v28 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u21
      · exact a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u23 : ¬v34 := by
      rcases c2354 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
    rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u22
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a n6
  have c2361 : ¬v10 ∨ ¬v3 ∨ v4 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
    have u6 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u7 : v6 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a u2
    have u8 : ¬v2 := by
      rcases c24 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact absurd u7 a
    have u9 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v23 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a u9
      · exact a
    have u11 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u10 a
      · exact a
    rcases c2127 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n14
  have c2362 : ¬v6 ∨ ¬v2 ∨ ¬v3 ∨ v4 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n12
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n11
    have u9 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u8 a
    rcases c413 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd u4 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n12
  have c2363 : ¬v12 ∨ v4 ∨ v6 ∨ v7 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u4 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
    have u7 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u6 a
    rcases c226 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n10
  have c2364 : v13 ∨ v1 ∨ v4 ∨ ¬v5 ∨ v6 ∨ v7 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v43 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v11 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n6
    have u2 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    rcases c296 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n12
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a n5
  have c2365 : v7 ∨ v1 ∨ v4 ∨ v6 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v5 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n9
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
    have u6 : v42 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u7 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v30 := by
      rcases c2343 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n10
    have u11 : ¬v12 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a|a|a
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
    have u12 : v13 := by
      rcases c2364 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u13 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
    have u19 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
    have u20 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v29 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a n1
    rcases c2352 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u9
  have c2366 : ¬v3 ∨ v1 ∨ v4 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n13
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v10 := by
      rcases c2361 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
    have u9 : v2 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v6 := by
      rcases c2362 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u3
    have u11 : v7 := by
      rcases c2365 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
      · exact absurd u9 a
    have u13 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a u3
    have u14 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u13 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd u11 a
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a n13
  have c2367 : v2 ∨ v3 ∨ v4 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v10 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
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
      · exact absurd a n12
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v17 := by
      rcases c1313 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u4 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
    rcases c72 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  exact ⟨c2326, c2334, c2335, c2337, c2340, c2343, c2346, c2347, c2351, c2352, c2354, c2357, c2360, c2366, c2367⟩
