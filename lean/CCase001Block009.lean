import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 450-499 of the 2915-step refutation of ccase001: 134 core clauses and 41 earlier-derived ones give 22 more. -/
theorem CCase001_block009
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
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
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c106 : ¬v22 ∨ ¬v27)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c189 : v43 ∨ v48 ∨ v44 ∨ v47 ∨ v49 ∨ v45 ∨ v46)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c202 : v7 ∨ v3 ∨ v30 ∨ v44 ∨ v14 ∨ v9 ∨ ¬v2 ∨ v29 ∨ v1 ∨ v31 ∨ v37 ∨ v8 ∨ v45 ∨ v49)
    (c208 : v22 ∨ ¬v21 ∨ v20 ∨ v28 ∨ v13 ∨ v14 ∨ v15 ∨ v8)
    (c211 : ¬v40 ∨ v33 ∨ v41 ∨ v47 ∨ v46 ∨ v39 ∨ v32 ∨ v48)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c237 : ¬v39 ∨ v32 ∨ v45 ∨ v33 ∨ v47 ∨ v40 ∨ v46 ∨ v38)
    (c240 : v29 ∨ v10 ∨ v16 ∨ v3 ∨ v8 ∨ v11 ∨ v15 ∨ v2 ∨ ¬v9 ∨ v4 ∨ v23 ∨ v18 ∨ v30 ∨ v31)
    (c249 : v6 ∨ ¬v7 ∨ v49 ∨ v1 ∨ v48 ∨ v14 ∨ v13 ∨ v8)
    (c267 : ¬v41 ∨ v35 ∨ v40 ∨ v34 ∨ v47 ∨ v42 ∨ v48 ∨ v49)
    (c284 : v36 ∨ ¬v16 ∨ v37 ∨ v28 ∨ v23 ∨ v8 ∨ v14 ∨ v24 ∨ v17 ∨ v15 ∨ v21 ∨ v30 ∨ v9 ∨ v38)
    (c288 : v8 ∨ v9 ∨ v45 ∨ v3 ∨ v44 ∨ v1 ∨ ¬v2 ∨ v10)
    (c289 : v29 ∨ v22 ∨ v30 ∨ v24 ∨ v31 ∨ v17 ∨ ¬v23 ∨ v16)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c322 : v36 ∨ ¬v43 ∨ v37 ∨ v42 ∨ v1 ∨ v7 ∨ v44 ∨ v49)
    (c364 : v36 ∨ ¬v9 ∨ v7 ∨ v10 ∨ v8 ∨ v15 ∨ v3 ∨ v2 ∨ v14 ∨ v21 ∨ v16 ∨ v37 ∨ v38 ∨ v44)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c392 : ¬v41 ∨ v42 ∨ v40 ∨ v34 ∨ v47 ∨ v33 ∨ v48 ∨ v49)
    (c398 : v36 ∨ ¬v43 ∨ v37 ∨ v42 ∨ v1 ∨ v2 ∨ v44 ∨ v49)
    (c419 : ¬v26 ∨ v21 ∨ v25 ∨ v33 ∨ v48 ∨ v27 ∨ v46 ∨ v32 ∨ v19 ∨ v40 ∨ v35 ∨ v20 ∨ v47 ∨ v28)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c481 : ¬v24 ∨ v31 ∨ v18 ∨ v32 ∨ v30 ∨ v25 ∨ v23 ∨ v17)
    (c498 : ¬v25 ∨ v18 ∨ v19 ∨ v26 ∨ v17 ∨ v24 ∨ v32 ∨ v31)
    (c508 : ¬v39 ∨ v46 ∨ v32 ∨ v47 ∨ v40 ∨ v45 ∨ v38 ∨ v31)
    (c516 : ¬v27 ∨ v20 ∨ v35 ∨ v19 ∨ v21 ∨ v26 ∨ v34 ∨ v28)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c537 : v29 ∨ ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v27 ∨ v15 ∨ v22)
    (c563 : v11 ∨ v4 ∨ v12 ∨ v9 ∨ ¬v10 ∨ v3 ∨ v17 ∨ v5 ∨ v19 ∨ v16 ∨ v32 ∨ v30 ∨ v31 ∨ v24)
    (c578 : ¬v40 ∨ v33 ∨ v41 ∨ v34 ∨ v47 ∨ v46 ∨ v39 ∨ v48)
    (c583 : ¬v25 ∨ v32 ∨ v19 ∨ v31 ∨ v24 ∨ v39 ∨ v26 ∨ v34 ∨ v18 ∨ v27 ∨ v20 ∨ v45 ∨ v46 ∨ v47)
    (c605 : ¬v24 ∨ v31 ∨ v17 ∨ v23 ∨ v30 ∨ v16 ∨ v32 ∨ v25)
    (c608 : ¬v26 ∨ v33 ∨ v18 ∨ v46 ∨ v25 ∨ v19 ∨ v34 ∨ v27 ∨ v40 ∨ v31 ∨ v17 ∨ v24 ∨ v47 ∨ v48)
    (c637 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c652 : ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c654 : ¬v11 ∨ ¬v5 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c667 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c692 : v47 ∨ ¬v10 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v49)
    (c693 : ¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c721 : ¬v5 ∨ v10 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c723 : ¬v21 ∨ v8 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28)
    (c740 : v25 ∨ ¬v10 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c788 : v10 ∨ v2 ∨ ¬v12 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c820 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c826 : v47 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c893 : ¬v19 ∨ ¬v22 ∨ v29 ∨ v30)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c926 : ¬v4 ∨ ¬v3 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c934 : ¬v10 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c958 : v36 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c989 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1002 : v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1019 : ¬v4 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c1021 : v15 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1029 : v41 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1035 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46)
    (c1046 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31)
    (c1051 : ¬v3 ∨ ¬v2 ∨ v29 ∨ v35 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49)
    (c1052 : v28 ∨ v2 ∨ ¬v10 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49)
    (c1053 : ¬v10 ∨ ¬v2 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1056 : ¬v24 ∨ ¬v16 ∨ v19 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1063 : v44 ∨ v20 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46) ∧ (v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46) ∧ (¬v24 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32) ∧ (¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32) ∧ (¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v24 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v24 ∨ v3 ∨ v10 ∨ v11 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v2 ∨ ¬v4 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48) ∧ (¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28) ∧ (v23 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v44) ∧ (v42 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v34 ∨ v40 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v44 ∨ ¬v1 ∨ ¬v23 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v17 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v23 ∨ v29 ∨ v30 ∨ v31) ∧ (v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45) ∧ (v11 ∨ v2 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v32 ∨ v2 ∨ ¬v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v30 ∨ v33 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1064 : ¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n1 a
    rcases c508 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
  have c1065 : ¬v26 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n12
  have c1066 : v45 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
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
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n6
    have u4 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1064 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
    have u9 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u5
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v20 := by
      rcases c1063 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
    have u21 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u11
    have u22 : ¬v24 := by
      rcases c1046 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u11
    have u23 : ¬v28 := by
      rcases c1021 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u20
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u12
    have u24 : ¬v26 := by
      rcases c1065 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v11 := by
      rcases c826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u26 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v10 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u26 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u28 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u11
    have u29 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u30 : ¬v2 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u25
    · exact absurd a n5
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u30
  have c1067 : v17 ∨ v10 ∨ v11 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v4 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n18
    have u4 : ¬v2 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n13
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a u4
  have c1068 : v42 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v39 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v33 := by
      rcases c1064 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v30 := by
      rcases c1035 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v32 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u4
    have u9 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v27 := by
      rcases c1066 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v20 := by
      rcases c1028 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u12
    have u19 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u18 a
    have u25 : ¬v11 := by
      rcases c826 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u26 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : v10 := by
      rcases c1067 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u28 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u27 a
    have u29 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u27 a
    have u30 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u16
    have u31 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u29
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n0
    have u32 : ¬v3 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u33 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u31 a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a u33
    · exact absurd a u28
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u32
    · exact absurd u27 a
    · exact absurd a u25
  have c1069 : v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v34 := by
      rcases c578 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n6
    have u2 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    rcases c211 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n6
  have c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a n6
    have u5 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u4 a
      · exact a
    rcases c516 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u2
  have c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n4
      · exact a
      · exact absurd a n8
    have u2 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    rcases c498 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
  have c1072 : v49 ∨ v4 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : v18 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n13
    have u14 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n13
    have u15 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v22 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u7
    have u19 : ¬v28 := by
      rcases c537 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
    have u20 : v2 := by
      rcases c1052 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n0
    have u21 : v13 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u20 a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u22 : ¬v3 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n0
    have u23 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd n2 a
    have u24 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd n2 a
    have u25 : ¬v5 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u24
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c563 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd n2 a
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a u25
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n8
  have c1073 : ¬v10 ∨ v4 ∨ v11 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n11
    have u13 : v19 := by
      rcases c1072 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n1
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
      · exact absurd a n13
    have u14 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
    have u17 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
    have u18 : v2 := by
      rcases c1052 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
    have u19 : v13 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u18 a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u20 : ¬v3 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
    have u21 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n0 a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u21
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd n0 a
    · exact absurd a n2
  have c1074 : v42 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v4 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v5 := by
      rcases c1019 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n13
    have u12 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n13
    have u13 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd u10 a
    have u14 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u16 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u17 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n5
    have u18 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u17 a
    have u19 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u10 a
      · exact absurd u17 a
      · exact a
    rcases c202 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd u17 a
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a n9
    · exact absurd a n13
  have c1075 : v11 ∨ ¬v10 ∨ v17 ∨ v23 ∨ v24 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n7
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
    have u3 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : v16 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n0
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
    have u14 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
    have u19 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n9
    have u20 : ¬v5 := by
      rcases c1019 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n12
    have u21 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n12
    have u22 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u21
      · exact absurd a n9
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd u19 a
    have u23 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n1 a
    have u24 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n1 a
    have u25 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n1 a
    rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u13 a
    · exact absurd a u6
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a u25
    · exact absurd a u5
  have c1076 : v11 ∨ ¬v10 ∨ v17 ∨ v24 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
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
    have u3 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : v23 := by
      rcases c1075 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
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
    have u14 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
    have u20 : v16 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u13 a
      · exact a
    have u21 : ¬v19 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u22 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u3
    have u23 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v5 := by
      rcases c1019 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n11
    have u26 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n11
    have u27 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u28 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u26
      · exact absurd a n8
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd u22 a
    have u29 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n5
      · exact a
      · exact absurd a u27
      · exact absurd a n6
      · exact absurd a n11
    have u30 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd n1 a
    have u31 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u29 a
      · exact absurd u22 a
      · exact a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a n5
  have c1077 : ¬v24 ∨ v17 ∨ v23 ∨ v25 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v16 := by
      rcases c605 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n3
    have u2 : v18 := by
      rcases c481 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
    rcases c87 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1078 : ¬v24 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1077 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1078 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1080 : v46 ∨ ¬v10 ∨ v11 ∨ v17 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c1076 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1081 : ¬v10 ∨ v11 ∨ ¬v24 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v17 := by
      rcases c1080 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u7
    have u19 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v5 := by
      rcases c1019 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n10
    have u21 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd a n10
    have u22 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u2
    have u23 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd u18 a
    rcases c55 with a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd n0 a
  have c1082 : ¬v12 ∨ ¬v4 ∨ ¬v10 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n4
    have u6 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u7 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    rcases c202 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd u5 a
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n12
  have c1083 : v22 ∨ ¬v4 ∨ ¬v10 ∨ v11 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v5 := by
      rcases c1019 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd n12 a
      · exact absurd a n13
      · exact absurd a n17
    have u2 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd n12 a
      · exact absurd a n13
      · exact absurd a n17
    have u3 : ¬v12 := by
      rcases c1082 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n16
    · exact absurd a u2
    · exact absurd a n15
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n14
    · exact absurd n1 a
  have c1084 : ¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    rcases c583 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1085 : v45 ∨ ¬v10 ∨ v11 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n6
    have u3 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v24 := by
      rcases c1081 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v17 := by
      rcases c1080 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
    have u22 : ¬v22 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u7
    have u23 : ¬v4 := by
      rcases c1083 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u24 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u16
      · exact a
      · exact absurd a u3
    have u25 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n6
    rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u25
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c1086 : v24 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v25 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
    rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1087 : v37 ∨ ¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v2 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u2 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    rcases c322 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n7 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n11
  have c1088 : v24 ∨ v3 ∨ v10 ∨ v11 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n12
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v23 := by
      rcases c1086 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c1062 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1089 : v46 ∨ v11 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n0
    have u3 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v10 := by
      rcases c1085 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u16 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n0
    have u17 : ¬v3 := by
      rcases c1087 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u18 : v24 := by
      rcases c1088 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u19 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v17 := by
      rcases c1079 with a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
    have u21 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u19
      · exact absurd a u3
    rcases c91 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c1090 : ¬v11 ∨ v10 ∨ ¬v12 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u4 : v2 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
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
    have u5 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n10
    have u6 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n14
  have c1091 : ¬v2 ∨ ¬v4 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c322 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
  have c1092 : v3 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ v23 ∨ v30 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v4 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
    have u2 : ¬v2 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n16 a
      · exact absurd a n13
      · exact absurd a n15
      · exact a
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a n18
    have u4 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n6
      · exact absurd a n10
    have u5 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u7 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    rcases c364 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n17
  have c1093 : v34 ∨ v10 ∨ ¬v11 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v17 := by
      rcases c1079 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v19 := by
      rcases c652 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v12 := by
      rcases c1090 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u14 : ¬v5 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u15 : v3 := by
      rcases c1092 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n17
    have u16 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u17 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n13 a
      · exact absurd a n9
      · exact absurd a n12
      · exact a
      · exact absurd a u16
      · exact absurd a n14
      · exact absurd a n17
    have u18 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a u9
      · exact absurd a u4
    have u19 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u17 a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n2 a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n12
  have c1094 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n7
    have u2 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v28 := by
      rcases c1021 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u4
  have c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
  have c1096 : v35 ∨ ¬v1 ∨ v2 ∨ ¬v3 ∨ v10 ∨ ¬v11 ∨ v29 ∨ v30 ∨ v34 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u4 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u4 a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n5 a
    have u7 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u4 a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n5 a
    have u9 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n14
    have u10 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n10
    rcases c1095 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u10
  have c1097 : v23 ∨ v2 ∨ v10 ∨ ¬v11 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n15 a
      · exact absurd a n11
      · exact absurd a n14
      · exact a
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n20
    have u2 : ¬v3 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n17
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u4 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a u6
      · exact absurd a n0
    have u10 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n3 a
    have u11 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u9 a
      · exact absurd n3 a
      · exact a
    have u12 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n14
    have u13 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u12 a
    rcases c371 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u5
  have c1098 : v12 ∨ ¬v2 ∨ v3 ∨ v10 ∨ ¬v11 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n12
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n16
    have u6 : v5 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
    have u7 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u8 : ¬v7 := by
      rcases c24 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    rcases c322 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd u2 a
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a n16
  have c1100 : v48 ∨ v10 ∨ v23 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c1089 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v24 := by
      rcases c1093 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u16 : v2 := by
      rcases c1097 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
    have u17 : ¬v3 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
    have u18 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a u15
      · exact absurd a u10
    have u19 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
    have u21 : v12 := by
      rcases c1098 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u22 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u1 a
    have u23 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u21 a
    have u24 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u1 a
    have u25 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a n4
    have u26 : v1 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a n5
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
    rcases c5 with a|a|a
    · exact absurd u26 a
    · exact absurd u16 a
    · exact absurd u25 a
  have c1101 : v49 ∨ v10 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : v11 := by
      rcases c1089 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v23 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u16 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v17 := by
      rcases c1062 with a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
    have u22 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u10
    have u23 : v16 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd u15 a
      · exact a
    have u24 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u10
    have u25 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v2 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
    have u29 : ¬v5 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u30 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a u28
      · exact absurd a n4
      · exact absurd a n0
    have u31 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u30 a
      · exact absurd u24 a
      · exact a
    have u32 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u30 a
      · exact absurd u24 a
      · exact a
    have u33 : v12 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u31
    have u34 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u32
      · exact a
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n3
    rcases c71 with a|a|a
    · exact absurd u33 a
    · exact absurd u34 a
    · exact absurd u2 a
  have c1102 : ¬v2 ∨ v8 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v6 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u3 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
    have u6 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n11
    have u7 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    rcases c249 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u6 a
    · exact absurd a n14
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
  have c1103 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n13
      · exact a
      · exact absurd a n0
    have u2 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd u1 a
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n12
  have c1104 : v42 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v10 := by
      rcases c1101 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v40 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v33 := by
      rcases c1069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v11 := by
      rcases c1089 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u15 a
    have u19 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u15 a
    have u21 : ¬v2 := by
      rcases c1102 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v23 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u23 : v1 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n7
    have u24 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v6 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n6
    have u28 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u25
    have u29 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u17
      · exact absurd a u28
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a n0
    rcases c15 with a|a|a
    · exact absurd u23 a
    · exact absurd u27 a
    · exact absurd u29 a
  have c1105 : v34 ∨ v40 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v35 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
  have c1106 : ¬v7 ∨ ¬v1 ∨ ¬v16 ∨ v17 ∨ v24 ∨ v26 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v11 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n9
    have u15 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
    have u16 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u8
    rcases c64 with a|a|a
    · exact absurd u15 a
    · exact absurd u16 a
    · exact absurd u14 a
  have c1107 : ¬v11 ∨ ¬v1 ∨ v7 ∨ ¬v14 ∨ v15 ∨ v17 ∨ v20 ∨ v21 ∨ v24 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u4 : v6 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n3 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n7
    have u5 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    rcases c8 with a|a|a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1108 : v44 ∨ ¬v1 ∨ ¬v23 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v41 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v34 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v17 := by
      rcases c1062 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    have u19 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u15
    have u20 : v16 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd n2 a
      · exact a
    have u21 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v7 := by
      rcases c1106 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u26 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u25
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n3
    have u27 : ¬v11 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u25
      · exact absurd u26 a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n4
    have u28 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u29 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u27
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n5
    have u30 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u28 a
      · exact absurd u26 a
      · exact a
    rcases c958 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u29 a
    · exact absurd a u30
    · exact absurd a u27
    · exact absurd a n3
    · exact absurd u7 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
  have c1109 : ¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
  have c1110 : ¬v17 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v23 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
  have c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n4
    rcases c1079 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1112 : v11 ∨ v2 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n1
    have u3 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
    have u4 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a u4
      · exact a
      · exact absurd a n9
    have u6 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u5 a
      · exact a
    rcases c850 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1113 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n0 a
    rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a u3
  have c1114 : v32 ∨ v2 ∨ ¬v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v30 ∨ v33 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n5
    have u6 : ¬v26 := by
      rcases c1113 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n2 a
    rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd n13 a
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  exact ⟨c1064, c1069, c1070, c1071, c1078, c1079, c1084, c1086, c1088, c1091, c1094, c1095, c1103, c1104, c1105, c1108, c1109, c1110, c1111, c1112, c1113, c1114⟩
