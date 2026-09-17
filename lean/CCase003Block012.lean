import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 600-649 of the 2559-step refutation of ccase003: 119 core clauses and 49 earlier-derived ones give 12 more. -/
theorem CCase003_block012
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
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
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c103 : ¬v23 ∨ ¬v28 ∨ ¬v25)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c105 : ¬v28 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c119 : v22 ∨ v23 ∨ v28 ∨ v27 ∨ v25 ∨ v24)
    (c122 : v22 ∨ v27 ∨ v26 ∨ v24 ∨ v28 ∨ v25)
    (c123 : v23 ∨ v27 ∨ v24 ∨ v28 ∨ v25 ∨ v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c133 : ¬v34 ∨ ¬v30)
    (c137 : ¬v34 ∨ ¬v31)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c151 : ¬v42 ∨ ¬v36)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c163 : ¬v42 ∨ ¬v39)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c168 : ¬v45 ∨ ¬v43)
    (c188 : v43 ∨ v44 ∨ v49 ∨ v46 ∨ v45 ∨ v47 ∨ v48)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c251 : ¬v25 ∨ v18 ∨ v33 ∨ v26 ∨ v17 ∨ v19 ∨ v24 ∨ v32)
    (c266 : v36 ∨ v37 ∨ v35 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v23 ∨ v30)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c281 : ¬v42 ∨ v29 ∨ v33 ∨ v28 ∨ v35 ∨ v21 ∨ v36 ∨ v40 ∨ v49 ∨ v15 ∨ v41 ∨ v47 ∨ v48 ∨ v20)
    (c303 : ¬v34 ∨ v41 ∨ v27 ∨ v26 ∨ v35 ∨ v33 ∨ v40 ∨ v28)
    (c330 : ¬v42 ∨ v29 ∨ v7 ∨ v49 ∨ v30 ∨ v35 ∨ v13 ∨ v8 ∨ v14 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v36)
    (c359 : v43 ∨ ¬v42 ∨ v48 ∨ v35 ∨ v34 ∨ v36 ∨ v49 ∨ v41)
    (c362 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v14 ∨ v8 ∨ v16 ∨ v9)
    (c384 : v48 ∨ v19 ∨ v5 ∨ v4 ∨ v15 ∨ v20 ∨ v13 ∨ v8 ∨ v11 ∨ v1 ∨ ¬v12 ∨ v46 ∨ v47 ∨ v14)
    (c393 : v14 ∨ v20 ∨ v5 ∨ v19 ∨ v21 ∨ v6 ∨ v12 ∨ ¬v13)
    (c426 : ¬v42 ∨ v36 ∨ v35 ∨ v48 ∨ v41 ∨ v34 ∨ v29 ∨ v49)
    (c473 : ¬v34 ∨ v41 ∨ v27 ∨ v28 ∨ v33 ∨ v29 ∨ v48 ∨ v49 ∨ v47 ∨ v35 ∨ v40 ∨ v23 ∨ v30 ∨ v37)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c492 : v29 ∨ ¬v28 ∨ v27 ∨ v35 ∨ v15 ∨ v22 ∨ v21 ∨ v20)
    (c513 : ¬v19 ∨ v48 ∨ v5 ∨ v25 ∨ v24 ∨ v47 ∨ v12 ∨ v20 ∨ v26 ∨ v17 ∨ v18 ∨ v46 ∨ v13 ∨ v10)
    (c515 : v36 ∨ v37 ∨ v25 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v16 ∨ v15 ∨ v31 ∨ v39 ∨ v21 ∨ v22 ∨ v32)
    (c544 : ¬v34 ∨ v41 ∨ v28 ∨ v27 ∨ v12 ∨ v14 ∨ v32 ∨ v25 ∨ v20 ∨ v33 ∨ v35 ∨ v39 ∨ v40 ∨ v13)
    (c547 : v22 ∨ ¬v15 ∨ v21 ∨ v8 ∨ v16 ∨ v14 ∨ v23 ∨ v28)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c566 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c636 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c685 : v32 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c729 : v5 ∨ v4 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c795 : v18 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c840 : v20 ∨ v15 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35)
    (c841 : v31 ∨ v19 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c845 : ¬v19 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c861 : v44 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c897 : v25 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1053 : ¬v4 ∨ v3 ∨ v5 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1091 : v46 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1092 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1093 : ¬v26 ∨ ¬v2 ∨ ¬v10 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1107 : v27 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1114 : v10 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1118 : ¬v22 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1146 : v2 ∨ v4 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c1149 : ¬v7 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1152 : v11 ∨ v4 ∨ v10 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1154 : ¬v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1157 : ¬v28 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1161 : v49 ∨ v7 ∨ v19 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1162 : v46 ∨ v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1163 : v11 ∨ v4 ∨ v19 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1164 : v35 ∨ v4 ∨ v11 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v32 ∨ v33 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    : (¬v7 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v11 ∨ v4 ∨ ¬v7 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v33 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37) ∧ (v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v25 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32) ∧ (v28 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ ¬v22 ∨ v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35) ∧ (v26 ∨ v17 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32) := by
  have c1166 : ¬v27 ∨ v4 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v25 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v24 := by
      rcases c251 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u3
    rcases c108 with a|a|a
    · exact absurd u7 a
    · exact absurd n0 a
    · exact absurd u6 a
  have c1167 : v28 ∨ v4 ∨ v19 ∨ ¬v25 ∨ v26 ∨ ¬v27 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v34 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n6
    have u12 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u11 a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u14
  have c1168 : v4 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
    have u3 : ¬v7 := by
      rcases c1149 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c1162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n8 a
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1169 : v48 ∨ v4 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n10
    have u10 : ¬v11 := by
      rcases c1168 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u11 : v25 := by
      rcases c1164 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u12 : ¬v28 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
    rcases c1167 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u11 a
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
  have c1170 : ¬v7 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
  have c1171 : v11 ∨ v4 ∨ ¬v7 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v34 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n6
    have u2 : v12 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n13
    have u8 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u9 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u10 : v18 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
    have u11 : v15 := by
      rcases c384 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
    rcases c62 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c1172 : v11 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v25 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v23 := by
      rcases c103 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u3 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u4 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n4 a
    have u6 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u9 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u7
    have u10 : v7 := by
      rcases c1161 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u3
    have u14 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u13
    have u15 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n9
      · exact a
      · exact absurd a n7
    rcases c17 with a|a|a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd u10 a
  have c1173 : v47 ∨ v4 ∨ v19 ∨ v26 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v27 := by
      rcases c1169 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
    have u10 : v7 := by
      rcases c1161 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u11 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
    have u12 : ¬v11 := by
      rcases c1168 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v12 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u14 : v28 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u15 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : v34 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v25 := by
      rcases c1172 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact a
      · exact absurd u14 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u24 : v20 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n2
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c1068 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
  have c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n1 a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
  have c1175 : v29 ∨ ¬v19 ∨ ¬v25 ∨ v35 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
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
    have u10 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u11 : v28 := by
      rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
    have u14 : ¬v26 := by
      rcases c114 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n2 a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd n2 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u4
  have c1176 : v46 ∨ v4 ∨ v11 ∨ v26 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v19 := by
      rcases c1173 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v25 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u6
    have u14 : v29 := by
      rcases c1175 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v24 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
    have u19 : ¬v28 := by
      rcases c685 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u18 a
    have u21 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u18 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd u14 a
    · exact absurd a u21
    · exact absurd a u16
  have c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n3 a
      · exact a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a u1
  have c1178 : v35 ∨ v4 ∨ v11 ∨ ¬v19 ∨ ¬v26 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v25 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
    have u7 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u6 a
    have u8 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u6 a
    have u9 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n4 a
      · exact absurd u6 a
      · exact a
    have u10 : v29 := by
      rcases c1175 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd u10 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u3
  have c1179 : ¬v26 ∨ v19 ∨ ¬v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v22 := by
      rcases c1118 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
    have u7 : ¬v28 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v23 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u9
    have u11 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u10 a
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd n0 a
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u2
  have c1180 : v28 ∨ v4 ∨ v11 ∨ v25 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u2
    have u8 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u7 a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u8
  have c1181 : v29 ∨ v4 ∨ v11 ∨ ¬v26 ∨ v28 ∨ v35 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u7 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v25 := by
      rcases c1180 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u10 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n3 a
      · exact absurd u8 a
      · exact a
    rcases c473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u2
  have c1182 : v4 ∨ v11 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v26 := by
      rcases c1176 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd u10 a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v29 := by
      rcases c1179 with a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u7
      · exact a
      · exact absurd a u12
      · exact absurd a n7
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v28 := by
      rcases c1181 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u10 a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u10 a
    have u18 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u16 a
      · exact absurd u10 a
      · exact a
    have u19 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u10 a
    have u20 : ¬v23 := by
      rcases c105 with a|a|a
      · exact absurd u16 a
      · exact absurd u10 a
      · exact a
    have u21 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u10 a
    have u22 : ¬v20 := by
      rcases c841 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u11
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd u10 a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u18
      · exact a
      · exact absurd a u9
      · exact absurd a u6
    have u24 : v15 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd u10 a
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
    rcases c62 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c1183 : v25 ∨ v4 ∨ ¬v26 ∨ ¬v28 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v23 := by
      rcases c105 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u5 : v11 := by
      rcases c1182 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u7
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
    have u15 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v18 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v15 := by
      rcases c840 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
    rcases c62 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c1184 : v4 ∨ v25 ∨ ¬v28 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c1182 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a n9
    have u16 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v7 := by
      rcases c330 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u9
    have u19 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v26 := by
      rcases c1183 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u21 : v19 := by
      rcases c1173 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v27 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u20
      · exact a
    have u25 : v24 := by
      rcases c513 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
    rcases c112 with a|a|a
    · exact absurd u25 a
    · exact absurd n2 a
    · exact absurd u24 a
  have c1185 : v29 ∨ v4 ∨ ¬v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v11 := by
      rcases c1182 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v7 := by
      rcases c330 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u8
    have u16 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v19 := by
      rcases c1175 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v26 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
    have u19 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd u18 a
      · exact absurd n2 a
      · exact a
    have u20 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n2 a
    have u21 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n2 a
    rcases c473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u10
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u9
  have c1186 : v4 ∨ ¬v26 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v11 := by
      rcases c1182 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v25 := by
      rcases c1185 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u13
      · exact a
      · exact absurd a n2
      · exact absurd a n8
    have u18 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v28 := by
      rcases c1184 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v27 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a u19
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
    have u21 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n1 a
    have u22 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n1 a
    have u23 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u20 a
      · exact absurd n1 a
      · exact a
    have u24 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u19
    have u25 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u2
    have u26 : ¬v16 := by
      rcases c636 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
    have u27 : ¬v15 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u24
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u26
      · exact absurd a u6
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u24
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u18
  have c1187 : v47 ∨ v4 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v11 := by
      rcases c1182 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v26 := by
      rcases c1186 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v19 := by
      rcases c1173 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v28 := by
      rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u19
    have u22 : ¬v25 := by
      rcases c1185 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v27 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n5
    have u24 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    have u25 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    have u26 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    rcases c845 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u13
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
  have c1188 : v28 ∨ v4 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v33 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v45 := by
      rcases c168 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v19 := by
      rcases c1173 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v29 := by
      rcases c1187 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v27 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u5 a
      · exact a
    rcases c648 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n4
    · exact absurd u8 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a u3
  have c1189 : v48 ∨ v4 ∨ v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v29 := by
      rcases c1187 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u4 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u15 : v43 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u13
    have u16 : ¬v28 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u17 : v11 := by
      rcases c1182 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u18 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v26 := by
      rcases c1188 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u21 : v19 := by
      rcases c1179 with a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u22 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u21 a
    have u27 : v22 := by
      rcases c515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u26
      · exact a
      · exact absurd a u5
    have u28 : ¬v24 := by
      rcases c771 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd u20 a
      · exact absurd a u6
      · exact absurd a u4
    have u29 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd u20 a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v27 := by
      rcases c94 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u20 a
    have u31 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u10
      · exact absurd a u28
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u24
    have u32 : v2 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u29
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u33 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u30
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u7
    rcases c16 with a|a|a
    · exact absurd u32 a
    · exact absurd u31 a
    · exact absurd u33 a
  have c1190 : ¬v26 ∨ ¬v25 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1191 : v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v25 := by
      rcases c1189 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u8 : v29 := by
      rcases c1187 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v26 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : v19 := by
      rcases c1173 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v24 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u7 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u15 a
    have u17 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u15 a
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd u8 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c1192 : ¬v24 ∨ ¬v25 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c1177 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1193 : v38 ∨ ¬v4 ∨ ¬v25 ∨ v26 ∨ v28 ∨ ¬v29 ∨ v32 ∨ v33 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v24 := by
      rcases c1192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v27 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
    have u11 : ¬v3 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u12 : v13 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a u6
    rcases c51 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c1194 : v35 ∨ ¬v4 ∨ ¬v25 ∨ v26 ∨ v28 ∨ ¬v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v29 := by
      rcases c1193 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a n9
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v27 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u12 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
    have u13 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u13 a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u16
  have c1195 : ¬v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v28 := by
      rcases c1194 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u8 : v34 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u10 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u13 a
    rcases c492 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u6 a
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u16
  have c1196 : ¬v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v26 := by
      rcases c1195 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u11 : ¬v27 := by
      rcases c113 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u12 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u13 : ¬v29 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u5
      · exact a
      · exact absurd a u13
      · exact absurd a n6
    have u15 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u14 a
      · exact a
    rcases c473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u4
  have c1197 : ¬v26 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n9
    have u7 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v23 := by
      rcases c473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a u2
    have u10 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u12 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
    have u13 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
    have u14 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u12 a
      · exact a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u15
  have c1198 : v23 ∨ v15 ∨ v20 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n12
    have u13 : v21 := by
      rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n2
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v10 := by
      rcases c859 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a n5
    rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n9
  have c1199 : v24 ∨ v20 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n11
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v15 := by
      rcases c1198 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v10 := by
      rcases c1114 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u14 a
      · exact a
    rcases c547 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u9 a
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a n4
  have c1200 : v44 ∨ ¬v26 ∨ v28 ∨ v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n8
    have u12 : v27 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u17 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u18 : v20 := by
      rcases c1199 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : v10 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v2 := by
      rcases c1093 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u24 a
      · exact absurd a u17
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u21
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd a u13
  have c1201 : ¬v24 ∨ v16 ∨ v17 ∨ v25 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v23 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n2
    rcases c99 with a|a|a
    · exact absurd n4 a
    · exact absurd n0 a
    · exact absurd u1 a
  have c1202 : v48 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c1200 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u3 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u4 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u5 : v22 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
    have u6 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u7 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n9
    have u12 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n9
    have u13 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n9
    have u14 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u4
    have u17 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v10 := by
      rcases c1114 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u21 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
    have u24 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n5
      · exact a
      · exact absurd a u14
    rcases c18 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u2 a
  have c1203 : v28 ∨ v24 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c1200 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n8
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v27 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u5
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
    have u12 : v23 := by
      rcases c1202 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u13 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u10
    have u15 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
    have u16 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u15 a
      · exact a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u17
  have c1204 : v28 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v24 := by
      rcases c1203 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v26 := by
      rcases c1200 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v34 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n7
    have u12 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v27 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    have u15 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd u14 a
      · exact absurd u1 a
      · exact a
    have u16 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
    have u17 : v17 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
    have u18 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u17 a
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u20
  have c1205 : v44 ∨ v23 ∨ ¬v24 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v29 := by
      rcases c1204 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v22 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u16 : ¬v26 := by
      rcases c88 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n2 a
    have u17 : ¬v27 := by
      rcases c89 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n2 a
    have u18 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact a
    have u19 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v7 := by
      rcases c1161 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u24 : v13 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd u1 a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u1 a
    have u26 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u1 a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u24 a
    rcases c393 with a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd u24 a
  have c1206 : v47 ∨ ¬v24 ∨ v28 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v23 := by
      rcases c1205 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
    have u12 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
    have u13 : ¬v34 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
    have u14 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v7 := by
      rcases c1161 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u16 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u1 a
    have u17 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u1 a
    have u18 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
    have u19 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    rcases c53 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c1207 : v28 ∨ v22 ∨ ¬v23 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v24 := by
      rcases c1206 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v29 := by
      rcases c1203 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v26 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u2
    have u6 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u13 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
    have u17 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u12 a
    rcases c515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a u9
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u8
  have c1208 : v45 ∨ ¬v23 ∨ v27 ∨ v28 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c1206 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v29 := by
      rcases c1203 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v22 := by
      rcases c1207 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u15 : ¬v19 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v7 := by
      rcases c1161 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u2 a
    have u18 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u2 a
    have u19 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u12
    have u20 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u2 a
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    rcases c53 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c1209 : v28 ∨ ¬v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c1206 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v29 := by
      rcases c1203 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : v27 := by
      rcases c1208 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n1 a
    have u16 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n1 a
    have u17 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u6
    have u18 : v20 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a u16
    have u19 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u18 a
    rcases c515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u7
  have c1210 : v49 ∨ ¬v27 ∨ v28 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c1206 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v23 := by
      rcases c1209 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u6 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n0
    have u11 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n0
    have u12 : v29 := by
      rcases c1203 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u13 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v22 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
    have u17 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact a
    have u18 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u5
    have u19 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u17
    have u20 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v10 := by
      rcases c1114 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u23 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u17
      · exact a
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
    have u26 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a n3
      · exact a
      · exact absurd a u14
    rcases c18 with a|a|a
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd u3 a
  have c1211 : v28 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v32 := by
      rcases c1165 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v24 := by
      rcases c1206 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v23 := by
      rcases c1209 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v27 := by
      rcases c1210 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v22 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u11
    have u15 : v26 := by
      rcases c123 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u2
      · exact a
    have u16 : v29 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a n3
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
    have u20 : v19 := by
      rcases c1118 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u19
    have u21 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v13 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd u1 a
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1212 : v44 ∨ ¬v19 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v28 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v34 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u15
    have u18 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u2
    rcases c14 with a|a|a
    · exact absurd u17 a
    · exact absurd u18 a
    · exact absurd u3 a
  have c1213 : v27 ∨ ¬v22 ∨ v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v4 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v28 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v35 := by
      rcases c1154 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v25 := by
      rcases c1196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v42 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v26 := by
      rcases c95 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1174 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v34 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v19 := by
      rcases c1212 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v7 := by
      rcases c1161 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u1 a
    have u15 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u1 a
    rcases c1053 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1214 : ¬v17 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    rcases c492 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
  have c1215 : v26 ∨ v17 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v16 := by
      rcases c897 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v24 := by
      rcases c117 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n4
    rcases c827 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd u2 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  exact ⟨c1170, c1171, c1174, c1177, c1191, c1196, c1197, c1201, c1211, c1213, c1214, c1215⟩
