import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 950-999 of the 2189-step refutation of ccase000: 113 core clauses and 75 earlier-derived ones give 13 more. -/
theorem CCase000_block019
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
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
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c68 : ¬v16 ∨ ¬v18)
    (c70 : ¬v16 ∨ ¬v20)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c81 : ¬v20 ∨ ¬v21)
    (c84 : ¬v22 ∨ ¬v25)
    (c86 : ¬v22 ∨ ¬v27)
    (c89 : ¬v25 ∨ ¬v23)
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
    (c112 : ¬v33 ∨ ¬v30)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c127 : ¬v38 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c134 : ¬v40 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c149 : ¬v45 ∨ ¬v43)
    (c154 : ¬v45 ∨ ¬v44)
    (c160 : ¬v47 ∨ ¬v45)
    (c161 : ¬v48 ∨ ¬v45)
    (c162 : ¬v49 ∨ ¬v45)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c197 : v43 ∨ v29 ∨ v30 ∨ v35 ∨ v44 ∨ ¬v36 ∨ v42 ∨ v37)
    (c211 : v43 ∨ v29 ∨ v30 ∨ v44 ∨ ¬v36 ∨ v37 ∨ v42 ∨ v49)
    (c215 : v3 ∨ ¬v4 ∨ v45 ∨ v5 ∨ v11 ∨ v10 ∨ v46 ∨ v47)
    (c255 : ¬v15 ∨ v22 ∨ v23 ∨ v10 ∨ v21 ∨ v1 ∨ v14 ∨ v17 ∨ v8 ∨ v16 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c271 : ¬v20 ∨ v28 ∨ v14 ∨ v27 ∨ v21 ∨ v12 ∨ v19 ∨ v13)
    (c287 : v3 ∨ ¬v4 ∨ v18 ∨ v46 ∨ v5 ∨ v13 ∨ v11 ∨ v6 ∨ v10 ∨ v25 ∨ v26 ∨ v24 ∨ v47 ∨ v48)
    (c343 : v43 ∨ v9 ∨ v44 ∨ v1 ∨ v3 ∨ v45 ∨ ¬v2 ∨ v10)
    (c347 : v20 ∨ v5 ∨ v4 ∨ v6 ∨ v13 ∨ ¬v12 ∨ v19 ∨ v11)
    (c368 : v1 ∨ v7 ∨ v16 ∨ v14 ∨ v9 ∨ v21 ∨ ¬v8 ∨ v15)
    (c382 : v21 ∨ v6 ∨ v5 ∨ v19 ∨ v14 ∨ ¬v13 ∨ v20 ∨ v12)
    (c406 : ¬v45 ∨ v4 ∨ v38 ∨ v3 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c416 : ¬v39 ∨ v32 ∨ v38 ∨ v47 ∨ v31 ∨ v40 ∨ v33 ∨ v46)
    (c419 : v1 ∨ v10 ∨ v24 ∨ v23 ∨ v44 ∨ v3 ∨ v7 ∨ v14 ∨ ¬v2 ∨ v22 ∨ v9 ∨ v43 ∨ v16 ∨ v49)
    (c431 : ¬v33 ∨ v25 ∨ v27 ∨ v26 ∨ v34 ∨ v32 ∨ v40 ∨ v41)
    (c450 : v26 ∨ ¬v25 ∨ v18 ∨ v32 ∨ v31 ∨ v19 ∨ v24 ∨ v17)
    (c452 : v33 ∨ ¬v26 ∨ v19 ∨ v20 ∨ v18 ∨ v27 ∨ v32 ∨ v25)
    (c486 : v3 ∨ ¬v4 ∨ v46 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v47)
    (c501 : ¬v45 ∨ v37 ∨ v4 ∨ v25 ∨ v38 ∨ v23 ∨ v24 ∨ v31 ∨ v5 ∨ v3 ∨ v40 ∨ v44 ∨ v46 ∨ v47)
    (c519 : v41 ∨ ¬v33 ∨ v32 ∨ v40 ∨ v46 ∨ v26 ∨ v37 ∨ v30 ∨ v23 ∨ v34 ∨ v25 ∨ v31 ∨ v47 ∨ v48)
    (c526 : v43 ∨ v8 ∨ v44 ∨ v3 ∨ v1 ∨ ¬v2 ∨ v10 ∨ v9)
    (c554 : ¬v31 ∨ v30 ∨ v38 ∨ v37 ∨ v24 ∨ v25 ∨ v23 ∨ v32)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c635 : v15 ∨ v8 ∨ v10 ∨ v11 ∨ v16 ∨ ¬v18 ∨ v22 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c652 : v15 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c771 : ¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c806 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c866 : ¬v27 ∨ v4 ∨ v5 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c876 : ¬v18 ∨ v7 ∨ v14 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c984 : ¬v9 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1041 : v29 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ ¬v34 ∨ v37 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1047 : v6 ∨ v13 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1070 : ¬v3 ∨ ¬v2 ∨ ¬v5 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1105 : ¬v20 ∨ ¬v28 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1111 : ¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v23 ∨ v27 ∨ v28)
    (c1117 : ¬v27 ∨ ¬v33 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1126 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1135 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1152 : ¬v2 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1156 : v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1197 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1243 : v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1256 : v12 ∨ v6 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1259 : ¬v28 ∨ v6 ∨ v13 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1265 : v5 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1271 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42)
    (c1372 : ¬v19 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1390 : v23 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1399 : v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1405 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1452 : ¬v13 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1468 : ¬v2 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1483 : v21 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1496 : ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1502 : ¬v39 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v46 ∨ v47)
    (c1503 : v10 ∨ v4 ∨ v11 ∨ v12 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v46 ∨ v47)
    (c1504 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1510 : ¬v5 ∨ ¬v1 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1514 : v12 ∨ ¬v2 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43) ∧ (v7 ∨ v1 ∨ v6 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v48) ∧ (v8 ∨ v1 ∨ v10 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43) ∧ (v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v46 ∨ v47) ∧ (¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v21 ∨ v27 ∨ v28) ∧ (¬v33 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47) ∧ (¬v40 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46) ∧ (v37 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v40 ∨ ¬v2 ∨ v10 ∨ ¬v11 ∨ v13 ∨ v22 ∨ v23 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ ¬v2 ∨ v10 ∨ v13 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1515 : v28 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u5 : v35 := by
      rcases c1514 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v41 := by
      rcases c1000 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c1290 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n11
  have c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n1
    have u5 : v21 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c613 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n4
  have c1517 : v23 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v22 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v42 := by
      rcases c1515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : v35 := by
      rcases c1126 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v5 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v1 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v3 := by
      rcases c1070 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u10
    have u18 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u10
    have u19 : v8 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u18
    have u20 : v4 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n12
    have u21 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v6 := by
      rcases c27 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact a
      · exact absurd u14 a
    have u24 : ¬v7 := by
      rcases c28 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact a
      · exact absurd u14 a
    have u25 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n14
    have u26 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u26
    have u28 : v16 := by
      rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u10
      · exact a
      · exact absurd a n15
    rcases c630 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u27
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u26
  have c1518 : ¬v2 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v42 := by
      rcases c1515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v35 := by
      rcases c1126 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n7
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v5 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v1 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u13 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u3
    have u14 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u3
    have u15 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v25 := by
      rcases c1517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
    have u17 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v18 := by
      rcases c684 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u8
    have u20 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u21 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a n6
    have u22 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u11 a
      · exact a
      · exact absurd u20 a
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd u14 a
    · exact absurd a u22
  have c1519 : v7 ∨ v1 ∨ v6 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n8
      · exact a
      · exact absurd a n6
      · exact absurd a n10
    have u2 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n1
    have u6 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u5 a
      · exact a
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd u5 a
    · exact absurd a u3
  have c1520 : v4 ∨ v1 ∨ ¬v2 ∨ v3 ∨ ¬v8 ∨ v9 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v45 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd n2 a
      · exact absurd a u4
    have u6 : ¬v49 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v48 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v47 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v25 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u8
    have u11 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u10 a
    rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c1521 : v9 ∨ v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v6 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v4 := by
      rcases c27 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v8 := by
      rcases c1520 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n15
    have u7 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n10
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n1
    have u8 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v10 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
    have u10 : v14 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    rcases c54 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1522 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v8 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n1
    have u2 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v10 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
    have u4 : v14 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    rcases c54 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c1523 : v9 ∨ v1 ∨ ¬v2 ∨ ¬v5 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c1521 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
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
      · exact absurd a n17
      · exact absurd a n18
    have u5 : v4 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v7 := by
      rcases c28 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
    have u8 : v8 := by
      rcases c1522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u6
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
      · exact absurd a u2
      · exact absurd a u3
    have u9 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd n2 a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a n18
  have c1524 : v33 ∨ v5 ∨ v12 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n3 a
      · exact a
    rcases c798 with a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n7
  have c1525 : ¬v2 ∨ v1 ∨ v9 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v28 := by
      rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v5 := by
      rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v33 := by
      rcases c1524 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v40 := by
      rcases c519 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u10 a
      · exact absurd a u3
      · exact a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u16 : v6 := by
      rcases c1259 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a n16
    have u17 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v3 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd u16 a
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u20 : v7 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u16 a
      · exact a
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u21 : v4 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n12
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a n13
    rcases c29 with a|a|a|a
    · exact absurd u21 a
    · exact absurd n0 a
    · exact absurd u20 a
    · exact absurd u16 a
  have c1526 : v16 ∨ v1 ∨ v8 ∨ v10 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd n5 a
      · exact a
    rcases c255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1527 : v8 ∨ v1 ∨ v10 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n4 a
      · exact a
    rcases c1526 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
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
  have c1528 : ¬v36 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    rcases c211 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n6
  have c1529 : v1 ∨ ¬v9 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v36 := by
      rcases c1528 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n10
    have u8 : v28 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u5
    have u9 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
    have u10 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1527 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd u9 a
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n10
  have c1530 : v47 ∨ v1 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c1528 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n13
    have u6 : ¬v9 := by
      rcases c1529 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v26 := by
      rcases c1525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
    have u13 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
    have u14 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u9
    have u17 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u11
    have u18 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
    have u19 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
    have u20 : ¬v5 := by
      rcases c1523 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u21 : v4 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n0
    have u22 : v3 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n11
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n0
    have u23 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u22 a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd u22 a
      · exact absurd n2 a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v20 := by
      rcases c1111 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u11
    have u26 : v15 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd u13 a
      · exact a
    have u27 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v33 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u9
    have u29 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a u30
    · exact absurd a u11
    · exact absurd a u29
    · exact absurd a u17
    · exact absurd a n13
  have c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c59 with a|a
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
    have u5 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n1
    have u6 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    rcases c780 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n3
  have c1532 : v22 ∨ v1 ∨ ¬v2 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1528 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n11
    have u5 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u2
    have u6 : v13 := by
      rcases c1530 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v28 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u2
    have u11 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
    have u12 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u11 a
      · exact a
    rcases c1527 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd u11 a
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n11
  have c1533 : v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n3 a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n7
  have c1534 : v39 ∨ ¬v1 ∨ ¬v2 ∨ v5 ∨ v10 ∨ v12 ∨ ¬v13 ∨ v15 ∨ v22 ∨ v23 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v37 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n6 a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd n14 a
      · exact a
    have u10 : ¬v16 := by
      rcases c652 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a n9
      · exact absurd a u1
    have u12 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u4
    have u13 : ¬v19 := by
      rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u14 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v18 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n10 a
      · exact a
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u11
    have u16 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v6 := by
      rcases c382 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd n6 a
      · exact absurd a u16
      · exact absurd a n5
    have u18 : ¬v3 := by
      rcases c3 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
      · exact absurd n2 a
    have u19 : v38 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd n14 a
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n15
    have u20 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v33 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a u21
      · exact absurd a n16
    rcases c839 with a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u20
  have c1535 : v12 ∨ ¬v1 ∨ ¬v2 ∨ v9 ∨ v10 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd n13 a
      · exact a
    have u5 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v39 := by
      rcases c1502 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u9 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n14
    have u10 : v5 := by
      rcases c1534 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v6 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1536 : v13 ∨ ¬v2 ∨ v12 ∨ v22 ∨ v23 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n5 a
    rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1537 : v6 ∨ v5 ∨ v12 ∨ v13 ∨ ¬v28 ∨ v31 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v33 := by
      rcases c1524 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v20 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c175 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u11
  have c1538 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v21 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    rcases c271 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c1539 : ¬v33 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c175 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u4
  have c1540 : v13 ∨ ¬v1 ∨ ¬v2 ∨ v12 ∨ v14 ∨ v22 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
    have u7 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
    have u9 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : v41 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a u10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n15
    have u17 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u16 a
      · exact absurd n2 a
    have u18 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u16 a
      · exact absurd n2 a
    rcases c406 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a n11
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n12
  have c1541 : v12 ∨ ¬v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v1 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v13 := by
      rcases c1535 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v5 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v25 := by
      rcases c1536 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n0
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
    have u9 : ¬v28 := by
      rcases c1537 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v26 := by
      rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v14 := by
      rcases c1540 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v39 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd a n10
    rcases c1502 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n11
  have c1542 : ¬v2 ∨ v9 ∨ v12 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v1 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v10 := by
      rcases c1541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
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
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v5 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v25 := by
      rcases c1536 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n0 a
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
    have u10 : ¬v28 := by
      rcases c1537 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v26 := by
      rcases c1518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u10
    have u13 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
    have u16 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : v41 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u17
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u21
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u23 : v4 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a n9
    have u24 : v7 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n12
    rcases c7 with a|a|a|a
    · exact absurd u1 a
    · exact absurd u23 a
    · exact absurd u24 a
    · exact absurd n0 a
  have c1543 : v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n9
  have c1544 : v6 ∨ v7 ∨ v13 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v34 := by
      rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact a
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1545 : v26 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v23 ∨ v25 ∨ v28 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n13 a
    have u2 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n13 a
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd n13 a
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd n13 a
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v45 := by
      rcases c215 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd n13 a
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n17
    have u8 : v35 := by
      rcases c1126 with a|a|a|a|a|a|a
      · exact absurd n13 a
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n16
    have u11 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n12
    have u14 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n10
    have u15 : v18 := by
      rcases c287 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n15
      · exact absurd a n16
    rcases c635 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd u15 a
    · exact absurd a u11
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
  have c1546 : v29 ∨ ¬v2 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v1 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v45 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v12 := by
      rcases c1542 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v7 := by
      rcases c7 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v6 := by
      rcases c6 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v36 := by
      rcases c1528 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n15
    have u15 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n8
    have u16 : ¬v26 := by
      rcases c1544 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u17 : ¬v42 := by
      rcases c1545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u18 : v35 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a n8
      · exact a
      · exact absurd a u17
      · exact absurd a n15
    have u19 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v41 := by
      rcases c1000 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u17
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c1290 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a n8
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u17
  have c1547 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    rcases c416 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
  have c1548 : v32 ∨ v4 ∨ v8 ∨ v10 ∨ v11 ∨ v16 ∨ v22 ∨ v25 ∨ v26 ∨ v31 ∨ v33 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n12
    have u3 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u2 a
    rcases c635 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u2 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
  have c1549 : v42 ∨ v4 ∨ v8 ∨ v10 ∨ v11 ∨ v16 ∨ v22 ∨ v25 ∨ v26 ∨ v31 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v33 := by
      rcases c1548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v27 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u5
    rcases c1117 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd u2 a
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1550 : v4 ∨ ¬v2 ∨ ¬v12 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v1 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v40 := by
      rcases c1549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n13
      · exact a
      · exact absurd a u6
      · exact absurd a u10
    have u14 : v3 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n13
    have u15 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u14 a
      · exact a
      · exact absurd n1 a
    rcases c876 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n12
    · exact absurd a n16
  have c1551 : ¬v40 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd n3 a
      · exact a
    rcases c406 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n4
  have c1552 : v49 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ v5 ∨ v11 ∨ v13 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n0
    have u4 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n13
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n0
    have u5 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n0
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v7 := by
      rcases c1544 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n12 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n0
    have u8 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
      · exact absurd n2 a
    have u9 : ¬v40 := by
      rcases c1551 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n17
    have u10 : v38 := by
      rcases c501 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n16
      · exact absurd a n3
      · exact absurd a n11
      · exact a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n18
    have u11 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a u11
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n0
    have u15 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n17
    have u16 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n17
      · exact a
      · exact absurd a u5
      · exact absurd a u12
    have u17 : ¬v29 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n16
      · exact absurd a u11
    have u18 : v12 := by
      rcases c1542 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u15
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n0
    have u19 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u16 a
      · exact a
    rcases c347 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd u18 a
    · exact absurd a u19
    · exact absurd a n5
  have c1553 : v23 ∨ ¬v2 ∨ v5 ∨ v9 ∨ v22 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v12 := by
      rcases c1542 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v1 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
    have u10 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n0
    have u11 : ¬v4 := by
      rcases c1546 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v26 := by
      rcases c1552 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v42 := by
      rcases c1550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u13 a
      · exact a
    rcases c824 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n11
  have c1554 : v49 ∨ ¬v2 ∨ v5 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v1 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u2 : v12 := by
      rcases c1542 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
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
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u4 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u9 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
    have u10 : v25 := by
      rcases c1553 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
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
      · exact absurd a n0
    have u11 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u14 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u15 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v18 := by
      rcases c684 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u14
    have u17 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v4 := by
      rcases c347 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u17
      · exact absurd a u7
    have u19 : ¬v7 := by
      rcases c7 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u18 a
      · exact a
      · exact absurd n1 a
    have u20 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n6
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u21 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v34 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
      · exact a
      · exact absurd a u21
      · exact absurd a n13
    rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd u22 a
    · exact absurd a n10
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n0
  have c1555 : v46 ∨ ¬v2 ∨ v5 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v1 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v28 := by
      rcases c1554 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v12 := by
      rcases c1542 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
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
    have u9 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v20 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v18 := by
      rcases c635 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u18
    have u20 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n10
    have u22 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u21
    have u23 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd u22 a
    rcases c287 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd u22 a
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n11
  have c1556 : v49 ∨ v4 ∨ v8 ∨ v10 ∨ v11 ∨ v16 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u2 : v42 := by
      rcases c1549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u3 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v12 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n13
    rcases c824 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n13
  have c1557 : v4 ∨ v6 ∨ v7 ∨ ¬v12 ∨ v16 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
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
    have u4 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v25 := by
      rcases c1556 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
    have u10 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u8
    have u12 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n14
      · exact absurd a n15
    have u15 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n14
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
    rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a u14
    · exact absurd u15 a
    · exact absurd a u13
    · exact absurd a n11
    · exact absurd a u12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1558 : v23 ∨ ¬v2 ∨ v9 ∨ v22 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v1 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v5 := by
      rcases c1555 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v6 := by
      rcases c8 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v7 := by
      rcases c9 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v40 := by
      rcases c1551 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n8
    have u9 : v12 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
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
    have u13 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n0
    have u15 : v26 := by
      rcases c1557 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u18
    have u20 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v34 := by
      rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u22
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n6
    · exact absurd a u23
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1559 : v37 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v1 := by
      rcases c1532 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v9 := by
      rcases c1558 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v5 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v39 := by
      rcases c1502 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n7
    have u15 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
    have u19 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v40 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u19
      · exact a
      · exact absurd a n8
    rcases c1090 with a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u19
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1560 : v4 ∨ v11 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v30 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : v38 := by
      rcases c554 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
    have u6 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u6 a
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u7
  have c1561 : v37 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v30 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v31 := by
      rcases c1559 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v26 := by
      rcases c1560 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n12
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v39 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a n12
    have u11 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u7
    have u13 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a u4
    have u15 : v24 := by
      rcases c554 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u3
    have u16 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v1 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u20 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n15
    have u23 : v8 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u22
    have u24 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u5
      · exact a
      · exact absurd a n15
    rcases c1224 with a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a n6
    · exact absurd a u24
    · exact absurd a n7
    · exact absurd a u21
    · exact absurd a u20
  have c1562 : v4 ∨ ¬v2 ∨ v10 ∨ v11 ∨ v13 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v30 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v31 := by
      rcases c1559 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a u7
      · exact absurd a n10
    have u13 : v12 := by
      rcases c1561 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
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
    have u14 : v1 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u8
    have u15 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v28 := by
      rcases c1259 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n14
    have u18 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v26 := by
      rcases c1560 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u20 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u19
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n13
    have u21 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : v39 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
    have u23 : v38 := by
      rcases c554 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u3
    rcases c137 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c1563 : v40 ∨ ¬v2 ∨ v10 ∨ ¬v11 ∨ v13 ∨ v22 ∨ v23 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u5 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n5
      · exact a
    have u11 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v5 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v28 := by
      rcases c1259 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v27 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c1265 with a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd u14 a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1564 : v4 ∨ ¬v2 ∨ v10 ∨ v13 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v31 := by
      rcases c1559 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a n8
    have u12 : ¬v11 := by
      rcases c1563 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v25 := by
      rcases c1562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u12
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
    have u14 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n11
    have u18 : ¬v1 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u7
    have u20 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u7
    have u21 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u7
    have u22 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u16
    have u24 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a n12
    have u25 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u24 a
      · exact absurd u17 a
    have u26 : ¬v19 := by
      rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u25
    · exact absurd a u9
    · exact absurd a u26
    · exact absurd a u15
    · exact absurd a n10
    · exact absurd a u3
  exact ⟨c1516, c1519, c1527, c1531, c1533, c1538, c1539, c1543, c1547, c1551, c1559, c1563, c1564⟩
