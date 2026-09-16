import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 650-699 of the 2934-step refutation of ccase002: 121 core clauses and 44 earlier-derived ones give 23 more. -/
theorem CCase002_block013
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c37 : ¬v8 ∨ ¬v10)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c44 : ¬v9 ∨ ¬v12)
    (c46 : ¬v9 ∨ ¬v14)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
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
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c118 : ¬v26 ∨ ¬v27)
    (c122 : ¬v30 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c129 : ¬v32 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v34)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c142 : ¬v34 ∨ ¬v35)
    (c144 : ¬v38 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v39)
    (c163 : ¬v41 ∨ ¬v42)
    (c164 : ¬v44 ∨ ¬v43)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c231 : ¬v4 ∨ v5 ∨ v45 ∨ v11 ∨ v47 ∨ v3 ∨ v46 ∨ v10)
    (c237 : v29 ∨ v30 ∨ v15 ∨ v35 ∨ v28 ∨ v23 ∨ v21 ∨ ¬v22)
    (c241 : ¬v16 ∨ v23 ∨ v17 ∨ v10 ∨ v15 ∨ v9 ∨ v22 ∨ v8)
    (c255 : ¬v41 ∨ v48 ∨ v40 ∨ v42 ∨ v47 ∨ v49 ∨ v35 ∨ v34)
    (c260 : ¬v27 ∨ v34 ∨ v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c279 : v15 ∨ v34 ∨ v19 ∨ ¬v13 ∨ v27 ∨ v35 ∨ v7 ∨ v1 ∨ v12 ∨ v20 ∨ v8 ∨ v14 ∨ v33 ∨ v6)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c288 : ¬v26 ∨ v33 ∨ v18 ∨ v20 ∨ v19 ∨ v34 ∨ v25 ∨ v27)
    (c293 : ¬v38 ∨ v31 ∨ v46 ∨ v37 ∨ v32 ∨ v30 ∨ v39 ∨ v45)
    (c295 : ¬v34 ∨ v27 ∨ v41 ∨ v35 ∨ v28 ∨ v26 ∨ v40 ∨ v33)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c307 : v29 ∨ ¬v35 ∨ v34 ∨ v27 ∨ v41 ∨ v22 ∨ v28 ∨ v42)
    (c312 : ¬v24 ∨ v31 ∨ v30 ∨ v35 ∨ v17 ∨ v10 ∨ v21 ∨ v22 ∨ v23 ∨ v18 ∨ v28 ∨ v9 ∨ v25 ∨ v11)
    (c321 : ¬v32 ∨ v39 ∨ v40 ∨ v25 ∨ v31 ∨ v33 ∨ v24 ∨ v26)
    (c330 : v10 ∨ ¬v11 ∨ v3 ∨ v18 ∨ v19 ∨ v17 ∨ v4 ∨ v12)
    (c336 : ¬v38 ∨ v31 ∨ v46 ∨ v45 ∨ v23 ∨ v40 ∨ v30 ∨ v24 ∨ v25 ∨ v34 ∨ v41 ∨ v39 ∨ v37 ∨ v48)
    (c346 : ¬v42 ∨ v36 ∨ v49 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v35)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c417 : ¬v44 ∨ v36 ∨ v1 ∨ v2 ∨ v37 ∨ v3 ∨ v43 ∨ v45)
    (c418 : v36 ∨ ¬v30 ∨ v37 ∨ v31 ∨ v24 ∨ v22 ∨ v23 ∨ v29)
    (c425 : v43 ∨ ¬v21 ∨ v20 ∨ v12 ∨ v7 ∨ v28 ∨ v27 ∨ v8 ∨ v14 ∨ v19 ∨ v26 ∨ v15 ∨ v48 ∨ v49)
    (c429 : ¬v24 ∨ v31 ∨ v18 ∨ v30 ∨ v32 ∨ v17 ∨ v25 ∨ v23)
    (c433 : v43 ∨ v21 ∨ v18 ∨ v20 ∨ v8 ∨ v4 ∨ v13 ∨ v1 ∨ v11 ∨ v7 ∨ v12 ∨ ¬v14 ∨ v48 ∨ v49)
    (c448 : ¬v26 ∨ v33 ∨ v18 ∨ v20 ∨ v19 ∨ v32 ∨ v25 ∨ v27)
    (c460 : ¬v27 ∨ v34 ∨ v20 ∨ v35 ∨ v21 ∨ v19 ∨ v28 ∨ v26)
    (c466 : v19 ∨ v10 ∨ v17 ∨ v4 ∨ v18 ∨ v5 ∨ v12 ∨ ¬v11)
    (c474 : ¬v44 ∨ v36 ∨ v2 ∨ v38 ∨ v43 ∨ v37 ∨ v3 ∨ v45)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c548 : v19 ∨ ¬v4 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c610 : ¬v4 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c620 : v21 ∨ ¬v9 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c709 : v21 ∨ v4 ∨ ¬v10 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20)
    (c769 : v18 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c817 : ¬v20 ∨ v9 ∨ v10 ∨ v13 ∨ ¬v16 ∨ v19 ∨ v21 ∨ v23 ∨ v26 ∨ v28)
    (c839 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c869 : ¬v25 ∨ v17 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c870 : ¬v5 ∨ v12 ∨ v14 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c874 : ¬v7 ∨ v4 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c875 : v19 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c949 : v13 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c999 : v32 ∨ v38 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1089 : v47 ∨ v20 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1150 : ¬v26 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1165 : ¬v17 ∨ ¬v16 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49)
    (c1166 : v47 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c1169 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1175 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1176 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1182 : v18 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1183 : ¬v19 ∨ ¬v16 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1191 : v15 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1195 : v38 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1196 : v26 ∨ ¬v16 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1198 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24) ∧ (v17 ∨ v7 ∨ v8 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49) ∧ (v25 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ ¬v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v48) ∧ (¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v39 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31) ∧ (v4 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41) ∧ (¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23) ∧ (v6 ∨ v13 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24) ∧ (v18 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28) ∧ (v34 ∨ v7 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v43 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v12 ∨ ¬v16 ∨ ¬v20 ∨ v23) ∧ (v43 ∨ ¬v16 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28) ∧ (v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33) ∧ (v10 ∨ v11 ∨ v13 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v33 ∨ ¬v35 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v23 ∨ ¬v16 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v17 ∨ ¬v16 ∨ v20 ∨ v28 ∨ v31 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v31 ∨ ¬v16 ∨ v17 ∨ ¬v19 ∨ v20 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ v3 ∨ v10 ∨ ¬v16 ∨ v17 ∨ v28 ∨ v31 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1199 : v48 ∨ ¬v16 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n0
      · exact absurd a n22
    have u2 : v15 := by
      rcases c1198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
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
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n0
      · exact absurd a n22
    have u3 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n0
      · exact absurd a n22
    have u5 : ¬v10 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n0
      · exact absurd a n22
    have u6 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n20
      · exact absurd a n15
      · exact absurd a n7
      · exact absurd a n11
    have u7 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v5 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd u6 a
    rcases c870 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n16
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n0
    · exact absurd a n22
  have c1200 : ¬v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v19 := by
      rcases c1199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd n0 a
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
    have u3 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u5 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u6
  have c1201 : v32 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v38 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v30 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n10
    have u8 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v22 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a u10
    have u12 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v17 := by
      rcases c1200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
    have u19 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n14
    have u20 : v13 := by
      rcases c769 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u21 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c54 with a|a
    · exact absurd u21 a
    · exact absurd u20 a
  have c1202 : v18 ∨ v15 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v41 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n9
      · exact absurd a n8
    have u4 : ¬v27 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
    have u5 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
    have u7 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v5 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
    rcases c877 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd u6 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n15
    · exact absurd a n16
  have c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u1
  have c1204 : v17 ∨ v7 ∨ v8 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v14 := by
      rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n7 a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u3
  have c1205 : v25 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ ¬v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n7 a
      · exact a
    rcases c336 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n12
  have c1206 : v25 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v34 ∨ ¬v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n6 a
      · exact a
    rcases c1205 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1207 : v24 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v21 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact a
    have u2 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v32 := by
      rcases c1201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
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
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n11
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n12
    have u6 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : ¬v27 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n5
    have u13 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u14 : v8 := by
      rcases c1204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n16
      · exact absurd a n17
    have u15 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v22 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u15
    have u19 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n13
      · exact a
      · exact absurd a n10
    have u20 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u18 a
      · exact a
    rcases c1206 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd u19 a
    · exact absurd a n12
    · exact absurd a u13
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n16
  have c1208 : v20 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v32 := by
      rcases c1201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
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
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v17 := by
      rcases c1202 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v19 := by
      rcases c1207 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n0
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
    have u10 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v22 := by
      rcases c1183 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v27 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u10
    have u13 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n4
    have u14 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n4
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd u9 a
    · exact absurd a u14
    · exact absurd a u8
  have c1209 : v28 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v32 := by
      rcases c1201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
    have u2 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v18 := by
      rcases c1208 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
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
    have u6 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v22 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u7
      · exact a
    have u11 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n8
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n9
    have u12 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : v42 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n14
    have u16 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n10
      · exact a
      · exact absurd a n7
    rcases c157 with a|a
    · exact absurd u15 a
    · exact absurd u17 a
  have c1210 : v12 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n10
    have u2 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v14 := by
      rcases c870 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v41 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n9
      · exact absurd a n8
    have u5 : ¬v27 := by
      rcases c460 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n5
    have u6 : v44 := by
      rcases c1089 with a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v4 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
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
      · exact absurd a n16
    have u11 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v6 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n15
    have u13 : v1 := by
      rcases c433 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n15
      · exact absurd a n16
    rcases c12 with a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u1 a
  have c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n0 a
      · exact a
    rcases c346 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
  have c1212 : v28 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v32 := by
      rcases c1201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
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
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v15 := by
      rcases c1209 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
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
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v27 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u7
    have u12 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v12 := by
      rcases c1210 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v5 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
    have u19 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u12
    rcases c877 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd u19 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n12
    · exact absurd a n13
  have c1213 : ¬v39 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    rcases c999 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1214 : v40 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v30 ∨ v33 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v39 := by
      rcases c1213 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u2
    rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1215 : v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v32 := by
      rcases c429 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
    have u2 : v35 := by
      rcases c312 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n12
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n3
    rcases c139 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1216 : v4 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v39 := by
      rcases c1213 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
  have c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    rcases c295 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
  have c1218 : v41 ∨ v11 ∨ v13 ∨ ¬v16 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v34 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u2 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n17
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u1
    have u3 : ¬v4 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u6 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n17
      · exact absurd a n18
    have u11 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a n16
      · exact absurd a n18
    have u12 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
    have u13 : v12 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c742 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1219 : v21 ∨ ¬v12 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v24 := by
      rcases c1212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n2 a
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
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v30 := by
      rcases c1214 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u6
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v17 := by
      rcases c1215 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n9
    have u11 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u10 a
    have u12 : v41 := by
      rcases c1218 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v32 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n11
    rcases c1191 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u15
    · exact absurd a n10
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
  have c1221 : v20 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v24 := by
      rcases c1212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v21 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u3
    have u10 : v17 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u5
    have u11 : ¬v18 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a n4
    have u12 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n3 a
      · exact absurd u10 a
      · exact a
    rcases c1219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd n3 a
    · exact absurd a u11
    · exact absurd a u12
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
    · exact absurd a n14
  have c1222 : v46 ∨ ¬v12 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v15 := by
      rcases c1221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    rcases c1219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1223 : v6 ∨ v13 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v41 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
    rcases c1176 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1224 : ¬v34 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c131 with a|a
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
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n4 a
      · exact a
    rcases c429 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n3
  have c1225 : v18 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v27 := by
      rcases c260 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n10
    have u4 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a u7
    have u9 : ¬v4 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v1 := by
      rcases c433 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c949 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1226 : v18 ∨ ¬v15 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u4 : v24 := by
      rcases c1212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v12 := by
      rcases c1222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v34 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd u4 a
    have u8 : v35 := by
      rcases c1225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u8 a
    rcases c429 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n4
  have c1227 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v21 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact a
    have u3 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n1
      · exact a
    have u4 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n9
    have u5 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u3 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u5
  have c1228 : v34 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v35 := by
      rcases c1225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n11
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v42 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
      · exact a
    have u7 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v2 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u9
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n12
    have u13 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u12 a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v4 := by
      rcases c19 with a|a|a
      · exact absurd u12 a
      · exact absurd u3 a
      · exact a
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1229 : v28 ∨ ¬v16 ∨ v18 ∨ v20 ∨ v23 ∨ v26 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c1222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v24 := by
      rcases c1212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
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
    have u3 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v19 := by
      rcases c1001 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u6 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v15 := by
      rcases c1226 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
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
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v17 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n0
    have u9 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u10 : v34 := by
      rcases c1228 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v42 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n13
    rcases c1165 with a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u13 a
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1230 : v15 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ ¬v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v42 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n14
    have u5 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    rcases c263 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n13
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n14
  have c1231 : v34 ∨ v7 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v42 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n14
    have u2 : v41 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    rcases c1176 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1232 : v28 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v26 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v18 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v12 := by
      rcases c1222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v24 := by
      rcases c1212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
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
    have u11 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n3
    have u15 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n3
    have u16 : v10 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u15
      · exact a
    have u17 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v34 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : v6 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u21 : v35 := by
      rcases c1231 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v1 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u20 a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u23 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v42 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd u21 a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a n0
      · exact a
    have u25 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u12
    rcases c148 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c1233 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v21 ∨ v23 ∨ v26 ∨ v31 ∨ v33 ∨ v34 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : v20 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
    have u4 : ¬v39 := by
      rcases c1213 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
    have u6 : ¬v24 := by
      rcases c429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n6
    have u7 : ¬v38 := by
      rcases c1206 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u8 : v22 := by
      rcases c1169 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a u6
    have u10 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n12
    have u13 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u11
    have u14 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u15 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u13 a
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n14
    · exact absurd a u7
    · exact absurd a n8
  have c1234 : ¬v20 ∨ v12 ∨ ¬v16 ∨ v23 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n9
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u4 a
    rcases c817 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1235 : ¬v12 ∨ ¬v16 ∨ ¬v20 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : v24 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
    have u7 : v22 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u1
      · exact a
      · exact absurd a u3
    rcases c101 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c1236 : v43 ∨ ¬v16 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c1235 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
    have u2 : v42 := by
      rcases c1234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v34 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v29 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n12
    rcases c126 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1237 : v33 ∨ ¬v16 ∨ v23 ∨ v26 ∨ v28 ∨ v31 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v20 := by
      rcases c1232 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
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
    have u4 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v18 := by
      rcases c78 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u9 : v35 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c1233 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd u9 a
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1238 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v12 := by
      rcases c1235 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n3
    have u6 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v14 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u1
      · exact a
    rcases c46 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v34 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u2 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    rcases c448 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n5
  have c1240 : v19 ∨ v15 ∨ ¬v16 ∨ v23 ∨ ¬v26 ∨ v28 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n5
    have u6 : v18 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n6
    have u7 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n3
    have u9 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u4
    have u10 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u4
    have u11 : v10 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u8
      · exact a
    rcases c42 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c1241 : v10 ∨ v11 ∨ v13 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v33 ∨ ¬v35 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : v6 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v4 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c579 with a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1242 : ¬v44 ∨ ¬v9 ∨ v13 ∨ v17 ∨ v20 ∨ v21 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v6 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a u5
    have u7 : v38 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u2 a
    have u9 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u2 a
    have u10 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u2 a
    have u11 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u7 a
      · exact a
    rcases c417 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n14
  have c1243 : v45 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v26 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
    have u8 : v19 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n6
    have u9 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u12 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u6
    have u13 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n3
    have u14 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n3
    have u15 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v35 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : v34 := by
      rcases c1242 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v42 := by
      rcases c1150 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u17
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v39 := by
      rcases c1213 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u23 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u20
    have u24 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u21
    have u25 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    rcases c231 with a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u26
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a u25
    · exact absurd a n8
    · exact absurd a u15
  have c1244 : v23 ∨ ¬v16 ∨ v28 ∨ v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v26 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
    have u7 : v15 := by
      rcases c1243 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    rcases c1239 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a n4
  have c1245 : v17 ∨ ¬v16 ∨ v20 ∨ v28 ∨ v31 ∨ v33 ∨ ¬v34 ∨ v35 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : v23 := by
      rcases c1244 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v39 := by
      rcases c1213 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v41 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact a
    have u13 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : v19 := by
      rcases c1182 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u21 : v12 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
    have u22 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
    have u23 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u22
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u9
    have u25 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u23
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a u15
    rcases c962 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd u25 a
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n10
  have c1247 : v31 ∨ ¬v16 ∨ v17 ∨ ¬v19 ∨ v20 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : v23 := by
      rcases c1244 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v34 := by
      rcases c1245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
    have u10 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n9
    have u15 : v6 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u15 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u18 : v32 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n10
      · exact a
      · exact absurd a n0
    have u20 : v39 := by
      rcases c321 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
    rcases c154 with a|a
    · exact absurd u19 a
    · exact absurd u20 a
  have c1248 : v22 ∨ v3 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v30 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v4 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v5 := by
      rcases c231 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n21
      · exact absurd a n1
      · exact absurd a n20
      · exact absurd a n2
    have u3 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u8 : v13 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u9 : v21 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a u7
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u10 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v15 := by
      rcases c279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd u8 a
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a u6
    rcases c62 with a|a|a
    · exact absurd n4 a
    · exact absurd u9 a
    · exact absurd u13 a
  have c1249 : v20 ∨ v3 ∨ v10 ∨ ¬v16 ∨ v17 ∨ v28 ∨ v31 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v34 := by
      rcases c1245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v23 := by
      rcases c1244 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v19 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
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
    have u4 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n3 a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n11
      · exact a
      · exact absurd a n6
    have u12 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c321 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u7
    have u15 : v30 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a n11
    have u16 : v11 := by
      rcases c1248 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u17 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v4 := by
      rcases c330 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a u17
    rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  exact ⟨c1203, c1204, c1206, c1211, c1213, c1215, c1216, c1217, c1220, c1223, c1224, c1225, c1227, c1231, c1235, c1236, c1238, c1239, c1241, c1244, c1245, c1247, c1249⟩
