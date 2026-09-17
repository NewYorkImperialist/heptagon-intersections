import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 650-699 of the 2189-step refutation of ccase000: 127 core clauses and 60 earlier-derived ones give 16 more. -/
theorem CCase000_block013
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
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c75 : ¬v21 ∨ ¬v17)
    (c77 : ¬v18 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
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
    (c103 : v22 ∨ v28 ∨ v23 ∨ v25 ∨ v27 ∨ v26 ∨ v24)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c148 : ¬v44 ∨ ¬v43)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c215 : v3 ∨ ¬v4 ∨ v45 ∨ v5 ∨ v11 ∨ v10 ∨ v46 ∨ v47)
    (c216 : v18 ∨ v8 ∨ v17 ∨ v3 ∨ v1 ∨ v15 ∨ v11 ∨ v9 ∨ ¬v10 ∨ v30 ∨ v24 ∨ v2 ∨ v31 ∨ v32)
    (c217 : v28 ∨ ¬v20 ∨ v27 ∨ v11 ∨ v21 ∨ v12 ∨ v19 ∨ v13 ∨ v18 ∨ v25 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c220 : ¬v28 ∨ v35 ∨ v20 ∨ v27 ∨ v22 ∨ v34 ∨ v21 ∨ v15)
    (c243 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v35 ∨ v49 ∨ v42)
    (c271 : ¬v20 ∨ v28 ∨ v14 ∨ v27 ∨ v21 ∨ v12 ∨ v19 ∨ v13)
    (c276 : v15 ∨ v7 ∨ v20 ∨ v6 ∨ v21 ∨ v8 ∨ ¬v14 ∨ v13)
    (c285 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v45 ∨ v30 ∨ v32 ∨ v46)
    (c298 : ¬v15 ∨ v22 ∨ v23 ∨ v8 ∨ v9 ∨ v16 ∨ v21 ∨ v28)
    (c312 : v36 ∨ ¬v35 ∨ v42 ∨ v41 ∨ v22 ∨ v34 ∨ v29 ∨ v28)
    (c319 : v36 ∨ ¬v29 ∨ v22 ∨ v28 ∨ v23 ∨ v35 ∨ v30 ∨ v42)
    (c334 : v36 ∨ v29 ∨ v28 ∨ v27 ∨ v41 ∨ v42 ∨ v34 ∨ ¬v35)
    (c353 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v49 ∨ v42 ∨ v33)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c396 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v47)
    (c417 : ¬v44 ∨ v36 ∨ v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ v45)
    (c424 : ¬v34 ∨ v42 ∨ v27 ∨ v35 ∨ v40 ∨ v41 ∨ v26 ∨ v33)
    (c431 : ¬v33 ∨ v25 ∨ v27 ∨ v26 ∨ v34 ∨ v32 ∨ v40 ∨ v41)
    (c449 : ¬v44 ∨ v43 ∨ v2 ∨ v1 ∨ v37 ∨ v36 ∨ v38 ∨ v45)
    (c452 : v33 ∨ ¬v26 ∨ v19 ∨ v20 ∨ v18 ∨ v27 ∨ v32 ∨ v25)
    (c459 : v3 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v5 ∨ v10 ∨ v11 ∨ v12)
    (c469 : ¬v44 ∨ v37 ∨ v30 ∨ v24 ∨ v2 ∨ v38 ∨ v7 ∨ v1 ∨ v23 ∨ v22 ∨ v42 ∨ v43 ∨ v45 ∨ v49)
    (c470 : ¬v26 ∨ v33 ∨ v27 ∨ v19 ∨ v32 ∨ v20 ∨ v13 ∨ v24 ∨ v23 ∨ v25 ∨ v30 ∨ v12 ∨ v11 ∨ v16)
    (c482 : ¬v44 ∨ v43 ∨ v3 ∨ v2 ∨ v36 ∨ v37 ∨ v38 ∨ v45)
    (c490 : ¬v34 ∨ v41 ∨ v33 ∨ v28 ∨ v35 ∨ v42 ∨ v40 ∨ v27)
    (c529 : v43 ∨ ¬v1 ∨ v9 ∨ v7 ∨ v2 ∨ v14 ∨ v49 ∨ v8)
    (c534 : v22 ∨ ¬v21 ∨ v27 ∨ v15 ∨ v28 ∨ v13 ∨ v20 ∨ v14)
    (c553 : v29 ∨ v28 ∨ v5 ∨ v7 ∨ v8 ∨ v19 ∨ v6 ∨ ¬v14 ∨ v13 ∨ v12 ∨ v15 ∨ v21 ∨ v34 ∨ v35)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c580 : v21 ∨ ¬v3 ∨ ¬v4 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c624 : ¬v11 ∨ v3 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c633 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c661 : v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c675 : v12 ∨ v1 ∨ v6 ∨ v7 ∨ v11 ∨ v14 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c838 : v32 ∨ v26 ∨ ¬v33 ∨ v39 ∨ v40 ∨ v41)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c841 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c876 : ¬v18 ∨ v7 ∨ v14 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c906 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c922 : v20 ∨ v18 ∨ v19 ∨ ¬v26 ∨ v27 ∨ v33 ∨ v34)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c979 : ¬v18 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1009 : ¬v18 ∨ v5 ∨ v12 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1046 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ v33 ∨ v40 ∨ v47)
    (c1050 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1079 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1105 : ¬v20 ∨ ¬v28 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1108 : v20 ∨ v18 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1111 : ¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v23 ∨ v27 ∨ v28)
    (c1117 : ¬v27 ∨ ¬v33 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1135 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1152 : ¬v2 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1154 : v26 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1155 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1158 : ¬v42 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1170 : ¬v21 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1171 : ¬v36 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v30 ∨ v31 ∨ v42 ∨ v43 ∨ v45 ∨ v49)
    (c1173 : ¬v36 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1202 : v11 ∨ ¬v4 ∨ v6 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1204 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1207 : v29 ∨ ¬v4 ∨ v12 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1208 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1209 : v36 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v43)
    (c1211 : v13 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v22 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1212 : ¬v7 ∨ ¬v4 ∨ v6 ∨ ¬v8 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28) ∧ (¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49) ∧ (¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28) ∧ (v22 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v36 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v41 ∨ v42) ∧ (v28 ∨ v1 ∨ v7 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v29 ∨ v42 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ ¬v4 ∨ ¬v7 ∨ v13 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v6 ∨ v11 ∨ v12 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48) ∧ (v12 ∨ v6 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v40 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v6 ∨ v13 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (v27 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ v4 ∨ v9 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48) := by
  have c1213 : v13 ∨ ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n2 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v10 := by
      rcases c1154 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c51 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c1214 : ¬v15 ∨ v8 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd n0 a
      · exact a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n6
  have c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1214 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1216 : v22 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v13 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v7 := by
      rcases c1211 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
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
    have u2 : v34 := by
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
    have u3 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n14
    have u9 : v27 := by
      rcases c490 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n8
      · exact a
    have u10 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v8 := by
      rcases c1212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v1 := by
      rcases c1213 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u15
    have u17 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n13
      · exact absurd a n14
    rcases c1215 with a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n5
  have c1217 : ¬v28 ∨ v33 ∨ ¬v34 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n2 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n1
  have c1218 : ¬v6 ∨ v2 ∨ ¬v4 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v36 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c19 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n0 a
    have u3 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n0 a
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a n10
    have u6 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n2 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1097 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd u6 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n10
  have c1219 : v28 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v22 ∨ v29 ∨ v33 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v34 := by
      rcases c1207 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n7
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
    have u3 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
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
      · exact absurd u4 a
      · exact a
    have u8 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n13
    have u9 : v27 := by
      rcases c490 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n7
      · exact a
    have u10 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v13 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
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
    have u12 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v7 := by
      rcases c1202 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : v1 := by
      rcases c1209 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u7
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u17 a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a n13
    · exact absurd a u12
  have c1220 : v29 ∨ ¬v4 ∨ v12 ∨ v33 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v34 := by
      rcases c1207 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u6 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n10
    have u10 : ¬v28 := by
      rcases c1217 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
    have u11 : v27 := by
      rcases c490 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n4
      · exact a
    have u12 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : v6 := by
      rcases c1219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v7 := by
      rcases c1218 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n10
    have u20 : v13 := by
      rcases c1211 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v1 := by
      rcases c1209 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u4
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u23 a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u1
    · exact absurd a u22
    · exact absurd a n10
    · exact absurd a u21
  have c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u1
  have c1222 : ¬v1 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v8 ∨ v12 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n18
    have u2 : ¬v18 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n18
    have u4 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n18
    have u5 : v14 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n18
    have u6 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v26 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n16
    have u9 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n7
    have u14 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
    have u15 : ¬v20 := by
      rcases c1111 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u16 : v19 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u8 a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u6
    have u17 : v21 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd u5 a
      · exact absurd a u1
    rcases c80 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c1223 : ¬v28 ∨ v5 ∨ v12 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    rcases c934 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    rcases c534 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
  have c1225 : v49 ∨ ¬v4 ∨ v12 ∨ v29 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v41 := by
      rcases c1220 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u9 : v34 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n4
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v3 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
    have u12 : v1 := by
      rcases c449 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u13 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v7 := by
      rcases c13 with a|a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd u12 a
      · exact absurd u11 a
      · exact a
      · exact absurd n1 a
    have u18 : ¬v5 := by
      rcases c11 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u19 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n0
    have u20 : ¬v28 := by
      rcases c1223 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u21 : v8 := by
      rcases c1222 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u22 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n0
    have u23 : ¬v18 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
    have u26 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u8
      · exact a
      · exact absurd a n0
    have u27 : v26 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u28 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u27 a
      · exact a
    have u32 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u27 a
      · exact a
    have u33 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u27 a
    rcases c470 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a n4
    · exact absurd a u32
    · exact absurd a u30
    · exact absurd a u14
    · exact absurd a u28
    · exact absurd a u19
    · exact absurd a u31
    · exact absurd a u33
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a u29
  have c1226 : v22 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v41 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
    rcases c1000 with a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1227 : ¬v7 ∨ ¬v4 ∨ v8 ∨ v11 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v6 := by
      rcases c1202 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    rcases c625 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1228 : v36 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v22 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
    have u2 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    rcases c334 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd n4 a
  have c1229 : v28 ∨ v1 ∨ v7 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v29 ∨ v42 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v35 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n13
    have u2 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c1000 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v36 := by
      rcases c1228 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a n8
    rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
  have c1230 : v45 ∨ ¬v4 ∨ v29 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v12 := by
      rcases c1225 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v7 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v1 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u6
    have u14 : v28 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u16
    have u19 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
    have u20 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u13
    have u21 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v30 := by
      rcases c1204 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u21
    rcases c469 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n8
  have c1231 : ¬v6 ∨ v5 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n4
    have u2 : v12 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n4
    rcases c59 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1232 : v45 ∨ ¬v4 ∨ v7 ∨ v13 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v28 := by
      rcases c103 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n8
    have u2 : v29 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a n12
    have u13 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n16
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u12
    have u14 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u10
    have u15 : v5 := by
      rcases c1231 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u16 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u17 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact absurd n1 a
    have u18 : ¬v36 := by
      rcases c1173 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd u4 a
      · exact absurd a n0
    have u19 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd a n0
    have u20 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v11 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a n0
    have u22 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a u20
      · exact absurd a n0
    have u23 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u27 : v21 := by
      rcases c220 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a u9
      · exact a
      · exact absurd a u26
    have u28 : v17 := by
      rcases c216 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u25
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd u22 a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    rcases c75 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c1233 : ¬v4 ∨ v7 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v29 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n0 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n10
    have u12 : v13 := by
      rcases c1232 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v1 := by
      rcases c1221 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n16
    have u19 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
    have u20 : v6 := by
      rcases c675 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u21 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u20 a
      · exact absurd n0 a
    have u22 : v38 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact a
      · exact absurd a n12
    have u23 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u22 a
      · exact a
    rcases c285 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u24
    · exact absurd a n12
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n13
  have c1234 : ¬v7 ∨ ¬v4 ∨ ¬v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v6 := by
      rcases c1202 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    have u8 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd u6 a
    rcases c459 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c1235 : v45 ∨ ¬v4 ∨ ¬v28 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v29 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n3
    have u17 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a u15
    have u18 : ¬v20 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v7 := by
      rcases c1233 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v13 := by
      rcases c1234 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u16
    have u22 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
    have u23 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact absurd u21 a
    have u24 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u25 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    rcases c55 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1236 : v27 ∨ ¬v4 ∨ ¬v7 ∨ v13 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
    have u2 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u3 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u1 a
    have u4 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
    have u5 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c55 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1237 : ¬v7 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v33 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : v26 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u10 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n12
    have u11 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd u9 a
    rcases c1173 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd n13 a
    · exact absurd a n14
  have c1238 : ¬v4 ∨ v1 ∨ ¬v7 ∨ v22 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c1234 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v28 := by
      rcases c1235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v29 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n4
    have u12 : v27 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
    have u16 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a u15
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u9
    have u17 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u3
    have u18 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v3 := by
      rcases c1173 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd u4 a
      · exact absurd a n6
    have u20 : ¬v6 := by
      rcases c580 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u19 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n10
    have u21 : ¬v5 := by
      rcases c32 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u22 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n4
    have u24 : v14 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n10
    rcases c59 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c1239 : v31 ∨ ¬v4 ∨ ¬v7 ∨ v13 ∨ ¬v22 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a u1
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
    · exact absurd a n14
  have c1240 : v6 ∨ v13 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
    have u2 : v24 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c94 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1241 : v33 ∨ ¬v4 ∨ ¬v7 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c1234 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v29 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v28 := by
      rcases c1235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v22 := by
      rcases c1239 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v1 := by
      rcases c1238 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u13 : ¬v6 := by
      rcases c19 with a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u14 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v18 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
    have u19 : v27 := by
      rcases c1240 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n0
    rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1242 : ¬v4 ∨ v2 ∨ v7 ∨ v26 ∨ ¬v27 ∨ v28 ∨ ¬v29 ∨ v33 ∨ v40 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n10 a
      · exact a
    have u10 : v36 := by
      rcases c841 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n9
    have u11 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u8
    have u12 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n13
    have u13 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u7
    have u16 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n13
    have u17 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a n11
    have u18 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n7
    have u21 : ¬v1 := by
      rcases c11 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u17 a
      · exact absurd n0 a
    rcases c469 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a u9
    · exact absurd a n11
    · exact absurd a n13
  have c1243 : v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n4
    have u2 : v12 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n4
    rcases c59 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1244 : v22 ∨ v3 ∨ v7 ∨ v28 ∨ ¬v29 ∨ v36 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v23 := by
      rcases c841 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
    have u7 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
    have u8 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
    rcases c906 with a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n8
  have c1245 : v33 ∨ v2 ∨ ¬v4 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v28 ∨ ¬v29 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v5 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n9 a
      · exact a
    have u7 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u8 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n13
    have u9 : ¬v36 := by
      rcases c1173 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd n9 a
      · exact absurd a n10
    have u10 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a n10
    have u11 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v22 := by
      rcases c1244 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
    have u13 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u12 a
      · exact a
    rcases c809 with a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a n10
  have c1246 : ¬v27 ∨ v2 ∨ ¬v4 ∨ v7 ∨ v13 ∨ v28 ∨ ¬v29 ∨ v33 ∨ v40 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1242 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd n10 a
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
  have c1247 : v33 ∨ ¬v4 ∨ v13 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v7 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v28 := by
      rcases c1235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v29 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v41 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u2
    have u11 : ¬v6 := by
      rcases c1245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v27 := by
      rcases c1246 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
    have u14 : v24 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c94 with a|a
    · exact absurd u13 a
    · exact absurd u14 a
  have c1248 : v48 ∨ ¬v4 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v7 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u5 : v13 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u6 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v28 := by
      rcases c1235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u10 : v29 := by
      rcases c1225 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u11 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v18 := by
      rcases c876 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n7
    have u14 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u12
      · exact a
      · exact absurd a n7
    have u15 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v27 := by
      rcases c616 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
    have u18 : ¬v26 := by
      rcases c922 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u11
    rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n7
  have c1249 : ¬v13 ∨ ¬v4 ∨ v27 ∨ v28 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v7 := by
      rcases c1234 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n9
    have u8 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v26 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v22 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    rcases c85 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c1250 : v19 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n5 a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n0 a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1252 : ¬v20 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 := by
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
    rcases c1250 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1253 : v6 ∨ v11 ∨ v12 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n8
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1252 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1254 : v45 ∨ ¬v4 ∨ v7 ∨ v28 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v33 := by
      rcases c1248 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n8
    have u12 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n8
    have u13 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n8
    have u14 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n8
    have u15 : ¬v41 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a u2
    have u16 : ¬v27 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v13 := by
      rcases c1249 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v6 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n7
    have u19 : v5 := by
      rcases c1243 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact absurd n1 a
    have u21 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
      · exact absurd n1 a
    have u22 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd a n0
    have u23 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v26 := by
      rcases c839 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u15
    have u26 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n8
    rcases c906 with a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a u29
    · exact absurd a u12
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u7
    · exact absurd a u24
    · exact absurd a n0
  have c1255 : ¬v6 ∨ v2 ∨ ¬v4 ∨ ¬v7 ∨ v28 ∨ ¬v33 ∨ v36 ∨ v40 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u3 : ¬v1 := by
      rcases c19 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n0 a
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n2 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v37 := by
      rcases c417 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n10
    have u9 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v26 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n5 a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u3
    rcases c1138 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a n4
  have c1256 : v12 ∨ v6 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v11 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n7
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u2 a
      · exact a
    rcases c271 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n2
  have c1257 : v45 ∨ ¬v4 ∨ v28 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v33 := by
      rcases c1248 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n7
    have u11 : ¬v41 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u2
    have u12 : ¬v27 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v7 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v13 := by
      rcases c1249 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v6 := by
      rcases c1255 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v12 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : v1 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd u13 a
      · exact absurd a u18
      · exact a
      · exact absurd a n7
    have u22 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u21 a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u23 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u21 a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    rcases c215 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a n5
  have c1258 : v40 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v33 := by
      rcases c1248 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u3 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v41 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u1
    have u7 : ¬v27 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v28 := by
      rcases c1257 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u8 a
      · exact a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u6
  have c1259 : ¬v28 ∨ v6 ∨ v13 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c175 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
  have c1260 : v27 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u3 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v9 := by
      rcases c1111 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
    rcases c614 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n12
  have c1261 : ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v40 := by
      rcases c1258 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v3 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u10
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
    have u12 : v1 := by
      rcases c449 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n1
    have u13 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v7 := by
      rcases c13 with a|a|a|a
      · exact absurd u12 a
      · exact absurd n0 a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v5 := by
      rcases c11 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u11 a
      · exact absurd n0 a
    have u19 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd u12 a
      · exact absurd u11 a
      · exact a
      · exact absurd n0 a
    have u20 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n5
    have u21 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n5
    have u22 : ¬v28 := by
      rcases c1259 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n5
    have u24 : v27 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n5
    have u26 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u27
    have u30 : ¬v19 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u31 : v20 := by
      rcases c1108 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd u24 a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u32 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u32
      · exact absurd a n5
    have u35 : v8 := by
      rcases c553 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a u30
      · exact absurd a u19
      · exact absurd u34 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u33
      · exact absurd a u32
      · exact absurd a u16
      · exact absurd a u15
    rcases c45 with a|a
    · exact absurd u35 a
    · exact absurd u34 a
  have c1262 : v11 ∨ v4 ∨ v9 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c979 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v32 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u1
      · exact a
      · exact absurd a u2
    rcases c119 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  exact ⟨c1215, c1221, c1224, c1226, c1228, c1229, c1236, c1243, c1251, c1253, c1256, c1258, c1259, c1260, c1261, c1262⟩
