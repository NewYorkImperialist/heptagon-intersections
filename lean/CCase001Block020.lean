import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1000-1049 of the 2915-step refutation of ccase001: 149 core clauses and 54 earlier-derived ones give 19 more. -/
theorem CCase001_block020
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c77 : v12 ∨ v13 ∨ v9 ∨ v10 ∨ v14 ∨ v8)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
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
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c146 : ¬v36 ∨ ¬v37)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c168 : ¬v44 ∨ ¬v43)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c210 : v4 ∨ v9 ∨ v17 ∨ v3 ∨ ¬v10 ∨ v18 ∨ v2 ∨ v11)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c216 : ¬v21 ∨ v28 ∨ v8 ∨ v14 ∨ v20 ∨ v27 ∨ v13 ∨ v15)
    (c227 : v12 ∨ ¬v19 ∨ v33 ∨ v39 ∨ v26 ∨ v24 ∨ v11 ∨ v27 ∨ v10 ∨ v18 ∨ v20 ∨ v41 ∨ v17 ∨ v40)
    (c231 : ¬v18 ∨ v25 ∨ v5 ∨ v20 ∨ v26 ∨ v10 ∨ v4 ∨ v19 ∨ v14 ∨ v11 ∨ v21 ∨ v3 ∨ v17 ∨ v28)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c262 : v22 ∨ ¬v21 ∨ v15 ∨ v27 ∨ v28 ∨ v14 ∨ v8 ∨ v20)
    (c266 : v29 ∨ ¬v28 ∨ v35 ∨ v34 ∨ v21 ∨ v27 ∨ v22 ∨ v20)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c300 : v24 ∨ ¬v17 ∨ v23 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c355 : ¬v31 ∨ v38 ∨ v2 ∨ v4 ∨ v30 ∨ v23 ∨ v24 ∨ v3 ∨ v22 ∨ v32 ∨ v36 ∨ v29 ∨ v39 ∨ v45)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c414 : v18 ∨ ¬v25 ∨ v47 ∨ v32 ∨ v45 ∨ v39 ∨ v23 ∨ v16 ∨ v30 ∨ v26 ∨ v24 ∨ v33 ∨ v46 ∨ v17)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c431 : v15 ∨ v12 ∨ v17 ∨ v1 ∨ v46 ∨ v4 ∨ v8 ∨ ¬v11 ∨ v9 ∨ v10 ∨ v18 ∨ v45 ∨ v5 ∨ v47)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c461 : ¬v19 ∨ v26 ∨ v13 ∨ v33 ∨ v39 ∨ v21 ∨ v20 ∨ v41 ∨ v18 ∨ v25 ∨ v28 ∨ v12 ∨ v40 ∨ v14)
    (c466 : ¬v10 ∨ v9 ∨ v17 ∨ v16 ∨ v2 ∨ v4 ∨ v11 ∨ v3)
    (c471 : v21 ∨ v41 ∨ v8 ∨ v40 ∨ v5 ∨ v14 ∨ v20 ∨ v12 ∨ v1 ∨ ¬v13 ∨ v6 ∨ v15 ∨ v42 ∨ v48)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c484 : v1 ∨ v10 ∨ v30 ∨ v4 ∨ v9 ∨ v8 ∨ v31 ∨ ¬v3 ∨ v2 ∨ v32 ∨ v38 ∨ v43 ∨ v45 ∨ v46)
    (c505 : v12 ∨ v9 ∨ v31 ∨ v16 ∨ v18 ∨ v32 ∨ v3 ∨ v25 ∨ v4 ∨ v2 ∨ v10 ∨ ¬v11 ∨ v33 ∨ v19)
    (c532 : v4 ∨ v9 ∨ v2 ∨ v10 ∨ v12 ∨ v5 ∨ v24 ∨ v23 ∨ v17 ∨ ¬v3 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c543 : v15 ∨ v9 ∨ v2 ∨ v24 ∨ v8 ∨ v3 ∨ v12 ∨ v19 ∨ v18 ∨ v17 ∨ v1 ∨ v23 ∨ ¬v16 ∨ v26)
    (c552 : ¬v48 ∨ v49 ∨ v5 ∨ v40 ∨ v42 ∨ v6 ∨ v47 ∨ v41)
    (c586 : v43 ∨ ¬v1 ∨ v49 ∨ v9 ∨ v2 ∨ v8 ∨ v7 ∨ v14)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c680 : ¬v19 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c805 : v5 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c898 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c950 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c968 : ¬v26 ∨ v3 ∨ v10 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45)
    (c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1272 : ¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1388 : ¬v1 ∨ ¬v3 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1457 : v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1505 : v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1517 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c1520 : v30 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v42)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1540 : ¬v24 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1551 : ¬v27 ∨ ¬v1 ∨ v10 ∨ v11 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46)
    (c1555 : v6 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1560 : ¬v15 ∨ v8 ∨ v14 ∨ v22 ∨ v23 ∨ v28)
    (c1567 : ¬v20 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1577 : ¬v26 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1583 : v49 ∨ ¬v4 ∨ v11 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1585 : v27 ∨ v11 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1587 : ¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c1589 : ¬v29 ∨ v1 ∨ v2 ∨ v7 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v38 ∨ v42 ∨ v43)
    (c1591 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1614 : v27 ∨ v4 ∨ v10 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1615 : ¬v1 ∨ v2 ∨ ¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v43 ∨ v49)
    (c1620 : ¬v10 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v16 ∨ v21 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    : (v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v1 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49) ∧ (v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11) ∧ (¬v22 ∨ v5 ∨ v11 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v18 ∨ v1 ∨ v8 ∨ v22 ∨ v36 ∨ v40 ∨ v42 ∨ v43) ∧ (¬v16 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v14) ∧ (¬v5 ∨ ¬v4 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ v18) ∧ (v18 ∨ ¬v1 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17) ∧ (¬v18 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14) ∧ (¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14) ∧ (¬v10 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v5 ∨ ¬v1 ∨ ¬v13 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v21 ∨ v4 ∨ v8 ∨ v11 ∨ v14 ∨ v22 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v4 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v3 ∨ v1 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v14 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v45) ∧ (¬v5 ∨ v1 ∨ ¬v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v22 ∨ v36 ∨ v38 ∨ v43 ∨ v45 ∨ v46) ∧ (¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22) ∧ (v22 ∨ v1 ∨ ¬v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v13 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47) := by
  have c1622 : ¬v10 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v21 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v1 := by
      rcases c1615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n12
      · exact absurd a n16
    have u3 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u5 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v3 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v16 := by
      rcases c1620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u8 a
    have u14 : v5 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n16
    have u17 : v23 := by
      rcases c543 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u2
      · exact a
      · exact absurd u8 a
      · exact absurd a u13
    have u18 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n16
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n11
  have c1623 : ¬v11 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v27 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u4 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v1 := by
      rcases c1615 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n11
      · exact absurd a n15
    have u6 : v21 := by
      rcases c1622 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
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
    have u7 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v28 := by
      rcases c216 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u7
    have u11 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a u3
    have u16 : v5 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v7 := by
      rcases c1589 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    rcases c35 with a|a|a
    · exact absurd u16 a
    · exact absurd n1 a
    · exact absurd u17 a
  have c1624 : v27 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : v11 := by
      rcases c1585 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v10 := by
      rcases c1623 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v4 := by
      rcases c1614 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd u13 a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u13 a
    have u16 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a u15
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n1
    have u17 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u14
    rcases c71 with a|a|a
    · exact absurd u17 a
    · exact absurd u16 a
    · exact absurd u11 a
  have c1625 : v49 ∨ ¬v6 ∨ v10 ∨ ¬v11 ∨ v13 ∨ ¬v14 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u2 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n3 a
    have u3 : v3 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n13
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n12
    · exact absurd a u4
  have c1626 : v13 ∨ v10 ∨ ¬v11 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c1624 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
    have u15 : ¬v14 := by
      rcases c1625 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v3 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u14
    have u18 : v9 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
    have u19 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n2 a
    have u23 : v1 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd u18 a
      · exact absurd a u20
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a n1
    have u24 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u18 a
      · exact absurd n2 a
      · exact a
    rcases c1457 with a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd u23 a
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1627 : ¬v11 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c1624 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
    have u14 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
    have u15 : v10 := by
      rcases c1626 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n0 a
    have u17 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n0 a
    have u18 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n0 a
    have u19 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u5
    have u20 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u9
    have u21 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u20 a
    have u22 : v19 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u22 a
      · exact a
    rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u8
    · exact absurd a u23
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u16
  have c1628 : v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v6 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v11 := by
      rcases c1627 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v27 := by
      rcases c1624 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u4
    have u20 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
    have u21 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
    have u23 : ¬v4 := by
      rcases c1583 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u24 : v10 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a n2
    have u25 : v34 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u22
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n2
    have u26 : v18 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n2
    have u27 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n2
    have u28 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u26 a
    have u32 : v12 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u26 a
      · exact absurd a u30
    have u33 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u24 a
    have u34 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u24 a
    have u35 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact a
      · exact absurd a u31
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd a u33
    have u36 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u34
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u5
    rcases c15 with a|a|a
    · exact absurd u35 a
    · exact absurd u1 a
    · exact absurd u36 a
  have c1629 : ¬v1 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v14 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v2 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
  have c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v18 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n5 a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
    have u2 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    rcases c466 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
  have c1631 : ¬v5 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v23 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u4 : v17 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u5 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u8 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a n4
    rcases c1589 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n14
  have c1632 : v22 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v14 ∨ v23 ∨ ¬v25 ∨ v36 ∨ v38 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v29 := by
      rcases c1589 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v15 := by
      rcases c1560 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u2
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n4
  have c1633 : v1 ∨ v2 ∨ v4 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ v22 ∨ v23 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v25 := by
      rcases c1632 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v18 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u3 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n4
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v24 := by
      rcases c1589 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    rcases c1079 with a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u7
  have c1634 : ¬v22 ∨ v5 ∨ v11 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v19 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c680 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c1635 : ¬v4 ∨ v5 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v3 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n0 a
    rcases c27 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n2 a
  have c1636 : v12 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v14 ∨ v23 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v5 := by
      rcases c1631 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u2 : ¬v22 := by
      rcases c1634 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v4 := by
      rcases c1635 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : v7 := by
      rcases c1633 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u5 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u6 : v17 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u7 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c1577 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n18
  have c1638 : ¬v18 ∨ v1 ∨ v8 ∨ v22 ∨ v36 ∨ v40 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n2
    have u7 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
    have u11 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact a
    rcases c898 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n6
  have c1639 : v23 ∨ v1 ∨ ¬v6 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v14 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v2 := by
      rcases c1636 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
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
    have u2 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : ¬v22 := by
      rcases c1634 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v26 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
    have u8 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v19 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n7
      · exact a
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u10 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u9 a
    rcases c805 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c1640 : ¬v6 ∨ ¬v10 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u12 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u13 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u15 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u16 : ¬v1 := by
      rcases c1629 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n6
    have u17 : v23 := by
      rcases c1639 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
    have u23 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
    have u24 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
    have u25 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u18
      · exact a
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u8
    have u26 : v4 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n3
    rcases c32 with a|a|a
    · exact absurd n0 a
    · exact absurd u25 a
    · exact absurd u26 a
  have c1641 : ¬v19 ∨ v1 ∨ v6 ∨ ¬v10 ∨ ¬v13 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u8 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u9 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u11 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u12 : v5 := by
      rcases c471 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n10
    have u13 : v4 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u12 a
      · exact a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u8
    have u14 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u15 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u12 a
      · exact absurd u13 a
      · exact a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd n3 a
  have c1642 : ¬v16 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    rcases c296 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
  have c1643 : ¬v5 ∨ ¬v4 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd n3 a
  have c1644 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v36 ∨ v40 ∨ v42 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
    have u2 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u6
    have u8 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c1520 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1645 : v21 ∨ v1 ∨ v6 ∨ v7 ∨ ¬v10 ∨ ¬v13 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u3 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u4 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u5 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u6 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd n5 a
      · exact absurd a u4
    have u7 : ¬v19 := by
      rcases c1641 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v20 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd n5 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n2
    have u9 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v22 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v5 := by
      rcases c1634 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : v4 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
    rcases c1643 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd u15 a
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u10
  have c1646 : v1 ∨ v6 ∨ ¬v10 ∨ ¬v13 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u5 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v7 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u1
    have u7 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a u1
    have u8 : v21 := by
      rcases c1645 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd n3 a
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
    have u9 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v5 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u9
    have u13 : ¬v4 := by
      rcases c1643 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u12 a
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a u2
  have c1647 : v18 ∨ ¬v1 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v2 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd n4 a
    have u2 : v4 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
    rcases c2 with a|a|a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1648 : ¬v18 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v7 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n2
    have u5 : v5 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd n4 a
    rcases c14 with a|a|a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1649 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v7 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n2
    have u5 : v5 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd n4 a
    rcases c14 with a|a|a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1650 : ¬v10 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u12 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u13 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u14 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u15 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v6 := by
      rcases c1640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v1 := by
      rcases c1646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n0 a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v3 := by
      rcases c1388 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n5
    have u19 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd u3 a
      · exact absurd a u13
    have u20 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd u3 a
      · exact absurd a u13
    have u21 : v16 := by
      rcases c1647 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a u15
      · exact a
      · exact absurd a u20
    have u22 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v7 := by
      rcases c1642 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd u3 a
      · exact absurd a u13
    have u26 : v5 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd u3 a
    rcases c14 with a|a|a
    · exact absurd u17 a
    · exact absurd u26 a
    · exact absurd u25 a
  have c1651 : ¬v1 ∨ ¬v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : v11 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n3
    have u5 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n4 a
    have u6 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n4 a
    have u7 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u4 a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u7
  have c1652 : v21 ∨ ¬v1 ∨ v6 ∨ v12 ∨ v17 ∨ v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v13 := by
      rcases c1555 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v10 := by
      rcases c1650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v5 := by
      rcases c1651 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v35 := by
      rcases c863 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v31 := by
      rcases c1517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
    have u19 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u18
    have u20 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact a
    have u23 : v9 := by
      rcases c532 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u21
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
    rcases c63 with a|a|a
    · exact absurd u23 a
    · exact absurd u1 a
    · exact absurd u24 a
  have c1653 : v4 ∨ v3 ∨ v5 ∨ v10 ∨ v11 ∨ v14 ∨ v17 ∨ v19 ∨ v21 ∨ ¬v24 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : v18 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u4 a
      · exact a
    rcases c231 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u2
  have c1654 : v11 ∨ ¬v1 ∨ v3 ∨ v5 ∨ v10 ∨ v14 ∨ v17 ∨ v19 ∨ v21 ∨ v22 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v4 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n16
      · exact a
    have u2 : ¬v27 := by
      rcases c1551 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v24 := by
      rcases c1653 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u4 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n6
      · exact absurd a u3
      · exact a
    have u5 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n17
    have u11 : v25 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n17
    have u12 : ¬v20 := by
      rcases c1567 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n17
    have u13 : ¬v28 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u12
    have u14 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n15
    have u16 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
    rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n12
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a u9
    · exact absurd a n13
    · exact absurd a n16
  have c1655 : ¬v1 ∨ v10 ∨ ¬v12 ∨ ¬v13 ∨ v17 ∨ v19 ∨ v21 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u5 : ¬v27 := by
      rcases c1551 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v3 := by
      rcases c1388 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n17
    have u8 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
    have u9 : v5 := by
      rcases c1654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u10 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd n0 a
    · exact absurd a n17
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u3
  have c1656 : v45 ∨ ¬v1 ∨ v17 ∨ v19 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c1650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v12 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u13 : v6 := by
      rcases c1652 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
    have u16 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u18
      · exact a
    rcases c1517 with a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u10
  have c1657 : ¬v11 ∨ ¬v1 ∨ ¬v3 ∨ ¬v13 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u4 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u5 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u5
  have c1658 : ¬v5 ∨ ¬v1 ∨ ¬v13 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : v12 := by
      rcases c1651 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u3
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
    rcases c586 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u6
  have c1659 : ¬v21 ∨ v4 ∨ v8 ∨ v11 ∨ v14 ∨ v22 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v28 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u2
    have u5 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c119 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1660 : v48 ∨ ¬v1 ∨ ¬v18 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n2 a
      · exact a
    rcases c1656 with a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
  have c1661 : ¬v4 ∨ ¬v1 ∨ v5 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v3 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd n0 a
    rcases c6 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c1662 : ¬v12 ∨ ¬v1 ∨ v5 ∨ v10 ∨ ¬v13 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u5 : ¬v4 := by
      rcases c1661 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v6 := by
      rcases c1629 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n15
    have u7 : ¬v48 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n9
    have u8 : ¬v18 := by
      rcases c1660 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v26 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
    have u10 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
    have u11 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
    have u18 : ¬v35 := by
      rcases c1529 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v21 := by
      rcases c1659 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
    have u20 : ¬v17 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u8
    have u21 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n10
    have u22 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u21 a
    have u23 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u20
      · exact absurd a u14
      · exact a
    have u24 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u23 a
      · exact a
    rcases c414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u10 a
    · exact absurd a n14
    · exact absurd a u25
    · exact absurd a n12
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a n13
    · exact absurd a u20
  have c1663 : v11 ∨ ¬v1 ∨ v5 ∨ v10 ∨ v12 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v4 := by
      rcases c1661 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v26 := by
      rcases c1577 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u3 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u4 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a u4
      · exact a
      · exact absurd a n8
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u5 a
    rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a u9
    · exact absurd a n8
  have c1664 : ¬v1 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v10 := by
      rcases c1650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v5 := by
      rcases c1658 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v18 := by
      rcases c1660 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u14 : ¬v12 := by
      rcases c1662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u15 : v11 := by
      rcases c1663 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u4 a
    have u17 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u4 a
    have u18 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u15 a
    have u19 : ¬v6 := by
      rcases c1629 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n5
    have u20 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd u4 a
      · exact absurd a u18
    have u21 : ¬v3 := by
      rcases c1657 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd n0 a
      · exact a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a n5
    have u22 : v4 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd u15 a
      · exact a
      · exact absurd a u13
    have u23 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact absurd u22 a
      · exact a
    have u24 : v20 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd u4 a
      · exact absurd a u18
      · exact a
    have u25 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u27 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u26 a
    rcases c1595 with a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u1
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n1
  have c1665 : v26 ∨ v1 ∨ v5 ∨ v8 ∨ v12 ∨ v22 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a u1
      · exact a
      · exact absurd a n8
    have u3 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n3
    have u9 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u11
    have u13 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact a
    rcases c898 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n10
  have c1666 : v3 ∨ v1 ∨ v5 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
    have u2 : v26 := by
      rcases c1665 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u2 a
    rcases c1595 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n14
  have c1667 : v5 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v3 := by
      rcases c1666 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
    have u2 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u5 : v20 := by
      rcases c950 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact a
    have u6 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v26 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a n3
    rcases c1589 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n14
    · exact absurd a n15
  have c1668 : ¬v4 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v10 := by
      rcases c1650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c1664 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v13 := by
      rcases c1628 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v37 := by
      rcases c1505 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : v5 := by
      rcases c1667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n0 a
    have u15 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n0 a
    have u16 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact a
    have u17 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
    have u18 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
    have u19 : ¬v15 := by
      rcases c1591 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u18
    have u20 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u19
      · exact a
      · exact absurd a u18
      · exact absurd a n1
    have u21 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a n5
    have u25 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u24 a
      · exact a
    rcases c296 with a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd u3 a
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u14
  have c1669 : v3 ∨ v1 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v14 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u2 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u3 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u4 : ¬v15 := by
      rcases c1591 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u1
    have u5 : v13 := by
      rcases c77 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n3
    have u6 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a n3
    have u8 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v26 := by
      rcases c968 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n15
    have u14 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n15
    have u15 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v2 := by
      rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u10
      · exact absurd a u16
    have u19 : v5 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a n0
      · exact a
      · exact absurd n6 a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u6
    have u20 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v7 := by
      rcases c24 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    rcases c296 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd u5 a
    · exact absurd a n7
    · exact absurd a u21
    · exact absurd a n8
    · exact absurd a u20
  have c1670 : ¬v5 ∨ v1 ∨ ¬v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v22 ∨ v36 ∨ v38 ∨ v43 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
    have u5 : ¬v15 := by
      rcases c1591 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n10
    have u6 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a n10
      · exact absurd a n4
    have u7 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    rcases c484 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    rcases c317 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n3
  have c1672 : v22 ∨ v1 ∨ ¬v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v13 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u2 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u3 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u4 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u5 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v15 := by
      rcases c1671 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
    have u7 : ¬v5 := by
      rcases c1670 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a u1
    have u9 : v17 := by
      rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n14
    have u10 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n9
    · exact absurd a n14
  exact ⟨c1628, c1629, c1630, c1634, c1638, c1642, c1643, c1647, c1648, c1649, c1650, c1658, c1659, c1664, c1668, c1669, c1670, c1671, c1672⟩
