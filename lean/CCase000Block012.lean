import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 600-649 of the 2189-step refutation of ccase000: 106 core clauses and 46 earlier-derived ones give 17 more. -/
theorem CCase000_block012
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c36 : v2 ∨ v7 ∨ v3 ∨ v5 ∨ v1)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c71 : ¬v21 ∨ ¬v16)
    (c77 : ¬v18 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c110 : ¬v30 ∨ ¬v31)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c118 : ¬v31 ∨ ¬v35)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c148 : ¬v44 ∨ ¬v43)
    (c154 : ¬v45 ∨ ¬v44)
    (c155 : ¬v46 ∨ ¬v44)
    (c156 : ¬v44 ∨ ¬v47)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c182 : v29 ∨ ¬v30 ∨ v16 ∨ v37 ∨ v38 ∨ v23 ∨ v33 ∨ v22 ∨ v26 ∨ v17 ∨ v31 ∨ v40 ∨ v32 ∨ v15)
    (c183 : v43 ∨ v14 ∨ v1 ∨ v13 ∨ v6 ∨ v48 ∨ ¬v7 ∨ v49)
    (c185 : v43 ∨ ¬v36 ∨ v42 ∨ v37 ∨ v35 ∨ v30 ∨ v29 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c191 : ¬v4 ∨ v12 ∨ v5 ∨ v46 ∨ v45 ∨ v3 ∨ v11 ∨ v47)
    (c237 : v43 ∨ v14 ∨ v1 ∨ v48 ∨ v8 ∨ ¬v7 ∨ v6 ∨ v49)
    (c241 : v15 ∨ v7 ∨ v16 ∨ v2 ∨ v14 ∨ v9 ∨ v1 ∨ ¬v8)
    (c242 : v29 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v34 ∨ v22 ∨ v27)
    (c247 : ¬v27 ∨ v21 ∨ v19 ∨ v20 ∨ v26 ∨ v28 ∨ v34 ∨ v33)
    (c270 : ¬v44 ∨ v37 ∨ v9 ∨ v2 ∨ v1 ∨ v38 ∨ v5 ∨ v8 ∨ v10 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c301 : v35 ∨ ¬v21 ∨ v13 ∨ v22 ∨ v28 ∨ v20 ∨ v12 ∨ v26 ∨ v14 ∨ v15 ∨ v19 ∨ v36 ∨ v41 ∨ v42)
    (c305 : v29 ∨ ¬v30 ∨ v38 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v22)
    (c312 : v36 ∨ ¬v35 ∨ v42 ∨ v41 ∨ v22 ∨ v34 ∨ v29 ∨ v28)
    (c313 : v22 ∨ v28 ∨ v2 ∨ v7 ∨ v20 ∨ v8 ∨ v16 ∨ v12 ∨ v21 ∨ v1 ∨ v9 ∨ ¬v15 ∨ v26 ∨ v19)
    (c326 : ¬v44 ∨ v43 ∨ v37 ∨ v2 ∨ v38 ∨ v3 ∨ v1 ∨ v45)
    (c334 : v36 ∨ v29 ∨ v28 ∨ v27 ∨ v41 ∨ v42 ∨ v34 ∨ ¬v35)
    (c349 : v43 ∨ ¬v35 ∨ v42 ∨ v48 ∨ v24 ∨ v22 ∨ v31 ∨ v30 ∨ v41 ∨ v28 ∨ v29 ∨ v34 ∨ v38 ∨ v49)
    (c370 : v43 ∨ v36 ∨ v29 ∨ v30 ∨ v9 ∨ v2 ∨ v7 ∨ ¬v1 ∨ v3 ∨ v35 ∨ v10 ∨ v8 ∨ v45 ∨ v49)
    (c388 : v43 ∨ ¬v21 ∨ v7 ∨ v13 ∨ v28 ∨ v22 ∨ v14 ∨ v23 ∨ v16 ∨ v9 ∨ v20 ∨ v15 ∨ v48 ∨ v49)
    (c410 : ¬v31 ∨ v38 ∨ v10 ∨ v24 ∨ v39 ∨ v11 ∨ v23 ∨ v30 ∨ v26 ∨ v32 ∨ v33 ∨ v9 ∨ v17 ∨ v40)
    (c417 : ¬v44 ∨ v36 ∨ v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ v45)
    (c429 : v43 ∨ v7 ∨ v28 ∨ v14 ∨ v26 ∨ v8 ∨ v19 ∨ v15 ∨ v12 ∨ v27 ∨ v20 ∨ ¬v21 ∨ v48 ∨ v49)
    (c435 : ¬v31 ∨ v30 ∨ v38 ∨ v39 ∨ v37 ∨ v32 ∨ v24 ∨ v23)
    (c445 : ¬v31 ∨ v30 ∨ v38 ∨ v39 ∨ v32 ∨ v25 ∨ v24 ∨ v23)
    (c462 : v43 ∨ ¬v1 ∨ v44 ∨ v49 ∨ v7 ∨ v9 ∨ v2 ∨ v8)
    (c469 : ¬v44 ∨ v37 ∨ v30 ∨ v24 ∨ v2 ∨ v38 ∨ v7 ∨ v1 ∨ v23 ∨ v22 ∨ v42 ∨ v43 ∨ v45 ∨ v49)
    (c485 : v43 ∨ ¬v36 ∨ v9 ∨ v31 ∨ v1 ∨ v29 ∨ v14 ∨ v8 ∨ v30 ∨ v38 ∨ v42 ∨ v37 ∨ v45 ∨ v49)
    (c488 : v15 ∨ v9 ∨ v1 ∨ ¬v8 ∨ v7 ∨ v21 ∨ v14 ∨ v2)
    (c490 : ¬v34 ∨ v41 ∨ v33 ∨ v28 ∨ v35 ∨ v42 ∨ v40 ∨ v27)
    (c529 : v43 ∨ ¬v1 ∨ v9 ∨ v7 ∨ v2 ∨ v14 ∨ v49 ∨ v8)
    (c550 : ¬v44 ∨ v36 ∨ v41 ∨ v2 ∨ v3 ∨ v8 ∨ v37 ∨ v10 ∨ v9 ∨ v6 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c554 : ¬v31 ∨ v30 ∨ v38 ∨ v37 ∨ v24 ∨ v25 ∨ v23 ∨ v32)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c599 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c623 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c661 : v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c670 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c675 : v12 ∨ v1 ∨ v6 ∨ v7 ∨ v11 ∨ v14 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c728 : ¬v4 ∨ ¬v3 ∨ ¬v7 ∨ v8 ∨ v12 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24)
    (c812 : ¬v18 ∨ ¬v4 ∨ ¬v5 ∨ v13 ∨ v14 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c855 : ¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c867 : v26 ∨ v5 ∨ v12 ∨ v13 ∨ v25 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c879 : v14 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c906 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c912 : ¬v31 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c988 : v42 ∨ v24 ∨ v28 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1046 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ v33 ∨ v40 ∨ v47)
    (c1069 : v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1079 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1100 : ¬v28 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v33 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1150 : ¬v4 ∨ ¬v2 ∨ v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1152 : ¬v2 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1154 : v26 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1155 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1158 : ¬v42 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1159 : v12 ∨ ¬v4 ∨ v7 ∨ ¬v26 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1162 : v41 ∨ ¬v4 ∨ v5 ∨ v12 ∨ ¬v26 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v21 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v36 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v30 ∨ v31 ∨ v42 ∨ v43 ∨ v45 ∨ v49) ∧ (¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45) ∧ (v22 ∨ ¬v4 ∨ ¬v5 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v36 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v31 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40) ∧ (¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v38 ∨ v39) ∧ (v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47) ∧ (v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49) ∧ (v34 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v36 ∨ v41 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ ¬v4 ∨ v6 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38) ∧ (v29 ∨ ¬v4 ∨ v12 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49) ∧ (v36 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v43) ∧ (v13 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v22 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v7 ∨ ¬v4 ∨ v6 ∨ ¬v8 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1163 : v48 ∨ ¬v4 ∨ v12 ∨ ¬v26 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u5 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u6 : v7 := by
      rcases c1159 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u7 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v5 := by
      rcases c1162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u9 : ¬v1 := by
      rcases c18 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd u8 a
    have u10 : ¬v6 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd u6 a
      · exact a
    have u11 : v13 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u10
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u12 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u11 a
    rcases c237 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd u6 a
    · exact absurd a u10
    · exact absurd a n13
  have c1164 : v21 ∨ v2 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n13
    have u2 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n15 a
      · exact a
    have u3 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v3 := by
      rcases c550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n15 a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n19
    rcases c728 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c1165 : ¬v7 ∨ v2 ∨ ¬v4 ∨ ¬v6 ∨ v36 ∨ v37 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c19 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n3 a
    have u2 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n3 a
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n6 a
      · exact a
    rcases c417 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n7
  have c1166 : ¬v4 ∨ v12 ∨ ¬v26 ∨ v29 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u8
    have u11 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v31 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u13 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v39 := by
      rcases c912 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v38 := by
      rcases c445 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
    have u18 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : v6 := by
      rcases c1164 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u24 : ¬v7 := by
      rcases c1165 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd u9 a
      · exact absurd a n8
    have u25 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n12
    have u26 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n12
    have u27 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n12
    have u28 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v1 := by
      rcases c599 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u28
      · exact absurd u27 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
    have u31 : v3 := by
      rcases c370 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd u30 a
      · exact a
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd a u29
      · exact absurd a n8
      · exact absurd a n12
    rcases c12 with a|a|a|a
    · exact absurd u30 a
    · exact absurd u31 a
    · exact absurd u23 a
    · exact absurd n0 a
  have c1167 : v7 ∨ ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c12 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c17 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : v11 := by
      rcases c191 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a n7
    have u4 : v13 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
    rcases c56 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c1168 : v15 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v19 ∨ ¬v21 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n6 a
    rcases c429 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a n11
    · exact absurd a n12
  have c1169 : v15 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v21 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd n5 a
      · exact a
    rcases c1168 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c1170 : ¬v21 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1169 with a|a|a|a|a|a|a|a|a|a|a|a
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
  have c1171 : ¬v36 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v30 ∨ v31 ∨ v42 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    rcases c485 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
  have c1172 : v1 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v21 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v35 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a n16
    have u3 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v36 := by
      rcases c334 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd u2 a
    rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n16
  have c1173 : ¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n4 a
      · exact a
    rcases c326 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n5
  have c1174 : v3 ∨ ¬v15 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : v35 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n3 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n2
    have u9 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    rcases c780 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u7
  have c1175 : v2 ∨ v1 ∨ v3 ∨ v7 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : v44 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1173 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n13
    have u5 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a n13
    have u6 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v15 := by
      rcases c1174 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n13
    have u8 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a n1
    have u9 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v21 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a n0
    have u12 : v16 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd u8 a
    rcases c71 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c1176 : v22 ∨ ¬v4 ∨ ¬v5 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v36 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v18 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n15
    have u7 : ¬v19 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u1
    have u8 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u6 a
    rcases c301 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd u6 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1177 : v16 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v15 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd n7 a
      · exact a
    rcases c313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd n7 a
    · exact absurd a n11
    · exact absurd a n8
  have c1178 : v16 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v15 ∨ v19 ∨ v22 ∨ v26 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd n7 a
      · exact a
    rcases c1177 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n7 a
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1179 : v16 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v15 ∨ v22 ∨ v26 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd n7 a
      · exact a
    rcases c1178 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n7 a
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1180 : ¬v15 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ v22 ∨ v26 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1179 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1181 : v28 ∨ v1 ∨ v2 ∨ ¬v4 ∨ ¬v5 ∨ v7 ∨ v9 ∨ v12 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v8 := by
      rcases c1176 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v15 := by
      rcases c1180 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a n16
    · exact absurd a n13
    · exact absurd a n11
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n1
  have c1182 : ¬v31 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    rcases c410 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n12
  have c1183 : v38 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v7 ∨ v9 ∨ v12 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v35 := by
      rcases c334 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n13
      · exact a
    have u2 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n18
      · exact absurd a n22
    have u3 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n18
      · exact absurd a n22
    have u4 : v5 := by
      rcases c36 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a n1
    have u5 : v22 := by
      rcases c1181 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
    have u6 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v31 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n20
    have u10 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    rcases c445 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n15
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c1184 : v7 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v12 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v2 := by
      rcases c1150 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v26 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
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
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v36 := by
      rcases c1173 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n11
    have u7 : ¬v28 := by
      rcases c1175 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n11
    have u9 : ¬v35 := by
      rcases c334 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n8
      · exact a
    have u10 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v9 := by
      rcases c1183 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u12 a
      · exact a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n15
  have c1185 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    rcases c445 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
  have c1186 : v33 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v29 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c1173 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n10
    have u6 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n10
    have u7 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v27 := by
      rcases c1184 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
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
    have u10 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u16 : ¬v35 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u14
    have u17 : ¬v31 := by
      rcases c1185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n14
    have u19 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n14
    have u20 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n14
    rcases c906 with a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a n10
  have c1187 : v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n2 a
      · exact a
    rcases c934 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1188 : v40 ∨ ¬v4 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n4
      · exact a
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
    have u2 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v1 := by
      rcases c1167 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v3 := by
      rcases c1186 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v5 := by
      rcases c31 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u8 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n6
    have u9 : ¬v22 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
    have u10 : v13 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd n2 a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n11
    have u11 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u5
    have u16 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    rcases c270 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1189 : v29 ∨ ¬v4 ∨ ¬v6 ∨ v12 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
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
    have u2 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
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
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v7 := by
      rcases c1188 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n2 a
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
    have u6 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
    have u7 : ¬v1 := by
      rcases c19 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd n2 a
    have u8 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd n2 a
    have u9 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n4
    have u10 : ¬v22 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
    have u11 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v36 := by
      rcases c1173 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n8
    have u13 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u11 a
      · exact a
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u7
  have c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n3 a
      · exact a
    rcases c183 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd n2 a
    · exact absurd a n6
  have c1191 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n5
  have c1192 : v34 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v36 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n3 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v14 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n12
    have u3 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n1
    have u4 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v27 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a n9
    rcases c1191 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n0
  have c1193 : v34 ∨ ¬v4 ∨ ¬v7 ∨ v12 ∨ v22 ∨ v29 ∨ v33 ∨ v36 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v6 := by
      rcases c1189 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v26 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v1 := by
      rcases c1192 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u9 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n6
    have u10 : v11 := by
      rcases c191 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u7
      · exact a
      · exact absurd a n12
    have u11 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v27 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u11
      · exact a
      · exact absurd a n9
    have u17 : ¬v28 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n13
    have u18 : ¬v35 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u17
    rcases c190 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a n0
  have c1194 : v8 ∨ ¬v1 ∨ v2 ∨ v6 ∨ v7 ∨ v13 ∨ v22 ∨ ¬v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n17
    have u7 : ¬v35 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u5
    have u8 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n17
    have u9 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n17
    have u10 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n17
    have u11 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u4
    have u12 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u13 : v44 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd n1 a
      · exact a
      · exact absurd a n17
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
    have u14 : ¬v47 := by
      rcases c156 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v46 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v45 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v5 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u14
    have u18 : v4 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n16
    have u19 : ¬v3 := by
      rcases c11 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
      · exact absurd u18 a
    have u20 : v30 := by
      rcases c370 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n8
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n17
    have u21 : v37 := by
      rcases c550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a u16
      · exact absurd a n16
      · exact absurd a n17
    have u22 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u21 a
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u16
  have c1195 : v7 ∨ ¬v1 ∨ v2 ∨ v6 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n17
    have u2 : ¬v27 := by
      rcases c1194 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
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
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a n13
    have u4 : v28 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
    have u5 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v35 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u3 a
      · exact absurd a n10
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v14 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u10 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v44 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd n1 a
      · exact a
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n4
    have u15 : ¬v47 := by
      rcases c156 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v46 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v45 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u15
    have u19 : v4 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n16
    have u20 : ¬v3 := by
      rcases c11 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    have u21 : v38 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact a
      · exact absurd a u17
    have u22 : v37 := by
      rcases c550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n4
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a u17
      · exact absurd a n16
      · exact absurd a n17
    rcases c132 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1196 : v8 ∨ ¬v1 ∨ v2 ∨ v6 ∨ v7 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v13 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
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
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n16
    · exact absurd a n0
  have c1197 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1198 : v27 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v26 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v28 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u2 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1197 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1199 : v7 ∨ v6 ∨ ¬v8 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v27 := by
      rcases c1198 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v35 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u5
    have u7 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a n13
    rcases c616 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u6
  have c1200 : v12 ∨ ¬v4 ∨ v22 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
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
    have u2 : ¬v6 := by
      rcases c1189 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
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
    have u3 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v7 := by
      rcases c1193 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v8 := by
      rcases c1199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v1 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
    have u11 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v27 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n8
    have u17 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v28 := by
      rcases c1172 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u20 : v23 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n2
      · exact a
    rcases c92 with a|a
    · exact absurd u19 a
    · exact absurd u20 a
  have c1201 : v27 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v22 ∨ v29 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v36 := by
      rcases c1200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
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
    have u2 : ¬v26 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n7
      · exact a
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
    have u3 : ¬v6 := by
      rcases c1189 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v1 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n19
      · exact absurd a n3
    have u11 : v28 := by
      rcases c1172 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u12 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u14
    have u16 : v30 := by
      rcases c469 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u8
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a n19
    have u17 : v35 := by
      rcases c675 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c114 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c1202 : v11 ∨ ¬v4 ∨ v6 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v1 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n10
    have u4 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    rcases c625 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1203 : v22 ∨ ¬v4 ∨ v12 ∨ ¬v13 ∨ v29 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v6 := by
      rcases c1189 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v26 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
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
    have u8 : v36 := by
      rcases c1200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
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
    have u9 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v7 := by
      rcases c1202 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u6
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : v27 := by
      rcases c1201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u5
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
    have u18 : ¬v1 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a u1
    have u19 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v15 := by
      rcases c1180 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u22
    have u24 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u20
    have u25 : v30 := by
      rcases c469 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u15
      · exact a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n13
    have u26 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u27 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u19
    have u28 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u20
    have u29 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u25 a
      · exact a
    rcases c182 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u25 a
    · exact absurd a u27
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a n7
    · exact absurd a u26
    · exact absurd a u23
  have c1204 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    rcases c305 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
  have c1205 : v29 ∨ v6 ∨ v13 ∨ v22 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ ¬v36 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u2 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u9 : ¬v30 := by
      rcases c1204 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v31 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
    have u11 : ¬v35 := by
      rcases c349 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n14
    rcases c185 with a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd n8 a
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n14
  have c1206 : v34 ∨ ¬v4 ∨ v12 ∨ v22 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c1189 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v26 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v13 := by
      rcases c1203 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v36 := by
      rcases c1200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v28 := by
      rcases c1205 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v14 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n11
    have u18 : ¬v30 := by
      rcases c1204 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
    have u19 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u20 : v5 := by
      rcases c867 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u21 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u17 a
    have u24 : ¬v31 := by
      rcases c554 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u19
    have u25 : v3 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a n8
    have u26 : ¬v1 := by
      rcases c11 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u25 a
      · exact absurd n1 a
    have u27 : ¬v7 := by
      rcases c32 with a|a|a|a
      · exact absurd u20 a
      · exact absurd u25 a
      · exact a
      · exact absurd n1 a
    rcases c469 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n12
  have c1207 : v29 ∨ ¬v4 ∨ v12 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c1189 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v26 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
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
    have u3 : v22 := by
      rcases c1206 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
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
    have u4 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
    have u11 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v7 := by
      rcases c1202 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v1 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a u11
    rcases c1172 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n11
  have c1208 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    rcases c185 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
  have c1209 : v36 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n1
    rcases c1180 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1210 : v7 ∨ v2 ∨ ¬v4 ∨ ¬v5 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v36 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v1 := by
      rcases c1209 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u2 : ¬v3 := by
      rcases c11 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    rcases c370 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd a n14
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a n13
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n16
    · exact absurd a n17
  have c1211 : v13 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v22 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v34 := by
      rcases c1207 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n14
    have u9 : v27 := by
      rcases c490 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n8
      · exact a
    have u10 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n14
    have u11 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n14
    have u12 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n14
    have u13 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : v5 := by
      rcases c1154 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
    have u19 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
    have u20 : v8 := by
      rcases c1210 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n14
    have u21 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u6
      · exact a
      · exact absurd a n14
    have u23 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u22 a
    rcases c388 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u22 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a n13
    · exact absurd a n14
  have c1212 : ¬v7 ∨ ¬v4 ∨ v6 ∨ ¬v8 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : v1 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v5 := by
      rcases c1154 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c18 with a|a|a|a
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u3 a
  exact ⟨c1170, c1171, c1173, c1176, c1182, c1185, c1187, c1190, c1192, c1197, c1202, c1204, c1207, c1208, c1209, c1211, c1212⟩
