import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1150-1199 of the 2559-step refutation of ccase003: 124 core clauses and 102 earlier-derived ones give 11 more. -/
theorem CCase003_block023
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c50 : ¬v10 ∨ ¬v12)
    (c53 : ¬v11 ∨ ¬v12)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v21)
    (c68 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c103 : ¬v23 ∨ ¬v28 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c120 : v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c146 : ¬v37 ∨ ¬v36)
    (c147 : ¬v38 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c166 : ¬v41 ∨ ¬v42)
    (c168 : ¬v45 ∨ ¬v43)
    (c173 : ¬v45 ∨ ¬v44)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c251 : ¬v25 ∨ v18 ∨ v33 ∨ v26 ∨ v17 ∨ v19 ∨ v24 ∨ v32)
    (c278 : v43 ∨ ¬v28 ∨ v42 ∨ v35 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v20 ∨ v19 ∨ v21 ∨ v33 ∨ v48 ∨ v49)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c305 : v27 ∨ ¬v19 ∨ v11 ∨ v26 ∨ v13 ∨ v12 ∨ v18 ∨ v20)
    (c307 : v22 ∨ ¬v15 ∨ v28 ∨ v21 ∨ v9 ∨ v16 ∨ v8 ∨ v14)
    (c334 : v22 ∨ ¬v15 ∨ v28 ∨ v26 ∨ v16 ∨ v9 ∨ v2 ∨ v8 ∨ v19 ∨ v1 ∨ v7 ∨ v21 ∨ v20 ∨ v12)
    (c339 : v36 ∨ v23 ∨ v42 ∨ ¬v29 ∨ v30 ∨ v22 ∨ v35 ∨ v28)
    (c345 : ¬v34 ∨ v41 ∨ v33 ∨ v27 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c350 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v2 ∨ v3 ∨ v44 ∨ v39)
    (c368 : v15 ∨ v16 ∨ v17 ∨ v8 ∨ ¬v9 ∨ v1 ∨ v2 ∨ v10)
    (c370 : ¬v41 ∨ v34 ∨ v42 ∨ v40 ∨ v33 ∨ v49 ∨ v47 ∨ v48)
    (c377 : v16 ∨ v8 ∨ v17 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ ¬v9)
    (c384 : v48 ∨ v19 ∨ v5 ∨ v4 ∨ v15 ∨ v20 ∨ v13 ∨ v8 ∨ v11 ∨ v1 ∨ ¬v12 ∨ v46 ∨ v47 ∨ v14)
    (c393 : v14 ∨ v20 ∨ v5 ∨ v19 ∨ v21 ∨ v6 ∨ v12 ∨ ¬v13)
    (c419 : ¬v45 ∨ v38 ∨ v46 ∨ v3 ∨ v4 ∨ v37 ∨ v44 ∨ v39)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c463 : ¬v25 ∨ v24 ∨ v26 ∨ v18 ∨ v31 ∨ v32 ∨ v19 ∨ v17)
    (c464 : ¬v45 ∨ v38 ∨ v46 ∨ v3 ∨ v4 ∨ v2 ∨ v44 ∨ v39)
    (c477 : v33 ∨ v26 ∨ v32 ∨ v4 ∨ v17 ∨ v3 ∨ v10 ∨ v34 ∨ v19 ∨ v13 ∨ v5 ∨ v20 ∨ ¬v12 ∨ v11)
    (c481 : ¬v12 ∨ v19 ∨ v5 ∨ v18 ∨ v20 ∨ v4 ∨ v13 ∨ v11)
    (c486 : v22 ∨ v26 ∨ v5 ∨ v27 ∨ v18 ∨ v6 ∨ v12 ∨ v11 ∨ v4 ∨ v21 ∨ v15 ∨ ¬v19 ∨ v8 ∨ v20)
    (c525 : v43 ∨ v44 ∨ v22 ∨ ¬v15 ∨ v49 ∨ v27 ∨ v21 ∨ v28 ∨ v20 ∨ v1 ∨ v13 ∨ v16 ∨ v9 ∨ v8)
    (c531 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v44 ∨ v3 ∨ v4 ∨ v2)
    (c532 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v1 ∨ v10 ∨ v8 ∨ v9)
    (c553 : v43 ∨ ¬v1 ∨ v44 ∨ v8 ∨ v7 ∨ v2 ∨ v9 ∨ v14)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c605 : ¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c679 : v26 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c729 : v5 ∨ v4 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c743 : v28 ∨ ¬v14 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c828 : v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c869 : ¬v25 ∨ v15 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c921 : ¬v35 ∨ v22 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c1044 : v22 ∨ ¬v13 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1046 : v22 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32)
    (c1050 : ¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1075 : ¬v32 ∨ ¬v41 ∨ v42 ∨ v48 ∨ v49)
    (c1087 : ¬v12 ∨ v6 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c1107 : v27 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1133 : ¬v1 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1134 : ¬v13 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1149 : ¬v7 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1155 : ¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1229 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1237 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1274 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1280 : ¬v21 ∨ v22 ∨ ¬v23 ∨ ¬v25)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1304 : v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1352 : v20 ∨ v6 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1364 : v28 ∨ v6 ∨ ¬v14 ∨ v22 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1377 : v28 ∨ v6 ∨ ¬v9 ∨ v22 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1405 : v28 ∨ v1 ∨ v6 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1424 : v49 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48)
    (c1427 : v19 ∨ ¬v13 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1450 : v14 ∨ v7 ∨ v8 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1453 : v13 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1479 : v19 ∨ ¬v12 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1501 : ¬v11 ∨ v17 ∨ v18 ∨ v21 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1503 : v28 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1512 : v22 ∨ v1 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1588 : v16 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1635 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1637 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1648 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1686 : ¬v37 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1692 : v18 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v12 ∨ v19 ∨ v46 ∨ v47 ∨ v48)
    (c1705 : ¬v27 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1711 : ¬v6 ∨ v4 ∨ ¬v12 ∨ v37 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1713 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v41)
    (c1714 : v25 ∨ v4 ∨ v24 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1715 : v6 ∨ ¬v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1717 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v44)
    (c1720 : v46 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v33 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1721 : ¬v6 ∨ ¬v4 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1722 : v2 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v34 ∨ v35 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1723 : v35 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v34 ∨ v40 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    : (¬v2 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v19 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v35) ∧ (¬v15 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32) ∧ (v28 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35) ∧ (v24 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v49 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v43 ∨ v44 ∨ v47 ∨ v48) ∧ (v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v28) ∧ (v49 ∨ v22 ∨ v26 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v19 ∨ ¬v22 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v35) ∧ (v28 ∨ v26 ∨ ¬v29 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v33 ∨ ¬v6 ∨ v14 ∨ v21 ∨ v26 ∨ v28 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1724 : v19 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c1720 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v4 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v6 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v34 := by
      rcases c1723 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v12 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
    have u11 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u2 a
    rcases c1722 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1725 : ¬v2 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    rcases c532 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u7
  have c1726 : v6 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c1720 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v4 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v2 := by
      rcases c1725 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v41 := by
      rcases c1724 with a|a|a|a|a|a|a|a|a|a
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
    have u8 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v3 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a u8
    have u12 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u2 a
    have u13 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v18 := by
      rcases c1692 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c673 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1727 : v9 ∨ v1 ∨ v2 ∨ v6 ∨ ¬v12 ∨ ¬v19 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ ¬v41 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : v34 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v7 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v28 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a u1
      · exact a
    have u11 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : v22 := by
      rcases c839 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a n8
    have u14 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u13 a
      · exact absurd u10 a
      · exact a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a u11
  have c1728 : v49 ∨ v24 ∨ v25 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v33 := by
      rcases c1720 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u6 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v4 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v6 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u9 : v19 := by
      rcases c1726 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n3
    have u14 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
    have u15 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v1 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
    have u19 : ¬v2 := by
      rcases c1717 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v41 := by
      rcases c1727 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd u14 a
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u21 : v34 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u7 a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u1
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c1723 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd u21 a
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n0
  have c1729 : ¬v22 ∨ ¬v19 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n4
  have c1730 : ¬v19 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
    have u3 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
    have u4 : ¬v22 := by
      rcases c1729 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
    have u5 : ¬v23 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
    have u6 : v28 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n1
    rcases c839 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a n5
  have c1731 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : v37 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n8
    have u5 : ¬v15 := by
      rcases c1588 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u6 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
    have u7 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u5
    have u10 : v7 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n12
    have u11 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v3 := by
      rcases c7 with a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u7
  have c1732 : v29 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v19 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v30 ∨ v33 ∨ v35 ∨ v36 ∨ ¬v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n15 a
      · exact a
    have u2 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd n15 a
      · exact a
    have u3 : v22 := by
      rcases c1731 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n9 a
    have u5 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
    have u6 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v37 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n11
    have u10 : v32 := by
      rcases c251 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n8
      · exact a
    have u11 : v31 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n11
      · exact a
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a u2
    rcases c135 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c1733 : v30 ∨ v2 ∨ ¬v12 ∨ v24 ∨ v26 ∨ v29 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v25 := by
      rcases c1728 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n7
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n11
    have u11 : v23 := by
      rcases c1732 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a n11
    have u12 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd u11 a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v21 := by
      rcases c1280 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd u5 a
    have u15 : v34 := by
      rcases c1479 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u13
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u15 a
      · exact a
    rcases c1046 with a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u17
  have c1734 : v28 ∨ ¬v5 ∨ v14 ∨ v21 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n0
    have u2 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    rcases c1398 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1735 : v22 ∨ v2 ∨ v8 ∨ v9 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v14 := by
      rcases c1734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v7 := by
      rcases c1149 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v1 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n16
    have u8 : v15 := by
      rcases c638 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u8 a
    rcases c334 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u8 a
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n4
  have c1736 : ¬v8 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v43 := by
      rcases c1734 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    rcases c168 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1737 : v22 ∨ v2 ∨ v12 ∨ v19 ∨ ¬v23 ∨ ¬v25 ∨ v26 ∨ v33 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v21 := by
      rcases c1280 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd n5 a
    have u3 : ¬v28 := by
      rcases c103 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u4 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v8 := by
      rcases c1736 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
    have u10 : v14 := by
      rcases c1734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u4 a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u10 a
    rcases c1735 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1738 : v22 ∨ v2 ∨ ¬v9 ∨ v12 ∨ v19 ∨ v26 ∨ ¬v28 ∨ v29 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
    have u9 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v21 := by
      rcases c278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n6 a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v1 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
    have u18 : v7 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n13
    rcases c1133 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n11
  have c1739 : v22 ∨ v2 ∨ v8 ∨ v9 ∨ v23 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v25 := by
      rcases c1728 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n10
    have u6 : v28 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n5
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n10
    have u10 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n14
    have u11 : v37 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a u8
    have u12 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v31 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
    have u14 : ¬v34 := by
      rcases c1723 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a u14
      · exact absurd a n10
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u16
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u15
  have c1740 : v30 ∨ v2 ∨ v22 ∨ v24 ∨ v26 ∨ v29 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c1733 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
    have u2 : v25 := by
      rcases c1728 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n7
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n11
    have u10 : ¬v23 := by
      rcases c1737 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v28 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n3
    have u12 : ¬v17 := by
      rcases c1214 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a n7
    have u13 : ¬v9 := by
      rcases c1738 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v8 := by
      rcases c1739 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v37 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u7
    have u18 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u3
    have u19 : v31 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
    have u20 : v21 := by
      rcases c278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u11 a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u20 a
      · exact a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u22
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u21
  have c1741 : v24 ∨ v2 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v25 := by
      rcases c1728 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n6
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n10
    have u10 : ¬v12 := by
      rcases c1733 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u2
    have u12 : v22 := by
      rcases c1740 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u12 a
    have u14 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u1 a
    have u15 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u16 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v32 := by
      rcases c251 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n0
      · exact a
    have u21 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u24 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
    have u25 : v6 := by
      rcases c1453 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u26 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u17
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n4
    have u27 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd u25 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u28 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u26 a
      · exact a
    rcases c377 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u29
    · exact absurd a u18
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a n1
    · exact absurd a u30
    · exact absurd u26 a
  have c1743 : v19 ∨ ¬v2 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v4 := by
      rcases c1725 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v6 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
    have u10 : v41 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a n9
    have u11 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v3 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u13
      · exact absurd a n7
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u11
    have u15 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u17 : v12 := by
      rcases c828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u14 a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u19 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u20 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u17 a
    rcases c481 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u20
  have c1744 : ¬v2 ∨ v4 ∨ ¬v12 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v15 := by
      rcases c1588 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v6 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u7
    have u10 : v5 := by
      rcases c1578 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd n2 a
      · exact absurd a n3
    rcases c3 with a|a|a
    · exact absurd n0 a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1745 : v19 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v25 := by
      rcases c1728 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n10
    have u8 : v2 := by
      rcases c1741 with a|a|a|a|a|a|a|a|a|a|a
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
    have u9 : v28 := by
      rcases c1743 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v4 := by
      rcases c1725 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u1 a
    have u12 : ¬v23 := by
      rcases c103 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u1 a
    have u13 : ¬v12 := by
      rcases c1744 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u2
    have u15 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u8 a
      · exact absurd u14 a
      · exact a
    rcases c959 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u14 a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1746 : v35 ∨ v24 ∨ v26 ∨ v29 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v25 := by
      rcases c1728 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
    have u7 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v30 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v18 := by
      rcases c1279 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n2
    have u13 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v28 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n0
    have u15 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v6 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u20 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u22
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v11 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u23 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
    have u25 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u20 a
    have u26 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u20 a
    have u27 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u25
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u28 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u27 a
    rcases c477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u19
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd u27 a
    · exact absurd a u24
  have c1747 : ¬v15 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd n0 a
      · exact a
    rcases c463 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u1
  have c1748 : v28 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c1747 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v22 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
    have u4 : v33 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    rcases c1465 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd a n0
  have c1749 : v24 ∨ v26 ∨ v29 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v25 := by
      rcases c1728 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v33 := by
      rcases c1746 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v28 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n3
    rcases c1748 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n3
  have c1750 : v24 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v25 := by
      rcases c1728 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v19 := by
      rcases c1730 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
    have u6 : v29 := by
      rcases c1749 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v18 := by
      rcases c1281 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n1
    have u12 : ¬v28 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
    have u13 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v6 := by
      rcases c1352 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v7 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u20
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n6
    have u23 : ¬v11 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u22 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n4
    have u24 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u18 a
    have u25 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u18 a
    have u26 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u24
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u26 a
    rcases c477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u16
    · exact absurd u26 a
    · exact absurd a u23
  have c1751 : v22 ∨ v19 ∨ v23 ∨ v26 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v2 := by
      rcases c1743 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
    have u17 : v6 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
    have u18 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v36 := by
      rcases c339 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd n5 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n4
    have u20 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v12 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u18
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v3 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd a u13
    have u24 : v5 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c27 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u17 a
  have c1752 : v19 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c1751 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n10
    have u8 : ¬v2 := by
      rcases c1743 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v8 := by
      rcases c1736 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v1 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u4
    have u11 : v7 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n10
    have u12 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u10 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a n0
    rcases c1568 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1753 : ¬v39 ∨ ¬v1 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v33 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v25 := by
      rcases c1713 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v35 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a u2
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
    have u14 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v16 := by
      rcases c1134 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
    have u16 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n16
    have u17 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
      · exact a
      · exact absurd a n6
    rcases c5 with a|a|a
    · exact absurd n1 a
    · exact absurd u17 a
    · exact absurd u16 a
  have c1754 : v49 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ ¬v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
    have u6 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u7 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u8 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u9 : v39 := by
      rcases c1155 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a u8
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v1 := by
      rcases c1753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u16 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
    have u17 : v6 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u18 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n0
    have u22 : ¬v2 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u17 a
      · exact absurd a u20
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u24 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u17 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u14
    · exact absurd a n9
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u22
  have c1755 : v39 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ v37 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd n1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n13
    have u7 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u2
    have u8 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n13
    have u12 : ¬v2 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v4 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a n0
  have c1756 : v23 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v29 := by
      rcases c1751 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n9
    have u8 : v33 := by
      rcases c1752 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v40 := by
      rcases c1754 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v6 := by
      rcases c1755 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v9 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v1 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n8
    have u21 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v16 := by
      rcases c1134 with a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    have u25 : v7 := by
      rcases c1450 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u26 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u4
      · exact a
      · exact absurd a u11
    rcases c5 with a|a|a
    · exact absurd u19 a
    · exact absurd u26 a
    · exact absurd u25 a
  have c1757 : ¬v19 ∨ ¬v1 ∨ v11 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v9 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u8 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u12 : v5 := by
      rcases c486 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u4
    have u13 : ¬v2 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u12 a
    have u14 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    rcases c553 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n1 a
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u8
  have c1758 : v49 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v43 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u2 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n0
    have u3 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n0
    have u11 : ¬v1 := by
      rcases c1757 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u12 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a u5
    have u13 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n0
    have u14 : v6 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u15 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v2 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u11
    rcases c23 with a|a|a
    · exact absurd u17 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c1759 : v28 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v29 ∨ v35 ∨ v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v34 := by
      rcases c1758 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v1 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u12 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v12 := by
      rcases c1087 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v11 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n9
      · exact a
      · exact absurd a u9
    have u20 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n12
    rcases c5 with a|a|a
    · exact absurd u12 a
    · exact absurd u19 a
    · exact absurd u20 a
  have c1760 : ¬v25 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u5 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v19 := by
      rcases c1756 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : v29 := by
      rcases c1759 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v37 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
    have u21 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v11 := by
      rcases c1501 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v36 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u16 a
      · exact absurd a n2
      · exact a
      · exact absurd a u20
    have u24 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v38 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u27 : v12 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u9 a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u26
      · exact a
      · exact absurd a u13
      · exact absurd a u14
    have u28 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n5
    have u29 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1711 with a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u29
    · exact absurd u27 a
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1761 : v46 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : v39 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    rcases c1637 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n8
  have c1762 : v22 ∨ ¬v6 ∨ ¬v19 ∨ v26 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v25 := by
      rcases c1760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n3
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v29 := by
      rcases c1761 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u1
    rcases c1663 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n9
  have c1763 : v34 ∨ v1 ∨ v13 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v25 := by
      rcases c1760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n12
    have u6 : ¬v33 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u2
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v2 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n13
    have u12 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
    have u13 : ¬v8 := by
      rcases c1736 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u13
      · exact a
    have u15 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v9 := by
      rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd u14 a
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a u13
    have u19 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v3 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd u18 a
    have u23 : v7 := by
      rcases c1450 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
    rcases c29 with a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd u5 a
  have c1764 : ¬v6 ∨ v13 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v2 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v19 := by
      rcases c1762 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v40 := by
      rcases c1763 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v3 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a u10
    have u12 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n0 a
    have u13 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v5 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n0 a
    have u15 : ¬v12 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c559 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n10
    · exact absurd a u14
    · exact absurd a n9
    · exact absurd a u13
    · exact absurd a n11
    · exact absurd n0 a
    · exact absurd a n1
  have c1765 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n4 a
    rcases c307 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
  have c1766 : v22 ∨ ¬v6 ∨ v26 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n10
    have u9 : v13 := by
      rcases c1764 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u10 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u10
      · exact a
    have u14 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n3
    rcases c1765 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd u13 a
    · exact absurd a n0
    · exact absurd a n3
  have c1767 : v28 ∨ ¬v6 ∨ v22 ∨ v26 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c1760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v19 := by
      rcases c1762 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v29 := by
      rcases c1766 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v4 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v14 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u18 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
    have u19 : ¬v11 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
    have u20 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
    have u21 : v18 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
    have u22 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u20
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u22 a
    rcases c477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd u22 a
    · exact absurd a u19
  have c1768 : v47 ∨ v22 ∨ v26 ∨ v28 ∨ v34 ∨ v35 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v25 := by
      rcases c1760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v6 := by
      rcases c1767 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v9 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v1 := by
      rcases c1405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
    have u12 : ¬v14 := by
      rcases c1364 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
    have u16 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n8
    have u17 : ¬v5 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u18 : ¬v19 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
    have u19 : v20 := by
      rcases c393 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd u11 a
    have u20 : v33 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v40 := by
      rcases c1713 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a u1
    have u25 : v39 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u23
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    rcases c161 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1769 : ¬v3 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v34 := by
      rcases c1768 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v12 := by
      rcases c828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n6
    have u11 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u12 : v1 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
    rcases c7 with a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd n0 a
  have c1770 : v49 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v34 := by
      rcases c1768 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v25 := by
      rcases c1760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n0
    have u13 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n0
    have u14 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v41 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n3
    have u16 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u17 : ¬v37 := by
      rcases c1648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
    have u18 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v2 := by
      rcases c1743 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u21 : v3 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u18
    have u22 : v6 := by
      rcases c1769 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u23 : ¬v4 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u24 : ¬v5 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u22 a
    have u25 : ¬v12 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a u24
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u14
  have c1771 : v49 ∨ v22 ∨ v26 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v19 := by
      rcases c1770 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v34 := by
      rcases c1768 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v1 := by
      rcases c1512 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u16 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v25 := by
      rcases c1760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u19 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n5
    have u20 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u18
      · exact absurd a n2
    have u21 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u18
      · exact absurd a n2
    rcases c1674 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd u15 a
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n0
  have c1772 : ¬v19 ∨ ¬v22 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u7 : v31 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a n3
    have u8 : v29 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
    rcases c125 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1773 : v28 ∨ v26 ∨ ¬v29 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v22 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u6 a
    have u13 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v19 := by
      rcases c1772 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v39 := by
      rcases c1637 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u18 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
    have u20 : ¬v14 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u19 a
    have u26 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u27 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n6
    have u28 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u29 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u16
    rcases c605 with a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a n5
  have c1774 : v33 ∨ ¬v6 ∨ v14 ∨ v21 ∨ v26 ∨ v28 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v22 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v29 := by
      rcases c1773 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v27 := by
      rcases c1705 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v24 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v45 := by
      rcases c1635 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v19 := by
      rcases c1772 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n7
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v4 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd n1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v42 := by
      rcases c1237 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
    have u17 : ¬v11 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n9
    have u18 : ¬v20 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
    have u19 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u3
    have u20 : v18 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n9
    have u21 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u20 a
    rcases c384 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd u19 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n2
  exact ⟨c1725, c1730, c1747, c1748, c1750, c1758, c1765, c1771, c1772, c1773, c1774⟩
