import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 500-549 of the 2915-step refutation of ccase001: 143 core clauses and 50 earlier-derived ones give 16 more. -/
theorem CCase001_block010
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
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
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c133 : ¬v34 ∨ ¬v30)
    (c137 : ¬v34 ∨ ¬v31)
    (c140 : ¬v34 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c169 : ¬v45 ∨ ¬v43)
    (c172 : ¬v48 ∨ ¬v43)
    (c189 : v43 ∨ v48 ∨ v44 ∨ v47 ∨ v49 ∨ v45 ∨ v46)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c222 : v6 ∨ v13 ∨ v33 ∨ v31 ∨ v45 ∨ v12 ∨ v3 ∨ v11 ∨ v5 ∨ v39 ∨ ¬v4 ∨ v32 ∨ v46 ∨ v48)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c249 : v6 ∨ ¬v7 ∨ v49 ∨ v1 ∨ v48 ∨ v14 ∨ v13 ∨ v8)
    (c270 : v36 ∨ v22 ∨ v23 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v37)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c275 : v43 ∨ ¬v42 ∨ v35 ∨ v49 ∨ v29 ∨ v48 ∨ v36 ∨ v41)
    (c280 : v36 ∨ ¬v43 ∨ v37 ∨ v2 ∨ v1 ∨ v7 ∨ v44 ∨ v49)
    (c284 : v36 ∨ ¬v16 ∨ v37 ∨ v28 ∨ v23 ∨ v8 ∨ v14 ∨ v24 ∨ v17 ∨ v15 ∨ v21 ∨ v30 ∨ v9 ∨ v38)
    (c285 : ¬v42 ∨ v49 ∨ v35 ∨ v21 ∨ v29 ∨ v28 ∨ v41 ∨ v33 ∨ v36 ∨ v40 ∨ v15 ∨ v47 ∨ v48 ∨ v20)
    (c288 : v8 ∨ v9 ∨ v45 ∨ v3 ∨ v44 ∨ v1 ∨ ¬v2 ∨ v10)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c294 : v36 ∨ ¬v43 ∨ v37 ∨ v8 ∨ v7 ∨ v4 ∨ v9 ∨ v14 ∨ v1 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c318 : ¬v26 ∨ v19 ∨ v6 ∨ v31 ∨ v25 ∨ v33 ∨ v24 ∨ v20 ∨ v32 ∨ v12 ∨ v27 ∨ v17 ∨ v5 ∨ v4)
    (c322 : v36 ∨ ¬v43 ∨ v37 ∨ v42 ∨ v1 ∨ v7 ∨ v44 ∨ v49)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c339 : ¬v27 ∨ v41 ∨ v19 ∨ v35 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v18 ∨ v32 ∨ v25 ∨ v47 ∨ v48 ∨ v49)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c398 : v36 ∨ ¬v43 ∨ v37 ∨ v42 ∨ v1 ∨ v2 ∨ v44 ∨ v49)
    (c399 : v7 ∨ ¬v10 ∨ v17 ∨ v16 ∨ v14 ∨ v21 ∨ v4 ∨ v11 ∨ v3 ∨ v9 ∨ v8 ∨ v44 ∨ v45 ∨ v46)
    (c401 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v25)
    (c407 : v11 ∨ ¬v12 ∨ v48 ∨ v1 ∨ v4 ∨ v20 ∨ v5 ∨ v46 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v47 ∨ v14)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c456 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v4 ∨ v5 ∨ v12 ∨ v16 ∨ v8 ∨ v17 ∨ v3 ∨ v22 ∨ ¬v18 ∨ v11)
    (c457 : ¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v48 ∨ v49 ∨ v41 ∨ v36)
    (c499 : v12 ∨ v6 ∨ v5 ∨ v4 ∨ v32 ∨ v20 ∨ v17 ∨ ¬v11 ∨ v25 ∨ v18 ∨ v10 ∨ v31 ∨ v13 ∨ v33)
    (c501 : ¬v26 ∨ v33 ∨ v20 ∨ v32 ∨ v27 ∨ v19 ∨ v25 ∨ v18)
    (c512 : ¬v34 ∨ v41 ∨ v37 ∨ v49 ∨ v27 ∨ v30 ∨ v35 ∨ v23 ∨ v40 ∨ v33 ∨ v29 ∨ v47 ∨ v48 ∨ v28)
    (c516 : ¬v27 ∨ v20 ∨ v35 ∨ v19 ∨ v21 ∨ v26 ∨ v34 ∨ v28)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c527 : v29 ∨ ¬v16 ∨ v30 ∨ v24 ∨ v9 ∨ v23 ∨ v27 ∨ v8 ∨ v20 ∨ v15 ∨ v21 ∨ v13 ∨ v17 ∨ v31)
    (c537 : v29 ∨ ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v27 ∨ v15 ∨ v22)
    (c563 : v11 ∨ v4 ∨ v12 ∨ v9 ∨ ¬v10 ∨ v3 ∨ v17 ∨ v5 ∨ v19 ∨ v16 ∨ v32 ∨ v30 ∨ v31 ∨ v24)
    (c566 : v36 ∨ v22 ∨ v32 ∨ v37 ∨ v35 ∨ ¬v29 ∨ v31 ∨ v28 ∨ v25 ∨ v39 ∨ v16 ∨ v30 ∨ v15 ∨ v21)
    (c604 : v10 ∨ v11 ∨ v23 ∨ v24 ∨ ¬v17 ∨ v16 ∨ v25 ∨ v18)
    (c620 : v20 ∨ ¬v10 ∨ ¬v11 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v47 ∨ v48)
    (c634 : v20 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48)
    (c637 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c686 : v10 ∨ ¬v2 ∨ v12 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c691 : v25 ∨ v10 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c692 : v47 ∨ ¬v10 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v49)
    (c693 : ¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c721 : ¬v5 ∨ v10 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c795 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c825 : v26 ∨ ¬v9 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v24 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c891 : ¬v11 ∨ v10 ∨ ¬v16 ∨ v18 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c892 : v10 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c893 : ¬v19 ∨ ¬v22 ∨ v29 ∨ v30)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c934 : ¬v10 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c943 : ¬v10 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c955 : ¬v11 ∨ ¬v10 ∨ ¬v20 ∨ v26 ∨ v27)
    (c957 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v25 ∨ v31 ∨ v32)
    (c989 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c991 : v49 ∨ v4 ∨ ¬v10 ∨ v11 ∨ ¬v16 ∨ v31 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c1002 : v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1004 : v18 ∨ v16 ∨ v17 ∨ v23 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1051 : ¬v3 ∨ ¬v2 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49)
    (c1053 : ¬v10 ∨ ¬v2 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1056 : ¬v24 ∨ ¬v16 ∨ v19 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1084 : ¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1091 : ¬v2 ∨ ¬v4 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1104 : v42 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1105 : v34 ∨ v40 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1108 : v44 ∨ ¬v1 ∨ ¬v23 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1109 : ¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1112 : v11 ∨ v2 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c1113 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1114 : v32 ∨ v2 ∨ ¬v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v30 ∨ v33 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v10 ∨ v2 ∨ ¬v11 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35) ∧ (v19 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v17 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47) ∧ (v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v33 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v34 ∨ v35) ∧ (¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37) ∧ (¬v5 ∨ v2 ∨ ¬v4 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (¬v3 ∨ ¬v4 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (v19 ∨ v20 ∨ v31 ∨ v32 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v37 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v35 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v30 ∨ ¬v11 ∨ v19 ∨ v31 ∨ v32 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1115 : v14 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v21 ∨ v32 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v45 := by
      rcases c169 with a|a
      · exact a
      · exact absurd n12 a
    have u2 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v26 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd n12 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v20 := by
      rcases c1113 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd u8 a
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n5
  have c1116 : v23 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v48 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n16 a
    have u3 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n19
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n13
    have u5 : ¬v2 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n21
    have u6 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n16 a
      · exact absurd a n11
      · exact absurd a n15
      · exact a
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd a n21
    have u7 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n3
      · exact absurd a n0
    have u8 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    rcases c222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a n18
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n13
    · exact absurd u4 a
    · exact absurd a n8
    · exact absurd a n19
    · exact absurd a u2
  have c1117 : v11 ∨ v2 ∨ v16 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v23 := by
      rcases c1108 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u15
    have u17 : v10 := by
      rcases c1112 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u18 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v17 := by
      rcases c1114 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v19 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u23 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
    have u24 : v21 := by
      rcases c1115 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u22
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u25 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n6
    have u27 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u26 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a n7
    · exact absurd a u28
    · exact absurd a n6
    · exact absurd a u27
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd u26 a
  have c1118 : v42 ∨ v2 ∨ v11 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v16 := by
      rcases c1117 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v24 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n5
    have u21 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u9 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u20 a
    have u24 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u20 a
    have u25 : v10 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd u20 a
    have u26 : v13 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u18
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd u24 a
      · exact absurd a u21
    rcases c67 with a|a|a
    · exact absurd u24 a
    · exact absurd u26 a
    · exact absurd u25 a
  have c1119 : ¬v10 ∨ v2 ∨ ¬v11 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n3
    have u5 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v24 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v22 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a u10
    have u12 : v27 := by
      rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n6
    rcases c106 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c1120 : ¬v16 ∨ ¬v1 ∨ v10 ∨ ¬v11 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v3 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u8 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v12 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a u6
    rcases c58 with a|a|a
    · exact absurd u8 a
    · exact absurd n3 a
    · exact absurd u9 a
  have c1121 : v17 ∨ ¬v1 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v19 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u5 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n12
    have u6 : v18 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a u3
    have u7 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v20 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
    rcases c96 with a|a
    · exact absurd u6 a
    · exact absurd u9 a
  have c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd n0 a
  have c1123 : ¬v17 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
    rcases c1113 with a|a|a|a|a|a|a|a|a|a|a
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
  have c1124 : v45 ∨ v2 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n4
    have u3 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : v11 := by
      rcases c1118 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
    have u17 : ¬v23 := by
      rcases c1108 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u16 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v10 := by
      rcases c1119 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u15 a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u19 : ¬v16 := by
      rcases c1120 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u18
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u20 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u17
    have u21 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u20 a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u20 a
      · exact absurd u15 a
      · exact a
    have u23 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v17 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
    have u26 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n0
    have u27 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u16 a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u16 a
      · exact absurd u26 a
      · exact a
    have u29 : v19 := by
      rcases c1121 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u16 a
      · exact absurd a u18
      · exact absurd u15 a
      · exact absurd a u21
      · exact a
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n5
    have u30 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    rcases c499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd a u12
    · exact absurd a u31
    · exact absurd a u24
    · exact absurd u15 a
    · exact absurd a u32
    · exact absurd a u30
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a u13
  have c1125 : ¬v11 ∨ v1 ∨ v6 ∨ ¬v7 ∨ ¬v10 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    rcases c249 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c1126 : v16 ∨ ¬v10 ∨ v11 ∨ v17 ∨ ¬v19 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v23 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
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
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    rcases c864 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
  have c1127 : v47 ∨ v1 ∨ v12 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v2 := by
      rcases c1124 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v7 := by
      rcases c322 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n8
    have u10 : ¬v4 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n8
    have u11 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u9 a
    have u14 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u20 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u11 a
      · exact a
    have u21 : ¬v17 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u22 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
    have u23 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a n5
    have u24 : ¬v11 := by
      rcases c1125 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd u23 a
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v16 := by
      rcases c991 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd u23 a
      · exact absurd a u24
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u26 : ¬v19 := by
      rcases c1126 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd u23 a
      · exact absurd a u24
      · exact absurd a u21
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
    have u27 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u6
    have u28 : v18 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u21
      · exact a
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n6
    have u29 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : v20 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u19
      · exact absurd a u22
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u30
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u10
    rcases c96 with a|a
    · exact absurd u28 a
    · exact absurd u31 a
  have c1128 : v11 ∨ v1 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v12 ∨ v17 ∨ v19 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u3 : v18 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
    have u4 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u2 a
    have u7 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u3 a
      · exact a
    rcases c407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n5 a
    · exact absurd a n16
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n14
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n15
    · exact absurd a u4
  have c1129 : v32 ∨ v1 ∨ v3 ∨ v4 ∨ v5 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v17 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v25 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u6 : ¬v26 := by
      rcases c1113 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c850 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
  have c1130 : v44 ∨ v1 ∨ v11 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v12 := by
      rcases c1127 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v2 := by
      rcases c1124 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v4 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n8
    have u11 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v3 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v7 := by
      rcases c322 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u20 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u19 a
    have u21 : v19 := by
      rcases c1129 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
    have u27 : v25 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
    have u28 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u13
    rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u28
    · exact absurd u27 a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1131 : v3 ∨ v1 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v12 := by
      rcases c1127 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v11 := by
      rcases c1130 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v2 := by
      rcases c1124 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u5 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u6 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    rcases c288 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd u3 a
    · exact absurd a u4
  have c1132 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    rcases c537 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n4
  have c1133 : ¬v12 ∨ v3 ∨ v7 ∨ ¬v11 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u2 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v16 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u5 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n9
      · exact a
      · exact absurd a n11
    have u10 : ¬v22 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    rcases c1132 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a n9
  have c1134 : v19 ∨ v4 ∨ v5 ∨ v6 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ v17 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u2 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u5
    have u7 : ¬v20 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n0
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n1
  have c1135 : v42 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v1 := by
      rcases c1131 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v2 := by
      rcases c1124 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v12 := by
      rcases c1133 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u16 : ¬v17 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n6
    have u18 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
    have u19 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n4 a
    have u20 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n4 a
    have u21 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n4 a
    have u22 : v19 := by
      rcases c1134 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n8
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
    have u26 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
    have u27 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u14
      · exact a
      · exact absurd a n0
    rcases c1132 with a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u9
    · exact absurd a u14
  have c1136 : v47 ∨ v12 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v2 := by
      rcases c1124 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v4 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n7
    have u10 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v3 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v1 := by
      rcases c1131 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u18 a
      · exact absurd u2 a
      · exact a
    have u20 : ¬v17 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u21 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n4
    have u22 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
    have u23 : ¬v11 := by
      rcases c1135 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u19
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v23 := by
      rcases c1108 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u18 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v16 := by
      rcases c991 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd u21 a
      · exact absurd a u23
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u26 : ¬v19 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u20
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u27 : v9 := by
      rcases c563 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd u21 a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u22
    have u28 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u6
    have u29 : v18 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u20
      · exact a
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n5
    have u30 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u21 a
    have u31 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u28 a
    have u33 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u29 a
    rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u33
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a u32
    · exact absurd a u9
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u25
    · exact absurd a u30
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u31
    · exact absurd u29 a
    · exact absurd a u23
  have c1137 : v9 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ ¬v10 ∨ v11 ∨ v14 ∨ v16 ∨ v17 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v18 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd n5 a
      · exact absurd a n6
    have u2 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    rcases c399 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1138 : v44 ∨ v17 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v12 := by
      rcases c1136 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v2 := by
      rcases c1124 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v4 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n7
    have u10 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v3 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n3
    have u18 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u17 a
    have u19 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u17 a
    have u20 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd u17 a
      · exact absurd u1 a
      · exact a
    have u23 : v1 := by
      rcases c1131 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u23 a
      · exact absurd u3 a
      · exact a
    have u25 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u23 a
      · exact absurd u3 a
      · exact a
    have u26 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u23 a
      · exact absurd u3 a
      · exact a
    have u27 : v16 := by
      rcases c1137 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a u22
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u27 a
      · exact a
    rcases c450 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u30
    · exact absurd a u21
    · exact absurd a u29
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd u1 a
    · exact absurd a u24
  have c1139 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v17 := by
      rcases c1138 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v12 := by
      rcases c1136 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
    have u24 : ¬v22 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u18
    have u25 : ¬v28 := by
      rcases c1132 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u22
    have u26 : v2 := by
      rcases c1124 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v4 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n6
    have u28 : ¬v26 := by
      rcases c1113 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u29 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u28
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
    have u30 : v11 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u27
      · exact a
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
    have u31 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u30 a
    have u33 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u30 a
    have u34 : ¬v6 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u30 a
      · exact absurd a u31
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u35 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u32
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a n0
    have u36 : v1 := by
      rcases c249 with a|a|a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd u35 a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u33
    rcases c5 with a|a|a
    · exact absurd u36 a
    · exact absurd u26 a
    · exact absurd u35 a
  have c1140 : v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v33 := by
      rcases c850 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n1 a
    rcases c457 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
  have c1142 : v19 ∨ v11 ∨ ¬v17 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v29 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u13
    have u17 : ¬v25 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
    have u19 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : v22 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
    have u22 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n9
    have u23 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v10 := by
      rcases c604 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u2
    have u26 : ¬v12 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u25 a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u27 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u28 : v5 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u29 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u28 a
      · exact absurd u22 a
      · exact a
    have u30 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u22 a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u7 a
    · exact absurd a u12
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a n7
    · exact absurd a n12
  have c1143 : ¬v34 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : v28 := by
      rcases c285 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n3
    have u8 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u7 a
    rcases c1132 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u3
  have c1144 : v44 ∨ ¬v17 ∨ v19 ∨ v31 ∨ v32 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v34 := by
      rcases c1143 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v11 := by
      rcases c1142 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
    have u18 : v29 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u13
    have u19 : ¬v25 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u8
    have u21 : ¬v27 := by
      rcases c272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u8
    have u22 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : v22 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd u18 a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v10 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u16 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v12 := by
      rcases c892 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd u16 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u28 : v9 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u24
      · exact absurd a u25
      · exact a
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a u19
    have u29 : ¬v2 := by
      rcases c686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u30 : v5 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u27
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u31 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u28 a
      · exact absurd u16 a
      · exact a
    have u32 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u31
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u33 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd a u27
      · exact absurd a u31
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u34 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u30 a
      · exact absurd u32 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u6 a
    · exact absurd a u12
    · exact absurd a u29
    · exact absurd a u33
    · exact absurd a u34
    · exact absurd a n0
    · exact absurd a n10
  have c1145 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    rcases c516 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
  have c1146 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37 := by
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
    have u4 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n1 a
      · exact a
    rcases c270 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a n4
  have c1147 : v31 ∨ v19 ∨ v20 ∨ v23 ∨ ¬v28 ∨ v32 ∨ v34 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c678 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v30 := by
      rcases c697 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v10 := by
      rcases c691 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v11 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u15 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v12 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd u15 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u18 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u9
    have u19 : ¬v18 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n1
    have u20 : ¬v4 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a u19
    · exact absurd a u3
    · exact absurd a u12
  have c1148 : v31 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v32 ∨ v34 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v17 := by
      rcases c1144 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v29 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u7
    have u11 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v25 := by
      rcases c1146 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
    have u15 : ¬v28 := by
      rcases c1147 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
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
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v10 := by
      rcases c691 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v11 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v12 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u20 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u11
      · exact a
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u4
    have u21 : ¬v18 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a n2
    have u22 : ¬v4 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a u8
  have c1149 : ¬v5 ∨ v2 ∨ ¬v4 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
  have c1150 : v23 ∨ ¬v4 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v48 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n19 a
    have u3 : v16 := by
      rcases c1148 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a u2
      · exact absurd a n24
    have u4 : ¬v17 := by
      rcases c1144 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a u2
      · exact absurd a n24
    have u5 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd n19 a
      · exact absurd a n20
      · exact absurd a n24
    have u7 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u10 : ¬v24 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u11 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n23
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n18
    have u12 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
    have u13 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
    have u14 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n2 a
    rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd u3 a
    · exact absurd a n15
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u13
    · exact absurd a n16
  have c1151 : v36 ∨ v11 ∨ ¬v16 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v24 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u3 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n21
    have u4 : ¬v10 := by
      rcases c1150 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
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
      · exact absurd n18 a
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u5 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n9
    have u6 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u3 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u8 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u5 a
      · exact absurd u3 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n18 a
    · exact absurd a n14
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n19
    · exact absurd a n23
  have c1152 : v34 ∨ v19 ∨ v20 ∨ v23 ∨ v31 ∨ v32 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v17 := by
      rcases c1144 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v29 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u8
    have u12 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n0
    have u13 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c1146 with a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v16 := by
      rcases c1148 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u21 : ¬v27 := by
      rcases c339 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : v11 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u16 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u23 : v10 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u16 a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u24 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u22 a
    have u25 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u22 a
    have u26 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u22 a
    rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u16 a
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a n3
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd a u6
  have c1153 : v36 ∨ ¬v10 ∨ ¬v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n15
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n10
    have u4 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n8
    have u5 : ¬v2 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n12 a
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a n17
  have c1154 : v20 ∨ ¬v11 ∨ v19 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v23 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n0
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
    have u2 : ¬v17 := by
      rcases c1144 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n11
      · exact absurd a n12
    have u18 : v29 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a u15
    have u19 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a n3
    have u21 : ¬v10 := by
      rcases c1153 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v16 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u21
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : v15 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u2
    have u24 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v5 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u26 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u25
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u12
    have u27 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n1 a
    have u28 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u26 a
    have u29 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd n1 a
    rcases c317 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u23 a
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a u9
    · exact absurd a u27
    · exact absurd a u29
  have c1155 : ¬v3 ∨ ¬v4 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
  have c1156 : v31 ∨ v19 ∨ v20 ∨ v32 ∨ v34 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c1144 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v29 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u8
    have u12 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
    have u13 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c1146 with a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
    have u16 : ¬v11 := by
      rcases c1154 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u17 : v23 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n0
    have u19 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n8
    have u20 : ¬v3 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n11
    have u21 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n0
    have u22 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u19 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n11
    have u24 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u5
    have u25 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u21 a
    have u26 : v6 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd u24 a
      · exact absurd a u23
    have u27 : v7 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd u26 a
      · exact a
      · exact absurd a u25
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c34 with a|a|a
    · exact absurd u19 a
    · exact absurd u26 a
    · exact absurd u27 a
  have c1157 : ¬v18 ∨ ¬v34 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1143 with a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1158 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    rcases c501 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
  have c1159 : v19 ∨ v11 ∨ v20 ∨ v31 ∨ v32 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v34 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
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
    have u2 : ¬v17 := by
      rcases c1144 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v18 := by
      rcases c1157 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v25 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v26 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u6
    have u16 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n8
    have u17 : ¬v3 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n11
    have u18 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n3
    have u19 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n11
    have u21 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u9
    have u22 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u18 a
    have u23 : v6 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u21 a
      · exact absurd a u20
    have u24 : v7 := by
      rcases c943 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u20
      · exact absurd u23 a
      · exact a
      · exact absurd a u22
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c34 with a|a|a
    · exact absurd u16 a
    · exact absurd u23 a
    · exact absurd u24 a
  have c1160 : ¬v11 ∨ ¬v10 ∨ v19 ∨ v26 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v43 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u3
    have u9 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u4
    have u10 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v1 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v4 := by
      rcases c1149 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a n11
    have u13 : v7 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a n11
    have u14 : v6 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd u9 a
    rcases c35 with a|a|a
    · exact absurd u9 a
    · exact absurd u14 a
    · exact absurd u13 a
  have c1161 : v19 ∨ v20 ∨ v31 ∨ v32 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v34 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v17 := by
      rcases c1144 with a|a|a|a|a|a|a|a|a|a|a
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
    have u12 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u13 : v11 := by
      rcases c1159 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u14 : ¬v18 := by
      rcases c1157 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v25 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v26 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u7
    have u17 : ¬v10 := by
      rcases c1160 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
    have u19 : ¬v4 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n10
    have u20 : ¬v2 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd u18 a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u21 a
      · exact absurd u13 a
      · exact a
    have u23 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u21 a
      · exact absurd u13 a
      · exact a
    have u24 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd u13 a
      · exact absurd a u17
      · exact absurd a u19
    have u25 : v6 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd u24 a
    rcases c29 with a|a|a
    · exact absurd u24 a
    · exact absurd u18 a
    · exact absurd u25 a
  have c1162 : v37 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v24 := by
      rcases c957 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v9 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
    have u7 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n7
    have u8 : ¬v4 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n19
    have u9 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v12 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
    have u11 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u9 a
    have u12 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n2 a
    have u14 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
    rcases c294 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n14 a
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a n12
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n19
  have c1163 : v35 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v34 := by
      rcases c1023 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u6 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u5 a
      · exact a
    rcases c512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n12
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u4
  have c1164 : v30 ∨ ¬v11 ∨ v19 ∨ v31 ∨ v32 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v20 := by
      rcases c1161 with a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v26 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v9 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n9
    have u17 : v10 := by
      rcases c1162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u18 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n1 a
    have u19 : v27 := by
      rcases c955 with a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact absurd u1 a
      · exact absurd a u15
      · exact a
    have u20 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u15
      · exact a
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u8
    have u21 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u21
  exact ⟨c1119, c1122, c1132, c1134, c1139, c1140, c1141, c1143, c1145, c1146, c1149, c1155, c1161, c1162, c1163, c1164⟩
