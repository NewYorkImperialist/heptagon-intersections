import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 900-949 of the 2189-step refutation of ccase000: 125 core clauses and 72 earlier-derived ones give 18 more. -/
theorem CCase000_block018
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
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
    (c56 : ¬v11 ∨ ¬v13)
    (c58 : ¬v13 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c78 : ¬v21 ∨ ¬v18)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c106 : ¬v32 ∨ ¬v29)
    (c111 : ¬v32 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c125 : v29 ∨ v35 ∨ v30 ∨ v32 ∨ v31 ∨ v34 ∨ v33)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c149 : ¬v45 ∨ ¬v43)
    (c154 : ¬v45 ∨ ¬v44)
    (c160 : ¬v47 ∨ ¬v45)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c192 : ¬v32 ∨ v39 ∨ v5 ∨ v3 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v33 ∨ v37 ∨ v30 ∨ v40 ∨ v46)
    (c197 : v43 ∨ v29 ∨ v30 ∨ v35 ∨ v44 ∨ ¬v36 ∨ v42 ∨ v37)
    (c213 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v40 ∨ v48 ∨ v49)
    (c243 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v35 ∨ v49 ∨ v42)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c308 : v15 ∨ v7 ∨ v1 ∨ v12 ∨ v16 ∨ v13 ∨ v22 ∨ v5 ∨ v9 ∨ v14 ∨ ¬v8 ∨ v19 ∨ v23 ∨ v28)
    (c309 : ¬v32 ∨ v39 ∨ v25 ∨ v33 ∨ v26 ∨ v40 ∨ v24 ∨ v31)
    (c315 : v43 ∨ v29 ∨ v44 ∨ v46 ∨ v1 ∨ v4 ∨ v30 ∨ ¬v2 ∨ v11 ∨ v31 ∨ v37 ∨ v3 ∨ v10 ∨ v9)
    (c343 : v43 ∨ v9 ∨ v44 ∨ v1 ∨ v3 ∨ v45 ∨ ¬v2 ∨ v10)
    (c350 : ¬v9 ∨ v8 ∨ v17 ∨ v16 ∨ v2 ∨ v15 ∨ v1 ∨ v10)
    (c352 : ¬v32 ∨ v39 ∨ v25 ∨ v18 ∨ v31 ∨ v24 ∨ v11 ∨ v27 ∨ v10 ∨ v33 ∨ v34 ∨ v12 ∨ v40 ∨ v41)
    (c353 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v49 ∨ v42 ∨ v33)
    (c368 : v1 ∨ v7 ∨ v16 ∨ v14 ∨ v9 ∨ v21 ∨ ¬v8 ∨ v15)
    (c386 : v2 ∨ v10 ∨ v17 ∨ v3 ∨ v15 ∨ v8 ∨ ¬v9 ∨ v16)
    (c388 : v43 ∨ ¬v21 ∨ v7 ∨ v13 ∨ v28 ∨ v22 ∨ v14 ∨ v23 ∨ v16 ∨ v9 ∨ v20 ∨ v15 ∨ v48 ∨ v49)
    (c406 : ¬v45 ∨ v4 ∨ v38 ∨ v3 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c419 : v1 ∨ v10 ∨ v24 ∨ v23 ∨ v44 ∨ v3 ∨ v7 ∨ v14 ∨ ¬v2 ∨ v22 ∨ v9 ∨ v43 ∨ v16 ∨ v49)
    (c444 : ¬v32 ∨ v39 ∨ v25 ∨ v40 ∨ v38 ∨ v33 ∨ v26 ∨ v31)
    (c464 : ¬v27 ∨ v21 ∨ v19 ∨ v20 ∨ v34 ∨ v26 ∨ v28 ∨ v35)
    (c473 : v43 ∨ v29 ∨ v44 ∨ v49 ∨ v35 ∨ v42 ∨ ¬v36 ∨ v37)
    (c478 : ¬v39 ∨ v32 ∨ v37 ∨ v46 ∨ v47 ∨ v44 ∨ v30 ∨ v31 ∨ v38 ∨ v10 ∨ v11 ∨ v4 ∨ v40 ∨ v12)
    (c486 : v3 ∨ ¬v4 ∨ v46 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v47)
    (c504 : v19 ∨ v32 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v17 ∨ ¬v10 ∨ v11 ∨ v9 ∨ v24 ∨ v30 ∨ v31 ∨ v16)
    (c519 : v41 ∨ ¬v33 ∨ v32 ∨ v40 ∨ v46 ∨ v26 ∨ v37 ∨ v30 ∨ v23 ∨ v34 ∨ v25 ∨ v31 ∨ v47 ∨ v48)
    (c525 : ¬v45 ∨ v2 ∨ v46 ∨ v37 ∨ v4 ∨ v38 ∨ v3 ∨ v44)
    (c526 : v43 ∨ v8 ∨ v44 ∨ v3 ∨ v1 ∨ ¬v2 ∨ v10 ∨ v9)
    (c541 : v22 ∨ v21 ∨ v23 ∨ v14 ∨ v28 ∨ v16 ∨ ¬v15 ∨ v8)
    (c545 : v43 ∨ ¬v37 ∨ v44 ∨ v36 ∨ v38 ∨ v30 ∨ v29 ∨ v31)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c652 : v15 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c738 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c822 : ¬v19 ∨ v12 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c823 : v12 ∨ v5 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c855 : ¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c867 : v26 ∨ v5 ∨ v12 ∨ v13 ∨ v25 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c892 : v7 ∨ v2 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c904 : v26 ∨ ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ v11 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c922 : v20 ∨ v18 ∨ v19 ∨ ¬v26 ∨ v27 ∨ v33 ∨ v34)
    (c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1050 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1118 : v28 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v27 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1135 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1170 : ¬v21 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1208 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1243 : v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1256 : v12 ∨ v6 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1264 : v33 ∨ v5 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17)
    (c1337 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1347 : v1 ∨ v3 ∨ v7 ∨ v13 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v43 ∨ v49)
    (c1351 : v22 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1372 : ¬v19 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1390 : v23 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1391 : v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1399 : v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1405 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1413 : v9 ∨ ¬v1 ∨ ¬v2 ∨ v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v45 ∨ v46 ∨ v49)
    (c1420 : ¬v10 ∨ v1 ∨ v22 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1446 : ¬v16 ∨ v9 ∨ v10 ∨ v12 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31)
    (c1452 : ¬v13 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1459 : ¬v4 ∨ v12 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1463 : v25 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v47 ∨ ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (v7 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49) ∧ (¬v9 ∨ v1 ∨ v2 ∨ v10 ∨ v15 ∨ v16 ∨ v17) ∧ (¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44) ∧ (v9 ∨ v2 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44) ∧ (v21 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28) ∧ (v26 ∨ v24 ∨ ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44) ∧ (¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v5 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43) ∧ (¬v39 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v46 ∨ v47) ∧ (v10 ∨ v4 ∨ v11 ∨ v12 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v46 ∨ v47) ∧ (¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v16 ∨ ¬v1 ∨ ¬v2 ∨ v9 ∨ ¬v10 ∨ v12 ∨ v13 ∨ v22 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v5 ∨ ¬v1 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v12 ∨ ¬v2 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1464 : v47 ∨ ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c19 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v5 := by
      rcases c17 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v2 := by
      rcases c6 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : v13 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    rcases c1221 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n6
  have c1465 : ¬v1 ∨ ¬v4 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n8
    have u3 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n15
    have u8 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v2 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u5
    have u13 : v7 := by
      rcases c1118 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u12 a
      · exact absurd n1 a
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c7 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u13 a
    · exact absurd u12 a
  have c1466 : v6 ∨ v4 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n5
    have u9 : ¬v5 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n6
    rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1467 : ¬v13 ∨ ¬v1 ∨ v4 ∨ ¬v6 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
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
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd n10 a
      · exact a
    have u6 : v2 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
    rcases c1413 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd n10 a
    · exact absurd a n11
    · exact absurd a n12
  have c1468 : ¬v2 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c1243 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1469 : ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v4 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v45 := by
      rcases c1391 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n9
    have u5 : v6 := by
      rcases c1466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v13 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd u2 a
      · exact absurd a n15
      · exact absurd a n18
    have u8 : ¬v2 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : v3 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact a
      · exact absurd a u6
    have u10 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u6
    have u11 : ¬v5 := by
      rcases c14 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
      · exact absurd u5 a
    have u12 : ¬v7 := by
      rcases c16 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact absurd u5 a
      · exact a
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd a u10
    · exact absurd u5 a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a n18
    · exact absurd a n16
  have c1470 : v7 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    rcases c892 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
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
  have c1471 : ¬v9 ∨ v1 ∨ v2 ∨ v10 ∨ v15 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    rcases c350 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
  have c1472 : v5 ∨ v1 ∨ v2 ∨ v10 ∨ v12 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v44 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
    have u2 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n14
      · exact a
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n11
    have u3 : v9 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
    have u4 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u2 a
    rcases c1471 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u1
  have c1473 : v2 ∨ v1 ∨ ¬v6 ∨ v10 ∨ v12 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd n19 a
      · exact a
    have u2 : v7 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a u1
      · exact absurd a n22
    have u3 : v5 := by
      rcases c1472 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a u1
      · exact absurd a n21
    have u4 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd n2 a
    have u5 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd n2 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd n19 a
    · exact absurd a n0
    · exact absurd a n20
    · exact absurd a n15
    · exact absurd a u4
    · exact absurd a n16
    · exact absurd a u5
    · exact absurd a u1
  have c1474 : ¬v39 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v25 := by
      rcases c1463 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v1 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v10 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u8
    have u19 : ¬v13 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u8
    have u20 : v6 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
    have u22 : v2 := by
      rcases c1473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u20 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u23 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u24 : v7 := by
      rcases c1347 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u23
      · exact a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n10
    have u25 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u24 a
      · exact absurd u20 a
    have u26 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u2
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n4
    have u27 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : v11 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u26 a
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u19
    have u30 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u28
      · exact a
      · exact absurd a u10
      · exact absurd a u16
    rcases c42 with a|a
    · exact absurd u29 a
    · exact absurd u30 a
  have c1475 : v26 ∨ v1 ∨ v5 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v32 ∨ v39 ∨ v40 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v25 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a u2
    have u8 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n12
    have u9 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v13 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n9
    have u12 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n9
    have u13 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
    have u14 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u1
    have u15 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v11 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u11
    have u18 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a n1
    rcases c42 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c1476 : ¬v2 ∨ v1 ∨ v4 ∨ v5 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v32 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v39 := by
      rcases c1474 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a n9
    have u14 : v26 := by
      rcases c1475 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v13 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u11
    have u18 : ¬v3 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c192 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n10
  have c1477 : ¬v22 ∨ ¬v32 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n1 a
    rcases c309 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u5
  have c1478 : ¬v2 ∨ v1 ∨ v5 ∨ v24 ∨ v26 ∨ ¬v32 ∨ v39 ∨ v40 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v22 := by
      rcases c1477 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v25 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u2
    have u5 : v23 := by
      rcases c1475 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c89 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1479 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    rcases c545 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
  have c1480 : v37 ∨ v1 ∨ ¬v2 ∨ v24 ∨ v26 ∨ ¬v32 ∨ v39 ∨ v40 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v22 := by
      rcases c1477 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v25 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u2
    have u10 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n11
    have u12 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n8
    have u16 : ¬v13 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n8
    have u17 : v6 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v5 := by
      rcases c1478 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u19 a
      · exact a
      · exact absurd u17 a
    rcases c1347 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a n11
  have c1482 : v9 ∨ v2 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n10
      · exact a
      · exact absurd a n4
    have u2 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c630 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1483 : v21 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n3 a
      · exact a
    rcases c541 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a n1
  have c1484 : v43 ∨ v1 ∨ v24 ∨ v26 ∨ ¬v32 ∨ v39 ∨ v40 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c1477 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v25 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u3
    have u10 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n10
    have u11 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n7
    have u15 : ¬v10 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v13 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n0
    have u17 : ¬v2 := by
      rcases c1480 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v9 := by
      rcases c1482 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n7
    have u19 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u13
    have u22 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u13
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a n1
  have c1485 : v27 ∨ ¬v1 ∨ v2 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n18
    have u6 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u4
    have u8 : v7 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a n18
    have u9 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u4
    have u10 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
      · exact absurd n3 a
    have u11 : v9 := by
      rcases c1482 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u4
    have u12 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n12
    have u13 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u12 a
    rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c1486 : v26 ∨ v24 ∨ ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v41 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v39 := by
      rcases c1474 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v22 := by
      rcases c1477 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u9
    have u15 : v1 := by
      rcases c1484 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v25 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u3
    have u17 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n6
    have u18 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u13
    have u22 : ¬v4 := by
      rcases c1465 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v6 := by
      rcases c1466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v2 := by
      rcases c1485 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u15 a
      · exact a
      · exact absurd u23 a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u15 a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
    have u26 : v13 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd u15 a
      · exact absurd u23 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n6
    have u28 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v21 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u25
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u30
    · exact absurd a n6
  have c1487 : v12 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    rcases c352 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n10
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
  have c1488 : ¬v13 ∨ v24 ∨ v25 ∨ v27 ∨ ¬v32 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n4 a
      · exact a
    rcases c1487 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1489 : ¬v2 ∨ v24 ∨ ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v26 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v41 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v39 := by
      rcases c1474 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : v38 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u1
      · exact a
      · exact absurd a u12
      · exact absurd a u10
    have u21 : ¬v13 := by
      rcases c1488 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
    have u22 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u24 a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v1 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u24 a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u18
    have u28 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u18
    have u29 : ¬v4 := by
      rcases c1459 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : v5 := by
      rcases c1476 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u26
      · exact absurd a u29
      · exact a
      · exact absurd u24 a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u31 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u30 a
      · exact a
      · exact absurd u24 a
    have u32 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u33 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    rcases c315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a u26
    · exact absurd a u29
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a u33
    · exact absurd a u2
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u32
  have c1490 : v24 ∨ ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v26 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v41 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v39 := by
      rcases c1474 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : v38 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u1
      · exact a
      · exact absurd a u12
      · exact absurd a u10
    have u21 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v13 := by
      rcases c1488 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
    have u24 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u25 : ¬v2 := by
      rcases c1489 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u19
    have u27 : v7 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a n5
    have u28 : v9 := by
      rcases c1482 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u19
    have u29 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
    have u33 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
    have u34 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u33
      · exact absurd a u30
      · exact absurd a u29
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
    have u35 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u34
      · exact absurd a u30
      · exact absurd a u13
      · exact a
    have u36 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u31
      · exact absurd a u32
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u14
    have u37 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u35 a
      · exact a
      · exact absurd u24 a
      · exact absurd u27 a
    have u38 : v16 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u36
      · exact absurd a u37
      · exact absurd a u34
      · exact absurd a u30
      · exact absurd u28 a
      · exact a
    have u39 : ¬v19 := by
      rcases c69 with a|a
      · exact absurd u38 a
      · exact a
    have u40 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u38 a
      · exact a
    rcases c922 with a|a|a|a|a|a|a
    · exact absurd a u40
    · exact absurd a u32
    · exact absurd a u39
    · exact absurd u8 a
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a u6
  have c1491 : ¬v5 ∨ ¬v9 ∨ v11 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n17
    have u5 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n16
    have u7 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u9 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact absurd u6 a
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u9
    have u13 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    rcases c473 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a n17
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd u12 a
    · exact absurd a u13
  have c1492 : v26 ∨ v2 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v39 := by
      rcases c1474 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v41 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a u4
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n12
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v19 := by
      rcases c822 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u10 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u5
    have u11 : v5 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n17
    have u12 : v38 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n11
    have u13 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v11 := by
      rcases c1351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u16 : ¬v4 := by
      rcases c1459 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u17 : ¬v9 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u18 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a u8
      · exact a
      · exact absurd a n5
    have u19 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v10 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : v3 := by
      rcases c1313 with a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a u19
    have u23 : v7 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u24 : v1 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u14
      · exact absurd a n15
      · exact absurd a u7
      · exact absurd a n18
      · exact absurd a n19
    rcases c16 with a|a|a|a
    · exact absurd u24 a
    · exact absurd u22 a
    · exact absurd u10 a
    · exact absurd u23 a
  have c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44 := by
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
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n3
  have c1494 : v2 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v39 := by
      rcases c1474 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n10
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v38 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n9
    have u7 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u5
    have u9 : v12 := by
      rcases c1492 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u8
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u10 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
    have u14 : ¬v16 := by
      rcases c652 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a n2
  have c1495 : ¬v13 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v39 := by
      rcases c1474 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v41 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v32 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n9
    have u11 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
    have u12 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v38 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n8
    have u14 : v24 := by
      rcases c1490 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v1 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u12
    have u18 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n5
    have u19 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n14
    have u20 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u18
      · exact absurd a n16
    rcases c904 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u17 a
    · exact absurd u19 a
    · exact absurd u20 a
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1496 : ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v41 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v24 := by
      rcases c1490 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v39 := by
      rcases c1474 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v38 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u2
    have u22 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v11 := by
      rcases c1351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u25 : ¬v13 := by
      rcases c1495 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n3
    have u27 : v2 := by
      rcases c1494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u26 a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u29 : ¬v1 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u26 a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u30 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u11
    have u31 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u11
    have u32 : v5 := by
      rcases c867 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u31
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n2
    have u33 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd u27 a
      · exact absurd u32 a
      · exact a
      · exact absurd u26 a
    have u34 : ¬v4 := by
      rcases c27 with a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u26 a
      · exact absurd u32 a
    have u35 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
    rcases c315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a u29
    · exact absurd a u34
    · exact absurd a u3
    · exact absurd u27 a
    · exact absurd a u24
    · exact absurd a u2
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a u30
    · exact absurd a u35
  have c1497 : v1 ∨ ¬v2 ∨ v10 ∨ v13 ∨ ¬v17 ∨ v22 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u6
      · exact a
      · exact absurd a n12
      · exact absurd a n11
    have u8 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n0
    have u9 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v7 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd u8 a
      · exact absurd a u2
    have u13 : v6 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v4 := by
      rcases c29 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact absurd u13 a
    rcases c315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a n8
    · exact absurd n1 a
    · exact absurd a u10
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u9
  have c1498 : ¬v2 ∨ v1 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v45 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
    have u2 : v8 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n3
    have u3 : ¬v47 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v17 := by
      rcases c1497 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n4
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
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a n18
      · exact absurd a n19
    have u7 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a n18
      · exact absurd a n19
    have u8 : ¬v24 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u7
    have u9 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
    have u10 : v7 := by
      rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a u9
      · exact absurd a n19
    have u11 : v6 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd u2 a
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u12 : ¬v4 := by
      rcases c29 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact absurd u11 a
    rcases c315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd a n9
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a n10
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
  have c1499 : v5 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n14
    have u3 : v15 := by
      rcases c308 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    rcases c66 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
    rcases c1215 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1501 : v1 ∨ ¬v2 ∨ v9 ∨ v13 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n11
    have u6 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
    have u7 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
    have u8 : ¬v17 := by
      rcases c1497 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a n4
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
    have u9 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v24 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
    have u11 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
    have u12 : v3 := by
      rcases c1498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u6
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
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v6 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v7 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n10
      · exact a
      · exact absurd a n16
    have u16 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u15 a
    rcases c388 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n15
    · exact absurd a n16
  have c1502 : ¬v39 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    rcases c478 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
  have c1503 : v10 ∨ v4 ∨ v11 ∨ v12 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c1502 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c1376 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n10
  have c1504 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    rcases c243 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
  have c1505 : v16 ∨ ¬v1 ∨ ¬v2 ∨ v9 ∨ ¬v10 ∨ v12 ∨ v13 ∨ v22 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n10 a
      · exact a
    have u6 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n11
    have u7 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
      · exact absurd n2 a
    have u10 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
      · exact absurd n2 a
    have u11 : v17 := by
      rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n5
      · exact a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u12 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u11 a
      · exact a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a n15
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n16
  have c1506 : v24 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v4 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n15
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n16
  have c1507 : v37 ∨ ¬v2 ∨ v9 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v33 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact a
    have u6 : v40 := by
      rcases c519 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a u3
      · exact a
      · exact absurd a n16
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v1 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u10 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
      · exact absurd a n4
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u11 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n18
    have u12 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u14 : ¬v10 := by
      rcases c1505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u9 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u11 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u15 : v11 := by
      rcases c1506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u16 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u17 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u18 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    rcases c406 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n16
  have c1508 : ¬v2 ∨ v9 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v33 := by
      rcases c125 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact a
    have u7 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u5
      · exact a
      · exact absurd a n14
      · exact absurd a n13
    have u8 : v25 := by
      rcases c1507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n0 a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n17
    have u12 : ¬v1 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u13 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u14 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u4
    have u15 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u4
    have u16 : ¬v17 := by
      rcases c1497 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a n3
      · exact a
      · exact absurd a n4
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
    have u17 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
    have u20 : v7 := by
      rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u13
      · exact a
      · exact absurd a u18
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a n18
    have u21 : ¬v4 := by
      rcases c29 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u20 a
      · exact absurd u11 a
    have u22 : ¬v39 := by
      rcases c1502 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
    have u23 : v40 := by
      rcases c839 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a u22
      · exact a
      · exact absurd a u1
    have u24 : v38 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u21
      · exact a
      · exact absurd a u13
      · exact absurd a n13
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a n15
    rcases c138 with a|a
    · exact absurd u23 a
    · exact absurd u24 a
  have c1509 : v13 ∨ ¬v2 ∨ v12 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n12
    have u7 : v9 := by
      rcases c1508 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n17
    have u13 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n6
    have u14 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u15 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n3
      · exact a
    have u16 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u17 : ¬v6 := by
      rcases c10 with a|a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
    have u18 : v25 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
    have u19 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n16
    rcases c98 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c1510 : ¬v5 ∨ ¬v1 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v6 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1511 : ¬v2 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ ¬v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : v34 := by
      rcases c1509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v41 := by
      rcases c938 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n13
    have u6 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v18 := by
      rcases c684 with a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u6
    have u11 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n15
    have u12 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v1 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u16 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a u15
    have u17 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v7 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd u16 a
      · exact absurd a u12
    have u20 : v6 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u19 a
      · exact absurd u16 a
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
    rcases c30 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u11 a
    · exact absurd u19 a
    · exact absurd u20 a
  have c1512 : v25 ∨ v1 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd a n14
    have u6 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u3
    have u7 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u3
    have u8 : ¬v17 := by
      rcases c1497 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a n7
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
    have u9 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v24 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u8
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
    have u12 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
    have u13 : v4 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
    have u14 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u15 : ¬v7 := by
      rcases c28 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
      · exact absurd n3 a
    rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd n2 a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a n19
  have c1513 : ¬v2 ∨ v1 ∨ v12 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v25 := by
      rcases c1511 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v34 := by
      rcases c1509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v45 := by
      rcases c1399 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u7
      · exact a
      · exact absurd a n13
      · exact absurd a n12
    have u10 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u6
    have u11 : ¬v17 := by
      rcases c1497 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a n4
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
    have u12 : ¬v24 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u11
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
    have u13 : v5 := by
      rcases c1264 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : v9 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u13 a
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
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n8
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n1
    have u18 : v21 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    rcases c613 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a n4
    · exact absurd a n7
  have c1514 : v12 ∨ ¬v2 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v1 := by
      rcases c1513 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v5 := by
      rcases c1510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v25 := by
      rcases c1511 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v34 := by
      rcases c1509 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a u5
    have u8 : v27 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n14
    have u9 : v11 := by
      rcases c1263 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
    have u10 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  exact ⟨c1464, c1468, c1470, c1471, c1479, c1482, c1483, c1486, c1493, c1496, c1499, c1500, c1502, c1503, c1504, c1505, c1510, c1514⟩
