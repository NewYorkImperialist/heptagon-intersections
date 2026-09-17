import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 850-899 of the 2189-step refutation of ccase000: 103 core clauses and 71 earlier-derived ones give 14 more. -/
theorem CCase000_block017
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v3 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
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
    (c62 : ¬v15 ∨ ¬v17)
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v17)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c98 : ¬v27 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c103 : v22 ∨ v28 ∨ v23 ∨ v25 ∨ v27 ∨ v26 ∨ v24)
    (c125 : v29 ∨ v35 ∨ v30 ∨ v32 ∨ v31 ∨ v34 ∨ v33)
    (c128 : ¬v39 ∨ ¬v36)
    (c149 : ¬v45 ∨ ¬v43)
    (c154 : ¬v45 ∨ ¬v44)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c197 : v43 ∨ v29 ∨ v30 ∨ v35 ∨ v44 ∨ ¬v36 ∨ v42 ∨ v37)
    (c211 : v43 ∨ v29 ∨ v30 ∨ v44 ∨ ¬v36 ∨ v37 ∨ v42 ∨ v49)
    (c236 : v29 ∨ ¬v16 ∨ v10 ∨ v9 ∨ v22 ∨ v23 ∨ v12 ∨ v26 ∨ v19 ∨ v17 ∨ v18 ∨ v15 ∨ v30 ∨ v31)
    (c237 : v43 ∨ v14 ∨ v1 ∨ v48 ∨ v8 ∨ ¬v7 ∨ v6 ∨ v49)
    (c242 : v29 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v34 ∨ v22 ∨ v27)
    (c243 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v35 ∨ v49 ∨ v42)
    (c257 : v43 ∨ ¬v28 ∨ v22 ∨ v42 ∨ v26 ∨ v19 ∨ v35 ∨ v20 ∨ v21 ∨ v29 ∨ v27 ∨ v33 ∨ v48 ∨ v49)
    (c267 : v29 ∨ ¬v23 ∨ v31 ∨ v30 ∨ v22 ∨ v24 ∨ v17 ∨ v16)
    (c309 : ¬v32 ∨ v39 ∨ v25 ∨ v33 ∨ v26 ∨ v40 ∨ v24 ∨ v31)
    (c315 : v43 ∨ v29 ∨ v44 ∨ v46 ∨ v1 ∨ v4 ∨ v30 ∨ ¬v2 ∨ v11 ∨ v31 ∨ v37 ∨ v3 ∨ v10 ∨ v9)
    (c353 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v49 ∨ v42 ∨ v33)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c368 : v1 ∨ v7 ∨ v16 ∨ v14 ∨ v9 ∨ v21 ∨ ¬v8 ∨ v15)
    (c388 : v43 ∨ ¬v21 ∨ v7 ∨ v13 ∨ v28 ∨ v22 ∨ v14 ∨ v23 ∨ v16 ∨ v9 ∨ v20 ∨ v15 ∨ v48 ∨ v49)
    (c395 : v27 ∨ v5 ∨ v4 ∨ v18 ∨ v6 ∨ v11 ∨ v14 ∨ v12 ∨ v20 ∨ ¬v13 ∨ v21 ∨ v33 ∨ v34 ∨ v35)
    (c399 : v14 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v48 ∨ v47 ∨ v7 ∨ v13)
    (c486 : v3 ∨ ¬v4 ∨ v46 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v47)
    (c488 : v15 ∨ v9 ∨ v1 ∨ ¬v8 ∨ v7 ∨ v21 ∨ v14 ∨ v2)
    (c493 : v4 ∨ v7 ∨ v3 ∨ v9 ∨ v37 ∨ v11 ∨ v8 ∨ ¬v1 ∨ v36 ∨ v2 ∨ v42 ∨ v43 ∨ v46 ∨ v49)
    (c501 : ¬v45 ∨ v37 ∨ v4 ∨ v25 ∨ v38 ∨ v23 ∨ v24 ∨ v31 ∨ v5 ∨ v3 ∨ v40 ∨ v44 ∨ v46 ∨ v47)
    (c525 : ¬v45 ∨ v2 ∨ v46 ∨ v37 ∨ v4 ∨ v38 ∨ v3 ∨ v44)
    (c526 : v43 ∨ v8 ∨ v44 ∨ v3 ∨ v1 ∨ ¬v2 ∨ v10 ∨ v9)
    (c530 : ¬v45 ∨ v42 ∨ v9 ∨ v7 ∨ v4 ∨ v3 ∨ v11 ∨ v37 ∨ v10 ∨ v38 ∨ v43 ∨ v44 ∨ v46 ∨ v49)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c633 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c661 : v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c675 : v12 ∨ v1 ∨ v6 ∨ v7 ∨ v11 ∨ v14 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c797 : v6 ∨ ¬v12 ∨ v14 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c855 : ¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c880 : v6 ∨ ¬v4 ∨ ¬v5 ∨ ¬v11 ∨ v26 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c892 : v7 ∨ v2 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c922 : v20 ∨ v18 ∨ v19 ∨ ¬v26 ∨ v27 ∨ v33 ∨ v34)
    (c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c961 : ¬v28 ∨ v2 ∨ v9 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1047 : v6 ∨ v13 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1105 : ¬v20 ∨ ¬v28 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1135 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1149 : v41 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1159 : v12 ∨ ¬v4 ∨ v7 ∨ ¬v26 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1176 : v22 ∨ ¬v4 ∨ ¬v5 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v36 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c1187 : v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1192 : v34 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v36 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1208 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1209 : v36 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v43)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1243 : v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1253 : v6 ∨ v11 ∨ v12 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1256 : v12 ∨ v6 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1259 : ¬v28 ∨ v6 ∨ v13 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1264 : v33 ∨ v5 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17)
    (c1337 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1347 : v1 ∨ v3 ∨ v7 ∨ v13 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v43 ∨ v49)
    (c1351 : v22 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1359 : v26 ∨ v5 ∨ v12 ∨ v25 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v47)
    (c1391 : v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1399 : v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1405 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1408 : v4 ∨ v11 ∨ ¬v12 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1410 : v47 ∨ ¬v1 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c1411 : v12 ∨ v4 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v24 ∨ v31 ∨ v33 ∨ v34 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48)
    (c1412 : v12 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ ¬v9 ∨ v24 ∨ v31 ∨ v33 ∨ v34 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v9 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v45 ∨ v46 ∨ v49) ∧ (¬v27 ∨ v5 ∨ v12 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v47) ∧ (v21 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ ¬v13 ∨ v18 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v35) ∧ (¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v21) ∧ (¬v10 ∨ v1 ∨ v22 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44) ∧ (v2 ∨ v7 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49) ∧ (¬v2 ∨ ¬v1 ∨ v4 ∨ v12 ∨ ¬v22 ∨ v33 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43) ∧ (¬v16 ∨ v9 ∨ v10 ∨ v12 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31) ∧ (¬v13 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43) ∧ (¬v4 ∨ v12 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43) ∧ (v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1413 : v9 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v3 := by
      rcases c3 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
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
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a n12
  have c1414 : ¬v27 ∨ v5 ∨ v12 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1359 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1415 : v21 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ ¬v13 ∨ v18 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n6 a
    rcases c395 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd n6 a
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1416 : v4 ∨ ¬v1 ∨ v10 ∨ v11 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v12 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v2 := by
      rcases c1410 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd n1 a
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    have u8 : ¬v9 := by
      rcases c1412 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v6 := by
      rcases c1413 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd u3 a
      · exact absurd a n16
      · exact absurd a n19
    have u11 : ¬v5 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : ¬v27 := by
      rcases c1414 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n17
    have u13 : v26 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n6
      · exact a
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n17
    have u14 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v13 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd u13 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u17 : v3 := by
      rcases c501 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n17
    have u18 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
    have u19 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
      · exact absurd u7 a
    have u22 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u15
    have u23 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n15
      · exact absurd a u14
      · exact absurd a n12
      · exact a
      · exact absurd a n19
    rcases c967 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd a u14
  have c1417 : ¬v10 ∨ ¬v1 ∨ v4 ∨ v5 ∨ ¬v6 ∨ v12 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v27 := by
      rcases c1414 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v7 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v2 := by
      rcases c10 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
      · exact absurd n4 a
    have u6 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd u4 a
    rcases c1313 with a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u3
  have c1418 : v4 ∨ ¬v1 ∨ v11 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v10 := by
      rcases c1416 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v12 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n9
    have u4 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v41 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n11
      · exact absurd a n18
      · exact absurd a n14
    have u11 : v39 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n13
      · exact a
      · exact absurd a u4
    have u12 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : v6 := by
      rcases c1411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u14 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v5 := by
      rcases c1417 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd u13 a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u16 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v2 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
      · exact absurd u13 a
    rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a n12
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a n14
    · exact absurd a u12
    · exact absurd a n15
    · exact absurd a n18
  have c1419 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n2
    rcases c45 with a|a
    · exact absurd n0 a
    · exact absurd u1 a
  have c1420 : ¬v10 ∨ v1 ∨ v22 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v28 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
    have u3 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n1
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v21 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u5
    rcases c66 with a|a
    · exact absurd u4 a
    · exact absurd u6 a
  have c1421 : v29 ∨ v4 ∨ v11 ∨ v22 ∨ v24 ∨ v25 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v1 := by
      rcases c1418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
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
    have u5 : ¬v12 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
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
    have u6 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u8 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : v39 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n8
    have u10 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
    have u11 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n16
    have u12 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u16 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u12
      · exact absurd a n17
      · exact absurd a n18
    have u17 : ¬v10 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u14
      · exact absurd a n14
      · exact absurd a u12
      · exact absurd a n17
      · exact absurd a n18
    have u18 : v21 := by
      rcases c257 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n6 a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n17
      · exact absurd a n18
    have u19 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u19
      · exact a
      · exact absurd a n3
      · exact absurd a u4
    have u21 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v2 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u13
    have u23 : v3 := by
      rcases c315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n15
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd u22 a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n12
      · exact a
      · exact absurd a u17
      · exact absurd a u21
    rcases c24 with a|a|a|a
    · exact absurd u22 a
    · exact absurd u11 a
    · exact absurd u23 a
    · exact absurd u15 a
  have c1422 : v12 ∨ v2 ∨ ¬v3 ∨ ¬v8 ∨ v11 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v41 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n20
      · exact absurd a n15
      · exact absurd a n22
      · exact absurd a n18
    have u6 : v6 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a u5
      · exact absurd a n18
      · exact absurd a n21
    have u7 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n19
    have u8 : v23 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n19
    have u9 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n18
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a u9
      · exact absurd a n22
    have u12 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n20
    rcases c34 with a|a|a|a
    · exact absurd n2 a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd u6 a
  have c1423 : v22 ∨ v2 ∨ v4 ∨ v11 ∨ v24 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v1 := by
      rcases c1418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v28 := by
      rcases c1421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
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
      · exact absurd a n19
    have u3 : ¬v12 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n10
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v39 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n14
      · exact a
      · exact absurd a u5
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v3 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a n14
      · exact a
      · exact absurd a u9
    have u11 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v10 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a n15
      · exact absurd a u8
      · exact absurd a n18
      · exact absurd a n19
    have u13 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v8 := by
      rcases c1422 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u10 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a u9
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u15 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n7
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u1
    have u16 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v23 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u16
    have u21 : ¬v26 := by
      rcases c922 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u18
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    rcases c103 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u20
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u21
    · exact absurd a n4
  have c1424 : v28 ∨ ¬v15 ∨ v18 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
    have u6 : ¬v26 := by
      rcases c922 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    rcases c103 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n4
  have c1425 : v49 ∨ v4 ∨ v11 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v1 := by
      rcases c1418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
    have u2 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n10
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
    have u5 : v39 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n14
      · exact a
      · exact absurd a u3
    have u6 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v10 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a u7
      · exact absurd a n18
      · exact absurd a n0
    have u11 : v2 := by
      rcases c1423 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
    have u12 : ¬v28 := by
      rcases c1421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
      · exact absurd a n0
    have u13 : ¬v12 := by
      rcases c1408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
    have u14 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v15 := by
      rcases c1424 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a u1
    have u17 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u20 : v3 := by
      rcases c315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n16
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n13
      · exact a
      · exact absurd a u10
      · exact absurd a u18
    rcases c1337 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd u20 a
    · exact absurd u19 a
    · exact absurd a u17
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n0
  have c1426 : v38 ∨ v4 ∨ v11 ∨ v22 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n9
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : v39 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a u2
    have u5 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v1 := by
      rcases c1418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v27 := by
      rcases c1425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n11
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a u8
    have u18 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : v5 := by
      rcases c1264 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u23 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u10
    have u24 : v7 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd u17 a
      · exact absurd a u15
    have u25 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n1
      · exact a
      · exact absurd a u19
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c30 with a|a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd u24 a
    · exact absurd u25 a
  have c1427 : v35 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v45 := by
      rcases c1391 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n15
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact a
      · exact absurd u10 a
    have u13 : v9 := by
      rcases c315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a n4
      · exact a
    have u14 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a n17
  have c1428 : v49 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v45 := by
      rcases c1391 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
    have u6 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v12 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n0
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
    have u13 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v6 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n17
    have u15 : v3 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u13
    rcases c1337 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd a u10
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n0
  have c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1037 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1430 : v7 ∨ v2 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n11
      · exact a
      · exact absurd a n4
    have u2 : v8 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u3 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n12
  have c1431 : v2 ∨ v7 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v9 := by
      rcases c1430 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n12
  have c1432 : v42 ∨ v1 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : v45 := by
      rcases c1391 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v2 := by
      rcases c1428 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u10 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a u8
    have u11 : v3 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a n14
      · exact a
      · exact absurd a u8
    have u12 : v7 := by
      rcases c1431 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n18
    have u13 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
    have u14 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n16
    have u15 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c34 with a|a|a|a
    · exact absurd u11 a
    · exact absurd u14 a
    · exact absurd u12 a
    · exact absurd u15 a
  have c1433 : v40 ∨ ¬v10 ∨ v11 ∨ ¬v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n8
    have u10 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n16
    have u11 : v5 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n14
    have u12 : v6 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : v2 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
    rcases c30 with a|a|a|a
    · exact absurd u13 a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd u12 a
  have c1434 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v12 ∨ ¬v22 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v5 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
    have u4 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c8 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c1435 : ¬v1 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v22 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v12 := by
      rcases c1434 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n14
    rcases c1413 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd u8 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd u5 a
    · exact absurd a n12
    · exact absurd a n15
  have c1436 : v33 ∨ v4 ∨ v11 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v22 := by
      rcases c1426 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v10 := by
      rcases c1433 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v1 := by
      rcases c1432 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
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
    have u11 : ¬v2 := by
      rcases c1435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u4
    have u13 : v3 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n11
      · exact a
      · exact absurd a u4
    have u14 : v7 := by
      rcases c1431 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n16
    have u15 : v5 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n14
    rcases c15 with a|a|a|a
    · exact absurd u10 a
    · exact absurd u15 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c1437 : v29 ∨ v2 ∨ v4 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v11 := by
      rcases c1436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
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
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n7
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v39 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact a
      · exact absurd a u3
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v28 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u11
    have u13 : v23 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u11
    have u14 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a u10
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1438 : v47 ∨ v4 ∨ v24 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v2 := by
      rcases c1437 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v11 := by
      rcases c1436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v6 := by
      rcases c1411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
    have u15 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    have u16 : v1 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u15
      · exact a
      · exact absurd u6 a
      · exact absurd a u13
      · exact absurd a u10
    have u17 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u16 a
      · exact absurd u6 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u14 a
      · exact absurd u6 a
    rcases c399 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd u14 a
    · exact absurd a u18
    · exact absurd a n14
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u8
  have c1439 : ¬v1 ∨ ¬v2 ∨ v4 ∨ v12 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v5 := by
      rcases c1359 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n11
    have u3 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c8 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u2 a
    · exact absurd u3 a
    · exact absurd n1 a
  have c1440 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v10 ∨ v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n9
    have u4 : v12 := by
      rcases c1439 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n17
    rcases c1413 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd u7 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd u1 a
    · exact absurd a n15
    · exact absurd a n18
  have c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43 := by
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
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n1
    rcases c1138 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
  have c1442 : v4 ∨ ¬v2 ∨ v10 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v24 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
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
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n7
    have u11 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u9
      · exact a
      · exact absurd a n12
      · exact absurd a n10
    have u12 : ¬v11 := by
      rcases c1351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v1 := by
      rcases c1440 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
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
    have u14 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u8
    have u15 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n14
    have u16 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u17 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
    rcases c315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n13
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd n1 a
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u19
  have c1443 : v4 ∨ ¬v2 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v24 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n6
    have u11 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u9
      · exact a
      · exact absurd a n11
      · exact absurd a n9
    have u12 : v10 := by
      rcases c1442 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
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
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v7 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
    have u16 : v1 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
    have u17 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u10
    have u19 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n13
    rcases c20 with a|a|a|a
    · exact absurd u16 a
    · exact absurd u19 a
    · exact absurd u15 a
    · exact absurd u18 a
  have c1444 : ¬v12 ∨ ¬v3 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
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
    have u5 : v6 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u6 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n16
    have u7 : ¬v2 := by
      rcases c26 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd u5 a
    have u8 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a n14
    · exact absurd a u8
    · exact absurd a n3
  have c1445 : v15 ∨ v9 ∨ v10 ∨ v12 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n4 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
  have c1446 : ¬v16 ∨ v9 ∨ v10 ∨ v12 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1445 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1447 : v31 ∨ v4 ∨ v25 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n5
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd a n10
      · exact absurd a n8
    have u7 : ¬v2 := by
      rcases c1443 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v3 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n9
      · exact a
      · exact absurd a u5
    have u9 : v24 := by
      rcases c1438 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
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
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v11 := by
      rcases c1351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v12 := by
      rcases c1444 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v5 := by
      rcases c1359 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n12
    have u18 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v1 := by
      rcases c14 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u8 a
      · exact absurd u18 a
    have u20 : ¬v7 := by
      rcases c34 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u17 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
    have u22 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n14
    have u23 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u13
    have u24 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a u14
    have u25 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
    rcases c1446 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
  have c1448 : v26 ∨ v1 ∨ v2 ∨ ¬v4 ∨ ¬v5 ∨ v7 ∨ v12 ∨ v22 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n21
    have u2 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n21
    have u3 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n21
    have u4 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n19
      · exact a
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n21
    have u5 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u6 : v8 := by
      rcases c1209 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n18
    have u7 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v27 := by
      rcases c1176 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
    have u10 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n0
    have u11 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n17
      · exact absurd a n9
      · exact absurd a n14
      · exact a
      · exact absurd a n21
    have u12 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v16 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u11 a
    rcases c388 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n18
    · exact absurd u11 a
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n20
    · exact absurd a n21
  have c1449 : v42 ∨ v1 ∨ ¬v4 ∨ ¬v5 ∨ ¬v6 ∨ v12 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v2 := by
      rcases c27 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u3 : v22 := by
      rcases c1448 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n19
    have u5 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n19
    have u6 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u3 a
      · exact a
    rcases c1431 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n0
    · exact absurd a n17
    · exact absurd a n19
  have c1450 : ¬v22 ∨ v1 ∨ v6 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n7
    have u6 : v13 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v7 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n14
    rcases c675 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1451 : v28 ∨ v1 ∨ ¬v4 ∨ v12 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := by
      rcases c1359 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n15
    have u7 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n17
    have u8 : ¬v6 := by
      rcases c1449 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v11 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n2 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u10 : ¬v22 := by
      rcases c1450 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u11 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u4
    have u12 : ¬v7 := by
      rcases c1192 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
    have u13 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n17
    have u14 : v2 := by
      rcases c1448 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n17
    have u15 : v27 := by
      rcases c1149 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u14 a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u16 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u14 a
      · exact a
      · exact absurd u6 a
    have u17 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v8 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u13
    have u19 : v13 := by
      rcases c1347 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n17
    rcases c44 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c1452 : ¬v13 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n1
    rcases c1138 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
  have c1454 : v37 ∨ v1 ∨ ¬v4 ∨ v12 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n16
    have u7 : v26 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v10 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v13 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u4
    have u14 : v6 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v7 := by
      rcases c1159 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact a
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : ¬v2 := by
      rcases c29 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
    have u17 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
    have u18 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u15 a
      · exact absurd u14 a
    have u19 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n14
    have u20 : v11 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n2 a
      · exact absurd a n13
      · exact absurd a u17
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a n14
    have u21 : v9 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
    rcases c47 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c1455 : ¬v26 ∨ ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v7 := by
      rcases c19 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v2 := by
      rcases c6 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u7 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u8 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    rcases c631 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n9
  have c1456 : v28 ∨ ¬v1 ∨ ¬v4 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v6 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n14
    have u9 : v13 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
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
    have u13 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n0
    have u15 : v2 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u7
    have u16 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
    have u17 : ¬v7 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u15 a
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd a n14
  have c1457 : v33 ∨ ¬v4 ∨ v12 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v1 := by
      rcases c1454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v26 := by
      rcases c1456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v5 := by
      rcases c1359 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n13
    have u9 : ¬v7 := by
      rcases c18 with a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v2 := by
      rcases c5 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u11 : ¬v6 := by
      rcases c17 with a|a|a|a
      · exact absurd u6 a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
    have u13 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n15
    have u14 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n14
    have u15 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u14 a
      · exact a
    rcases c892 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a n15
  have c1458 : ¬v1 ∨ ¬v4 ∨ ¬v5 ∨ ¬v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v7 := by
      rcases c18 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c17 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c5 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    rcases c1221 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n10
  have c1459 : ¬v4 ∨ v12 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u5
      · exact a
      · exact absurd a n10
      · exact absurd a n9
    have u7 : v28 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
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
    have u8 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v20 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
    have u12 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n12
    have u13 : v21 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd a n8
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u9
    have u14 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v1 := by
      rcases c1458 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u12 a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
    have u16 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u14
      · exact a
      · exact absurd a u8
      · exact absurd a u15
    have u17 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u3
    have u20 : v2 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u5
    rcases c27 with a|a|a|a
    · exact absurd u20 a
    · exact absurd n0 a
    · exact absurd u19 a
    · exact absurd u12 a
  have c1460 : ¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
  have c1461 : v1 ∨ ¬v4 ∨ ¬v12 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u6 : ¬v28 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n9
    have u7 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
    have u8 : v22 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n9
    have u9 : v6 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n11
    have u10 : ¬v2 := by
      rcases c29 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
      · exact absurd u9 a
    have u11 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u8 a
      · exact a
    rcases c1429 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n10
  have c1462 : v37 ∨ ¬v1 ∨ ¬v4 ∨ ¬v12 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
    have u2 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n7
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v6 := by
      rcases c19 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v2 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v26 := by
      rcases c1456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n13
    have u11 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u10 a
      · exact a
    rcases c1429 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u8
  have c1463 : v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n4
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v4 := by
      rcases c1447 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v12 := by
      rcases c1459 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v1 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n13
    have u11 : v28 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u10 a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : v6 := by
      rcases c1259 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v2 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u5
    rcases c6 with a|a|a|a
    · exact absurd u10 a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u6 a
  exact ⟨c1413, c1414, c1415, c1419, c1420, c1429, c1431, c1434, c1441, c1446, c1452, c1459, c1460, c1463⟩
