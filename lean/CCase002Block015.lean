import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 750-799 of the 2934-step refutation of ccase002: 134 core clauses and 57 earlier-derived ones give 23 more. -/
theorem CCase002_block015
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c95 : v21 ∨ v20 ∨ v17 ∨ v18 ∨ v16 ∨ v15)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c105 : ¬v22 ∨ ¬v28)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c131 : ¬v34 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c144 : ¬v38 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c157 : ¬v42 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c164 : ¬v44 ∨ ¬v43)
    (c165 : ¬v45 ∨ ¬v43)
    (c166 : ¬v43 ∨ ¬v46)
    (c167 : ¬v47 ∨ ¬v43)
    (c171 : ¬v44 ∨ ¬v46)
    (c172 : ¬v44 ∨ ¬v47)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c233 : ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v15 ∨ v34 ∨ v27 ∨ v22)
    (c242 : v21 ∨ v20 ∨ v12 ∨ v5 ∨ v14 ∨ v7 ∨ v6 ∨ ¬v13)
    (c248 : v6 ∨ ¬v7 ∨ v49 ∨ v48 ∨ v43 ∨ v8 ∨ v1 ∨ v14)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c265 : ¬v40 ∨ v33 ∨ v39 ∨ v41 ∨ v32 ∨ v34 ∨ v46 ∨ v47)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c306 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v9 ∨ v21 ∨ v8)
    (c307 : v29 ∨ ¬v35 ∨ v34 ∨ v27 ∨ v41 ∨ v22 ∨ v28 ∨ v42)
    (c315 : ¬v25 ∨ v32 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v17 ∨ v31)
    (c316 : v29 ∨ ¬v30 ∨ v22 ∨ v31 ∨ v24 ∨ v23 ∨ v38 ∨ v37)
    (c334 : v43 ∨ ¬v44 ∨ v2 ∨ v38 ∨ v1 ∨ v3 ∨ v37 ∨ v45)
    (c350 : v4 ∨ v11 ∨ v45 ∨ v2 ∨ v9 ∨ ¬v3 ∨ v10 ∨ v46)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c372 : v21 ∨ v14 ∨ v1 ∨ v7 ∨ v16 ∨ v9 ∨ v15 ∨ ¬v8)
    (c377 : ¬v44 ∨ v36 ∨ v31 ∨ v2 ∨ v5 ∨ v37 ∨ v3 ∨ v40 ∨ v29 ∨ v30 ∨ v43 ∨ v45 ∨ v46 ∨ v47)
    (c398 : v21 ∨ v49 ∨ v20 ∨ ¬v13 ∨ v5 ∨ v16 ∨ v2 ∨ v6 ∨ v14 ∨ v12 ∨ v8 ∨ v47 ∨ v48 ∨ v9)
    (c425 : v43 ∨ ¬v21 ∨ v20 ∨ v12 ∨ v7 ∨ v28 ∨ v27 ∨ v8 ∨ v14 ∨ v19 ∨ v26 ∨ v15 ∨ v48 ∨ v49)
    (c428 : v29 ∨ ¬v28 ∨ v15 ∨ v35 ∨ v22 ∨ v27 ∨ v34 ∨ v21)
    (c436 : ¬v8 ∨ v9 ∨ v21 ∨ v2 ∨ v14 ∨ v16 ∨ v1 ∨ v15)
    (c443 : v29 ∨ v43 ∨ v47 ∨ v30 ∨ v41 ∨ v40 ∨ v22 ∨ ¬v36 ∨ v23 ∨ v33 ∨ v42 ∨ v28 ∨ v37 ∨ v49)
    (c474 : ¬v44 ∨ v36 ∨ v2 ∨ v38 ∨ v43 ∨ v37 ∨ v3 ∨ v45)
    (c519 : v43 ∨ ¬v1 ∨ v49 ∨ v8 ∨ v14 ∨ v2 ∨ v7 ∨ v9)
    (c529 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v8 ∨ v21 ∨ v14)
    (c533 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v34 ∨ v29 ∨ v28 ∨ v22)
    (c554 : v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c610 : ¬v4 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c709 : v21 ∨ v4 ∨ ¬v10 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c734 : v4 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c839 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c847 : v20 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c874 : ¬v7 ∨ v4 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c875 : v19 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c920 : v12 ∨ v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v26 ∨ v27)
    (c925 : ¬v27 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v34 ∨ v35)
    (c928 : v7 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c949 : v13 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c952 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c969 : v24 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v32 ∨ v33)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1132 : ¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1164 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1175 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1176 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1223 : v6 ∨ v13 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1236 : v43 ∨ ¬v16 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1238 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1254 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v45 ∨ v46)
    (c1257 : v35 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1260 : ¬v41 ∨ v34 ∨ v35 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1267 : ¬v7 ∨ ¬v6 ∨ v36 ∨ v37 ∨ ¬v44 ∨ v45)
    (c1279 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c1280 : v31 ∨ ¬v16 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1285 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1290 : ¬v38 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v31 ∨ v32 ∨ v45 ∨ v46)
    (c1292 : v29 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ ¬v34 ∨ v38 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1295 : v31 ∨ ¬v16 ∨ v17 ∨ v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1296 : ¬v32 ∨ v15 ∨ v21 ∨ ¬v28)
    (c1300 : ¬v35 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49) ∧ (v49 ∨ ¬v16 ∨ v19 ∨ v31 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47) ∧ (v22 ∨ v15 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35) ∧ (¬v28 ∨ v15 ∨ v21 ∨ v29 ∨ v34 ∨ v35) ∧ (¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45) ∧ (¬v13 ∨ v2 ∨ v3 ∨ ¬v7 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (v20 ∨ v7 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ ¬v15 ∨ v16 ∨ ¬v19 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v13 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v49) ∧ (¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21) ∧ (v7 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28) ∧ (¬v15 ∨ v16 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28) ∧ (¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46) ∧ (¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46) ∧ (v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v34 ∨ ¬v19 ∨ v20 ∨ ¬v25 ∨ ¬v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ v20 ∨ ¬v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v29 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v42 ∨ v49) ∧ (v18 ∨ v17 ∨ ¬v25 ∨ v34 ∨ ¬v42 ∨ v48 ∨ v49) := by
  have c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1176 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1302 : v47 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ ¬v35 ∨ v39 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
    rcases c1300 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n15
  have c1303 : v49 ∨ ¬v16 ∨ v19 ∨ v31 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c1280 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v20 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u5
    have u9 : v17 := by
      rcases c1295 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v32 := by
      rcases c1296 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u1 a
    have u14 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v35 := by
      rcases c1302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u13
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u16 : v29 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact a
      · exact absurd a u15
    have u17 : v34 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    rcases c126 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c1304 : v31 ∨ ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := by
      rcases c1303 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u4 : v28 := by
      rcases c1280 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v12 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
    rcases c1203 with a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u10 a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u9
  have c1305 : v32 ∨ ¬v16 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v12 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n12
    have u12 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n9
    have u13 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u14 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    have u15 : v39 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n14
    have u16 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n3
    rcases c145 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c1306 : v32 ∨ ¬v16 ∨ ¬v19 ∨ v25 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v22 := by
      rcases c1279 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u9 : ¬v27 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v26 := by
      rcases c1305 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u11
    have u14 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
    have u15 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u11
    have u16 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n7
    have u19 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n9
    have u20 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u21 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u18 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u22 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u8
    have u23 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n0
    rcases c145 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    rcases c1285 with a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1308 : v21 ∨ ¬v16 ∨ v20 ∨ v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v31 := by
      rcases c1304 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1164 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v19 := by
      rcases c1306 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u7
    have u14 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
    have u16 : ¬v27 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
    have u17 : ¬v40 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v10 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v11 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n5
    have u21 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v7 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a n8
    · exact absurd a u10
  have c1309 : v22 ∨ v15 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n3 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n2
  have c1310 : ¬v28 ∨ v15 ∨ v21 ∨ v29 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
  have c1311 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v28 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n4
    have u7 : v18 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n5
    have u8 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u7 a
    have u9 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
    have u10 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u5
    have u11 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
    have u12 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u9 a
      · exact a
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u12
  have c1312 : v19 ∨ ¬v16 ∨ v21 ∨ v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v31 := by
      rcases c1304 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v42 := by
      rcases c1164 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v40 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v20 := by
      rcases c1308 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v28 := by
      rcases c1310 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
    have u16 : ¬v26 := by
      rcases c1311 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u7
    have u17 : v23 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u15
    have u20 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a n8
    · exact absurd a u9
  have c1313 : ¬v21 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v40 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n8
    have u6 : v13 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n15
    · exact absurd a n16
  have c1314 : v25 ∨ ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v31 := by
      rcases c1304 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1164 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v40 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v19 := by
      rcases c1306 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v21 := by
      rcases c1312 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
    have u21 : ¬v27 := by
      rcases c925 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
    have u22 : v28 := by
      rcases c1313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u23
    have u27 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u23
    have u28 : v4 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u27
      · exact absurd u15 a
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n3
    rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1315 : v19 ∨ ¬v16 ∨ v17 ∨ ¬v25 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v18 := by
      rcases c969 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u13 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n13
    have u14 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u6
    rcases c876 with a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1316 : ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v31 := by
      rcases c1304 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v40 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
    have u11 : v25 := by
      rcases c1314 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
    have u19 : ¬v17 := by
      rcases c1257 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n0 a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : v19 := by
      rcases c1315 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u19
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n0 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u17
    have u24 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd n0 a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
    have u25 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd n0 a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd u20 a
    · exact absurd a u24
    · exact absurd a u23
  have c1317 : v11 ∨ v12 ∨ v15 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v13 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n5 a
      · exact a
      · exact absurd a n1
    have u2 : v17 := by
      rcases c95 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u2 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n0
  have c1318 : v16 ∨ ¬v7 ∨ v11 ∨ v15 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v17 := by
      rcases c95 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
    have u2 : v12 := by
      rcases c1317 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u2 a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n2
  have c1319 : ¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v38 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n4 a
      · exact a
    rcases c334 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
  have c1320 : v28 ∨ v15 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v17 := by
      rcases c95 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n1
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a u6
    have u8 : v11 := by
      rcases c1318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n17
      · exact absurd a n18
    have u12 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n17
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n11
    have u13 : ¬v3 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u14 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u12 a
    have u15 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u12 a
    have u16 : ¬v36 := by
      rcases c1319 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u2 a
      · exact absurd a n14
    have u17 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u6
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n6
  have c1321 : v18 ∨ v15 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v21 := by
      rcases c1320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v12 := by
      rcases c920 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    rcases c55 with a|a
    · exact absurd u4 a
    · exact absurd u2 a
  have c1322 : v28 ∨ ¬v7 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n9
    have u2 : ¬v47 := by
      rcases c172 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v46 := by
      rcases c171 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n12 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u8 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u9 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v36 := by
      rcases c1319 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd n12 a
      · exact absurd a n13
    have u11 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u5
    have u12 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n6
    have u13 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u12 a
      · exact a
    rcases c436 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n3
  have c1323 : v28 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v42 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c1319 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n9 a
      · exact absurd a n10
    have u2 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
  have c1324 : ¬v13 ∨ v2 ∨ v3 ∨ ¬v7 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v1 := by
      rcases c1323 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd n12 a
      · exact absurd a n13
    have u6 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd u5 a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u5 a
      · exact absurd n3 a
      · exact a
    rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n16
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a u1
  have c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c248 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
  have c1326 : v20 ∨ v7 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n6
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v6 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
    have u5 : v1 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    rcases c949 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u5 a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1327 : v46 ∨ v15 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v18 := by
      rcases c1321 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
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
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
    have u7 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v13 := by
      rcases c1322 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v3 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u14
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u7 a
      · exact absurd u15 a
      · exact a
    rcases c350 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a n13
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd u15 a
    · exact absurd a u11
    · exact absurd a n0
  have c1328 : ¬v25 ∨ ¬v15 ∨ v16 ∨ ¬v19 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v39 := by
      rcases c1285 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v31 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u1
      · exact a
    have u7 : v30 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c128 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c1329 : v49 ∨ ¬v7 ∨ v15 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
    have u2 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v35 := by
      rcases c1327 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v42 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n10
      · exact a
    have u9 : ¬v38 := by
      rcases c1290 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v6 := by
      rcases c1267 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n13
    have u14 : v13 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
    have u15 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
    have u18 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n16
      · exact absurd a n0
    have u19 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n1 a
    rcases c474 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a n13
  have c1330 : ¬v13 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n5
    have u6 : v2 := by
      rcases c519 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a u1
    have u7 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    rcases c242 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd n0 a
  have c1331 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    rcases c372 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd n0 a
  have c1332 : v7 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v13 := by
      rcases c1330 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
    have u2 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n8
    have u3 : ¬v1 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v14 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v8 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n5
  have c1333 : ¬v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
  have c1334 : ¬v15 ∨ v16 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v14 := by
      rcases c1333 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u4 : v8 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a u3
    have u5 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
    have u6 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u4 a
      · exact a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd n2 a
    · exact absurd a u6
    · exact absurd a u5
  have c1336 : v36 ∨ ¬v7 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v15 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v41 := by
      rcases c1329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v35 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n5
    rcases c1260 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c350 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n6
  have c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v38 := by
      rcases c1290 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u3
  have c1339 : v34 ∨ ¬v7 ∨ v15 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v36 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n11 a
    rcases c1329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n16
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1340 : v36 ∨ ¬v7 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v29 := by
      rcases c1336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
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
    have u4 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v42 := by
      rcases c856 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n0
      · exact a
    have u7 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c1211 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n15
    · exact absurd a n16
  have c1341 : v45 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v15 ∨ v17 ∨ ¬v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n16
    have u2 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n16
    have u3 : ¬v36 := by
      rcases c1339 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact a
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c1340 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd n8 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
    have u2 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v33 := by
      rcases c1301 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v35 := by
      rcases c1260 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c141 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1343 : v45 ∨ ¬v8 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v18 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n8
      · exact a
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u5
    have u9 : ¬v15 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v7 := by
      rcases c1341 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd n2 a
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
    have u12 : v1 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n4
    have u13 : ¬v6 := by
      rcases c928 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u12 a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v3 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
    have u16 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u12 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u15 a
    rcases c350 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd u15 a
    · exact absurd a u6
    · exact absurd a n11
  have c1344 : v45 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n11 a
    have u6 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v38 := by
      rcases c1290 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n12
    have u8 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v41 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd n11 a
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
    have u15 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u14 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
    rcases c377 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n13
  have c1345 : v45 ∨ ¬v7 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c1343 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v15 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v34 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n3
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
    have u7 : ¬v36 := by
      rcases c1339 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v13 := by
      rcases c1340 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n11
    have u14 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v42 := by
      rcases c1324 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u15 a
      · exact a
    rcases c474 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a n0
  have c1346 : v34 ∨ ¬v19 ∨ v20 ∨ ¬v25 ∨ ¬v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v38 := by
      rcases c1254 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v15 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
    have u18 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n9
    have u20 : v36 := by
      rcases c856 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact a
      · exact absurd a u19
    have u21 : ¬v7 := by
      rcases c1339 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u20 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v21 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n1 a
    have u24 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n1 a
    rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd n1 a
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
  have c1347 : v28 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v29 ∨ ¬v36 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v39 := by
      rcases c145 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v38 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
    have u9 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v30 := by
      rcases c443 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n9
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n6 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n11
    have u11 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u10 a
      · exact a
    rcases c316 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u4
  have c1348 : v49 ∨ ¬v19 ∨ v20 ∨ v21 ∨ ¬v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u8 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u9 : ¬v15 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v7 := by
      rcases c1345 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u12 : ¬v8 := by
      rcases c1343 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u13 : ¬v34 := by
      rcases c1344 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u14 : ¬v29 := by
      rcases c1346 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u15 : ¬v36 := by
      rcases c1347 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u14
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u16 : ¬v13 := by
      rcases c1330 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n0
    have u17 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
    have u18 : ¬v6 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u17 a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    rcases c1342 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
  have c1349 : ¬v19 ∨ v20 ∨ ¬v25 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v21 := by
      rcases c1348 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v16 := by
      rcases c1316 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v15 := by
      rcases c1334 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v14 := by
      rcases c1262 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u9 a
    rcases c920 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd u6 a
    · exact absurd a u1
    · exact absurd a u4
  have c1350 : v29 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n9
    rcases c533 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd u1 a
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n4
  have c1351 : v18 ∨ v17 ∨ ¬v25 ∨ v34 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u9 : v32 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u5
    have u10 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v43 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u2
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n6
    have u13 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v46 := by
      rcases c166 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v45 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v44 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u12 a
    rcases c1175 with a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n5
    · exact absurd a n6
  exact ⟨c1301, c1303, c1307, c1309, c1310, c1316, c1319, c1324, c1325, c1326, c1328, c1330, c1331, c1332, c1333, c1334, c1337, c1338, c1342, c1346, c1349, c1350, c1351⟩
