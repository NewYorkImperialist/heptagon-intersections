import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1100-1149 of the 2189-step refutation of ccase000: 108 core clauses and 64 earlier-derived ones give 13 more. -/
theorem CCase000_block022
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
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
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c68 : ¬v16 ∨ ¬v18)
    (c71 : ¬v21 ∨ ¬v16)
    (c72 : ¬v17 ∨ ¬v18)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c120 : ¬v32 ∨ ¬v34)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c146 : ¬v41 ∨ ¬v42)
    (c149 : ¬v45 ∨ ¬v43)
    (c154 : ¬v45 ∨ ¬v44)
    (c160 : ¬v47 ∨ ¬v45)
    (c161 : ¬v48 ∨ ¬v45)
    (c162 : ¬v49 ∨ ¬v45)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c179 : v43 ∨ v36 ∨ v44 ∨ v28 ∨ v23 ∨ v24 ∨ v35 ∨ v29 ∨ v31 ∨ v17 ∨ v15 ∨ ¬v22 ∨ v16 ∨ v49)
    (c181 : v29 ∨ v34 ∨ v1 ∨ v35 ∨ v28 ∨ v16 ∨ v20 ∨ v7 ∨ v8 ∨ v2 ∨ v9 ∨ v21 ∨ ¬v14 ∨ v13)
    (c195 : ¬v31 ∨ v30 ∨ v16 ∨ v38 ∨ v39 ∨ v41 ∨ v24 ∨ v34 ∨ v23 ∨ v33 ∨ v27 ∨ v32 ∨ v17 ∨ v18)
    (c214 : ¬v45 ∨ v2 ∨ v42 ∨ v30 ∨ v7 ∨ v31 ∨ v3 ∨ v38 ∨ v39 ∨ v32 ∨ v43 ∨ v44 ∨ v46 ∨ v49)
    (c224 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v47 ∨ v40 ∨ v48)
    (c237 : v43 ∨ v14 ∨ v1 ∨ v48 ∨ v8 ∨ ¬v7 ∨ v6 ∨ v49)
    (c241 : v15 ∨ v7 ∨ v16 ∨ v2 ∨ v14 ∨ v9 ∨ v1 ∨ ¬v8)
    (c268 : v1 ∨ v6 ∨ v13 ∨ v20 ∨ v21 ∨ v8 ∨ v7 ∨ ¬v14)
    (c286 : ¬v34 ∨ v41 ∨ v27 ∨ v35 ∨ v40 ∨ v26 ∨ v28 ∨ v33)
    (c303 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v24 ∨ v17 ∨ v11 ∨ v19)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c374 : v36 ∨ ¬v30 ∨ v37 ∨ v9 ∨ v24 ∨ v28 ∨ v10 ∨ v29 ∨ v23 ∨ v16 ∨ v35 ∨ v31 ∨ v8 ∨ v42)
    (c405 : v43 ∨ ¬v37 ∨ v9 ∨ v44 ∨ v2 ∨ v30 ∨ v10 ∨ v32 ∨ v36 ∨ v38 ∨ v39 ∨ v31 ∨ v8 ∨ v46)
    (c426 : ¬v45 ∨ v36 ∨ v1 ∨ v23 ∨ v25 ∨ v31 ∨ v39 ∨ v24 ∨ v38 ∨ v2 ∨ v3 ∨ v43 ∨ v44 ∨ v46)
    (c446 : v11 ∨ v33 ∨ v31 ∨ v3 ∨ v39 ∨ v5 ∨ v32 ∨ v10 ∨ v44 ∨ ¬v4 ∨ v2 ∨ v9 ∨ v46 ∨ v47)
    (c448 : ¬v22 ∨ v29 ∨ v30 ∨ v23 ∨ v28 ∨ v35 ∨ v16 ∨ v15)
    (c472 : v12 ∨ v18 ∨ v4 ∨ v19 ∨ v17 ∨ v5 ∨ v10 ∨ ¬v11)
    (c486 : v3 ∨ ¬v4 ∨ v46 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v47)
    (c506 : v36 ∨ v29 ∨ v44 ∨ ¬v22 ∨ v34 ∨ v15 ∨ v23 ∨ v20 ∨ v28 ∨ v30 ∨ v21 ∨ v43 ∨ v27 ∨ v49)
    (c516 : v22 ∨ ¬v15 ∨ v44 ∨ v1 ∨ v16 ∨ v21 ∨ v9 ∨ v49 ∨ v8 ∨ v20 ∨ v28 ∨ v43 ∨ v13 ∨ v27)
    (c526 : v43 ∨ v8 ∨ v44 ∨ v3 ∨ v1 ∨ ¬v2 ∨ v10 ∨ v9)
    (c546 : v10 ∨ ¬v18 ∨ v25 ∨ v24 ∨ v19 ∨ v26 ∨ v11 ∨ v17)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c700 : ¬v7 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c738 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c771 : ¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c822 : ¬v19 ∨ v12 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c833 : ¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c848 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c928 : ¬v19 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c984 : ¬v9 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1101 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1118 : v28 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v27 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1126 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1135 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1170 : ¬v21 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1212 : ¬v7 ∨ ¬v4 ∨ v6 ∨ ¬v8 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1243 : v5 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1287 : ¬v22 ∨ v5 ∨ v12 ∨ v33 ∨ v40 ∨ v47)
    (c1299 : ¬v22 ∨ v5 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v47)
    (c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1337 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1397 : ¬v39 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v46 ∨ v47)
    (c1405 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1420 : ¬v10 ∨ v1 ∨ v22 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1431 : v2 ∨ v7 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c1434 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v12 ∨ ¬v22 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1464 : v47 ∨ ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v43 ∨ v48 ∨ v49)
    (c1468 : ¬v2 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1479 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1486 : v26 ∨ v24 ∨ ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1533 : v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v46 ∨ v47)
    (c1539 : ¬v33 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1596 : ¬v36 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v49)
    (c1609 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v46 ∨ v47)
    (c1634 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1651 : v22 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1652 : v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29)
    (c1654 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40)
    (c1655 : v13 ∨ v5 ∨ v6 ∨ v12 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1657 : ¬v12 ∨ v2 ∨ v4 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v32 ∨ v44 ∨ v46)
    (c1658 : ¬v39 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v47 ∨ v48 ∨ v49)
    (c1663 : v2 ∨ v4 ∨ ¬v5 ∨ v13 ∨ v23 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1664 : v11 ∨ v4 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    : (¬v37 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v46) ∧ (¬v18 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v29 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v13 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49) ∧ (v34 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v21 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9) ∧ (¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49) ∧ (v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49) := by
  have c1665 : v4 ∨ v2 ∨ v13 ∨ v23 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v39 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
    have u13 : ¬v5 := by
      rcases c1663 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v12 := by
      rcases c1657 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u15 : ¬v19 := by
      rcases c822 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v11 := by
      rcases c1664 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
    have u17 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u3
    have u22 : v15 := by
      rcases c1652 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
    have u23 : ¬v18 := by
      rcases c63 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u22 a
      · exact a
    rcases c472 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd u16 a
  have c1666 : v4 ∨ v2 ∨ v23 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v39 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v13 := by
      rcases c1665 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1376 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n4
  have c1667 : v11 ∨ v2 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v32 ∨ v39 ∨ v40 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n13
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v38 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u3 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a u4
    · exact absurd a n3
  have c1668 : v36 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ ¬v37 ∨ v39 ∨ v43 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n8 a
    rcases c405 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n8 a
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n12
  have c1669 : ¬v37 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1668 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1670 : v2 ∨ v4 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v29 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n3
    have u17 : v11 := by
      rcases c1667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n3
    have u18 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v37 := by
      rcases c1669 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
    rcases c1037 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u20
    · exact absurd a u8
  have c1671 : ¬v2 ∨ v4 ∨ v8 ∨ v10 ∨ v12 ∨ ¬v22 ∨ ¬v29 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v1 := by
      rcases c1434 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v5 := by
      rcases c1287 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n9
    have u10 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v3 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u5
    have u14 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u10 a
      · exact a
    rcases c1337 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd a u15
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1672 : v4 ∨ v9 ∨ ¬v11 ∨ v23 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u8
    have u16 : ¬v19 := by
      rcases c928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u17 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u12
    have u18 : v2 := by
      rcases c1670 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v29 := by
      rcases c1671 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd u6 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v15 := by
      rcases c1652 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u19
    have u21 : ¬v18 := by
      rcases c63 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v5 := by
      rcases c472 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u22
      · exact a
      · exact absurd a u5
      · exact absurd n2 a
    have u24 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u23 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v1 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u24 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c526 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd u18 a
    · exact absurd a u5
    · exact absurd a n1
  have c1673 : ¬v18 ∨ v11 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v12 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
    have u2 : v10 := by
      rcases c546 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
    rcases c52 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1674 : ¬v18 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1673 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1674 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1676 : v39 ∨ v4 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n3
    have u7 : ¬v11 := by
      rcases c1672 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a n0
    rcases c1675 with a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c1677 : ¬v39 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v31 := by
      rcases c1397 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : v29 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c105 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1678 : v18 ∨ ¬v10 ∨ v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
    have u4 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u6
    have u10 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n7
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u3 a
      · exact absurd u9 a
    have u14 : v32 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v24 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u14 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u18 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n15
    have u19 : v22 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n15
    rcases c83 with a|a
    · exact absurd u19 a
    · exact absurd u17 a
  have c1679 : v27 ∨ ¬v2 ∨ ¬v4 ∨ ¬v5 ∨ v11 ∨ v28 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c27 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v7 := by
      rcases c28 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    rcases c1118 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1680 : v8 ∨ v2 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v37 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n11
    rcases c1669 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1681 : v11 ∨ v9 ∨ v12 ∨ v23 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v5 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n11
    have u8 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
    have u17 : ¬v10 := by
      rcases c1678 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v2 := by
      rcases c1679 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : v8 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n10
    have u20 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
    have u22 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u4
    have u23 : ¬v7 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u24 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u22 a
      · exact absurd u6 a
    have u25 : v37 := by
      rcases c1431 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a n13
    have u26 : v38 := by
      rcases c214 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a u24
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a n13
    rcases c132 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c1682 : v31 ∨ v9 ∨ v11 ∨ v23 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u15 : ¬v10 := by
      rcases c1678 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v12 := by
      rcases c1681 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
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
    have u17 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u19 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u20 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u4
    have u21 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u18 a
      · exact absurd u20 a
    have u22 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u18 a
      · exact absurd u20 a
    have u23 : ¬v2 := by
      rcases c29 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u18 a
      · exact absurd u20 a
    rcases c446 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u1
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd u6 a
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n10
  have c1683 : v9 ∨ v23 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v11 := by
      rcases c1682 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
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
    have u11 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v19 := by
      rcases c928 with a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
    have u14 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
    have u15 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u16 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u4
    have u17 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n4
    rcases c35 with a|a|a|a
    · exact absurd u5 a
    · exact absurd u17 a
    · exact absurd u14 a
    · exact absurd u16 a
  have c1684 : ¬v29 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v9 := by
      rcases c1683 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v5 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n3
    have u23 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    have u24 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u10
    have u25 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n5
    rcases c35 with a|a|a|a
    · exact absurd u11 a
    · exact absurd u22 a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1685 : v35 ∨ ¬v4 ∨ ¬v5 ∨ v8 ∨ v13 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v40 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v42 := by
      rcases c1126 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n15
    have u4 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n16
    rcases c35 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1686 : ¬v9 ∨ ¬v4 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v5 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n11
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v34 := by
      rcases c1685 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd u9 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : v41 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u13 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n13
    have u15 : ¬v6 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v1 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd u14 a
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a n13
  have c1687 : v35 ∨ ¬v9 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v29 := by
      rcases c1684 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
    have u17 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
    have u18 : v33 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v6 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v40 := by
      rcases c1654 with a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact a
    have u24 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n6
    have u25 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n6
    have u26 : ¬v1 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u8 a
      · exact absurd u22 a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v2 := by
      rcases c29 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u25 a
      · exact absurd u22 a
    have u29 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u25 a
      · exact absurd u22 a
    rcases c426 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n3
  have c1688 : ¬v9 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v29 := by
      rcases c1684 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : v35 := by
      rcases c1687 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n3
    have u22 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
    have u23 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v42 := by
      rcases c1101 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u25 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u25 a
      · exact absurd u7 a
    have u28 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u25 a
      · exact absurd u7 a
    have u29 : ¬v2 := by
      rcases c27 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u25 a
      · exact absurd u21 a
    rcases c426 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u26
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n2
  have c1689 : v13 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c27 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v7 := by
      rcases c29 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    rcases c1243 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1690 : v34 ∨ ¬v6 ∨ v13 ∨ v23 ∨ v30 ∨ v31 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v9 := by
      rcases c1688 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v29 := by
      rcases c1684 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v2 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u14 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n9
    have u15 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
    have u16 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u11
      · exact a
      · exact absurd a n3
    have u17 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u16 a
    rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n9
  have c1691 : ¬v6 ∨ v23 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v9 := by
      rcases c1688 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v29 := by
      rcases c1684 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n9
    have u13 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
    have u14 : v13 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v2 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u11
    have u19 : v5 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n7
    rcases c27 with a|a|a|a
    · exact absurd u18 a
    · exact absurd u7 a
    · exact absurd n0 a
    · exact absurd u19 a
  have c1692 : ¬v35 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v9 := by
      rcases c1688 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
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
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n5
    have u19 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u16
    have u20 : ¬v6 := by
      rcases c1691 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : v13 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v2 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u16
    have u27 : v5 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n3
    have u28 : ¬v1 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd u26 a
      · exact absurd u14 a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a n3
    have u29 : v3 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u16
      · exact a
      · exact absurd a u28
      · exact absurd u26 a
      · exact absurd a u23
      · exact absurd a u6
    rcases c21 with a|a|a|a
    · exact absurd u14 a
    · exact absurd u26 a
    · exact absurd u29 a
    · exact absurd u27 a
  have c1693 : v14 ∨ ¬v4 ∨ v6 ∨ ¬v7 ∨ v8 ∨ v10 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v43 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n11
    rcases c149 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1694 : ¬v13 ∨ v6 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c53 with a|a
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
    have u6 : ¬v35 := by
      rcases c1692 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v29 := by
      rcases c1684 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v7 := by
      rcases c1693 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u14 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v21 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v42 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u16
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n6
    have u19 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u18 a
    rcases c1126 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a n5
    · exact absurd a n6
  have c1695 : v34 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v41 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n8
    have u2 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c224 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n8
  have c1696 : ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u2 : v14 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u3 : ¬v1 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd u2 a
  have c1697 : v21 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v20 ∨ v28 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v7 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v1 := by
      rcases c7 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v3 := by
      rcases c23 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n15
    rcases c526 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a u7
  have c1698 : ¬v2 ∨ ¬v4 ∨ v6 ∨ ¬v11 ∨ v13 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v5 := by
      rcases c1655 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact absurd n1 a
    have u10 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    rcases c526 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a u2
  have c1699 : v8 ∨ v6 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c1694 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v35 := by
      rcases c1692 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v9 := by
      rcases c1688 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v29 := by
      rcases c1684 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    have u17 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v41 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u17
    have u23 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u20
    have u26 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a n2
    have u27 : v15 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u25
      · exact a
    have u28 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v11 := by
      rcases c1698 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : v10 := by
      rcases c1697 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd u26 a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u29
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u31 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a n6
    have u33 : ¬v1 := by
      rcases c7 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u32 a
      · exact absurd u26 a
    rcases c237 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u31
    · exact absurd a u33
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd u32 a
    · exact absurd a n1
    · exact absurd a n6
  have c1700 : v6 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v35 := by
      rcases c1692 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v9 := by
      rcases c1688 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v29 := by
      rcases c1684 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v13 := by
      rcases c1694 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
    have u17 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v41 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u17
    have u23 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
    have u24 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v8 := by
      rcases c1699 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u11
    have u31 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a u9
      · exact absurd a u10
    have u32 : ¬v7 := by
      rcases c1212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd u25 a
      · exact absurd a u26
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u33 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u32
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u3
      · exact a
      · exact absurd a n5
    have u34 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u33 a
    have u35 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd u33 a
      · exact a
    rcases c179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u31
    · exact absurd a u34
    · exact absurd u2 a
    · exact absurd a u35
    · exact absurd a n5
  have c1701 : ¬v21 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n4 a
      · exact a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd n4 a
  have c1702 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1126 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1703 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c1701 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u1
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n7
  have c1704 : ¬v34 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v39 ∨ v43 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v37 := by
      rcases c1669 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a n5
  have c1705 : v21 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v16 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v15 := by
      rcases c1652 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
    have u4 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
    have u5 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u4 a
      · exact a
    rcases c181 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a u6
  have c1706 : v2 ∨ v1 ∨ v7 ∨ v9 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u4 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    have u5 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    have u6 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    have u7 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u1
    have u8 : ¬v34 := by
      rcases c1704 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v21 := by
      rcases c1705 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    have u10 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v31 := by
      rcases c179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a n13
    have u12 : v30 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u10
    rcases c110 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c1707 : v7 ∨ v1 ∨ ¬v4 ∨ ¬v6 ∨ v9 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u3 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u4 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n15
    have u5 : v2 := by
      rcases c1706 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u6 : ¬v5 := by
      rcases c27 with a|a|a|a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v3 := by
      rcases c22 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd n2 a
    · exact absurd a n13
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n14
  have c1708 : ¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : v30 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
    have u7 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u6 a
      · exact a
    rcases c179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n8
  have c1709 : ¬v31 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v22 ∨ v23 ∨ v39 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u7
    have u11 : v37 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n6
    have u12 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v15 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u10
      · exact a
    have u15 : ¬v18 := by
      rcases c63 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u14 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a u15
  have c1710 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ v9 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v36 ∨ v39 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u1
    have u5 : ¬v49 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n11 a
    have u6 : ¬v48 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n11 a
    have u7 : ¬v47 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n11 a
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd n11 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd n11 a
      · exact a
    have u10 : ¬v35 := by
      rcases c1692 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v31 := by
      rcases c1709 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u9
    have u13 : v38 := by
      rcases c426 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n12
    have u14 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v30 := by
      rcases c374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u11
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n7
  have c1711 : v31 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v10 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v36 ∨ v39 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v49 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v48 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v47 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n11 a
    have u4 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : ¬v35 := by
      rcases c1692 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u7 : v6 := by
      rcases c1700 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u8 : ¬v9 := by
      rcases c1688 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u9 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u10 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u11 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
    have u13 : v7 := by
      rcases c1707 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u1
    have u14 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u13 a
      · exact absurd u7 a
    have u15 : v38 := by
      rcases c426 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n12
    have u16 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1299 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u3
  have c1712 : ¬v10 ∨ v1 ∨ v2 ∨ v3 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v35 ∨ v36 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v49 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n15 a
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd n15 a
      · exact a
    have u8 : v6 := by
      rcases c1700 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a u6
    have u9 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n18
      · exact absurd a u6
    have u10 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u6
    have u11 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v31 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
    have u13 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd u8 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a u13
    · exact absurd a n14
    · exact absurd a u14
    · exact absurd a n16
    · exact absurd a n17
  have c1713 : v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v29 := by
      rcases c1684 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c1677 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v35 := by
      rcases c1692 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
    have u9 : v6 := by
      rcases c1700 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v9 := by
      rcases c1688 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : v4 := by
      rcases c1676 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v1 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u11 a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : v7 := by
      rcases c1707 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u21 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u20 a
      · exact absurd u9 a
    have u22 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u20 a
      · exact absurd u9 a
    have u23 : ¬v2 := by
      rcases c29 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u20 a
      · exact absurd u9 a
    have u24 : ¬v10 := by
      rcases c1712 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u25 : v8 := by
      rcases c1710 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u21
      · exact a
      · exact absurd a u10
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n1
    have u26 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u25 a
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u11 a
    · exact absurd a n1
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a n2
  have c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n1
    have u2 : v14 := by
      rcases c1138 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u3 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u2 a
      · exact a
    rcases c516 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u1 a
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a n4
  exact ⟨c1669, c1674, c1675, c1684, c1689, c1695, c1696, c1701, c1702, c1703, c1708, c1713, c1714⟩
