import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1800-1849 of the 2559-step refutation of ccase003: 113 core clauses and 101 earlier-derived ones give 16 more. -/
theorem CCase003_block036
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
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
    (c80 : ¬v20 ∨ ¬v21)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c121 : v23 ∨ v22 ∨ v27 ∨ v28 ∨ v26 ∨ v25)
    (c124 : ¬v29 ∨ ¬v30)
    (c126 : ¬v29 ∨ ¬v32)
    (c129 : ¬v29 ∨ ¬v35)
    (c131 : ¬v32 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c145 : v29 ∨ v30 ∨ v32 ∨ v35 ∨ v34 ∨ v31 ∨ v33)
    (c146 : ¬v37 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c154 : ¬v40 ∨ ¬v37)
    (c161 : ¬v39 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c170 : ¬v47 ∨ ¬v43)
    (c175 : ¬v47 ∨ ¬v44)
    (c179 : ¬v47 ∨ ¬v45)
    (c182 : ¬v47 ∨ ¬v46)
    (c186 : ¬v49 ∨ ¬v47)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c228 : ¬v25 ∨ v24 ∨ v18 ∨ v26 ∨ v31 ∨ v33 ∨ v32 ∨ v19)
    (c233 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v30 ∨ v37 ∨ v49 ∨ v29)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c253 : ¬v32 ∨ v39 ∨ v38 ∨ v25 ∨ v26 ∨ v24 ∨ v33 ∨ v31)
    (c264 : ¬v47 ∨ v41 ∨ v5 ∨ v40 ∨ v46 ∨ v6 ∨ v4 ∨ v48)
    (c268 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v20 ∨ v19 ∨ v26)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c342 : v36 ∨ ¬v29 ∨ v2 ∨ v31 ∨ v22 ∨ v1 ∨ v24 ∨ v23 ∨ v38 ∨ v35 ∨ v30 ∨ v7 ∨ v42 ∨ v43)
    (c360 : ¬v47 ∨ v40 ∨ v4 ∨ v6 ∨ v5 ∨ v39 ∨ v46 ∨ v48)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c422 : ¬v47 ∨ v40 ∨ v5 ∨ v33 ∨ v36 ∨ v32 ∨ v6 ∨ v43 ∨ v46 ∨ v34 ∨ v39 ∨ v1 ∨ v48 ∨ v49)
    (c448 : v23 ∨ ¬v24 ∨ v30 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c470 : ¬v4 ∨ v3 ∨ v45 ∨ v46 ∨ v10 ∨ v11 ∨ v12 ∨ v5)
    (c484 : ¬v47 ∨ v40 ∨ v5 ∨ v46 ∨ v39 ∨ v4 ∨ v41 ∨ v48)
    (c492 : v29 ∨ ¬v28 ∨ v27 ∨ v35 ∨ v15 ∨ v22 ∨ v21 ∨ v20)
    (c498 : v43 ∨ ¬v30 ∨ v35 ∨ v45 ∨ v34 ∨ v22 ∨ v29 ∨ v37 ∨ v44 ∨ v38 ∨ v41 ∨ v23 ∨ v27 ∨ v31)
    (c510 : v43 ∨ v36 ∨ v44 ∨ v31 ∨ v32 ∨ v22 ∨ v23 ∨ v30 ∨ v35 ∨ v39 ∨ v25 ∨ ¬v29 ∨ v42 ∨ v49)
    (c540 : v36 ∨ v29 ∨ v37 ∨ v31 ∨ v38 ∨ v23 ∨ ¬v30 ∨ v22)
    (c545 : ¬v47 ∨ v12 ∨ v2 ∨ v39 ∨ v37 ∨ v11 ∨ v40 ∨ v13 ∨ v5 ∨ v6 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c568 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c719 : ¬v28 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c734 : v20 ∨ v7 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c787 : ¬v20 ∨ ¬v24 ∨ ¬v26 ∨ v30 ∨ v31)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c836 : v25 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c861 : v44 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c921 : ¬v35 ∨ v22 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c972 : v4 ∨ v6 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1032 : ¬v27 ∨ ¬v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35)
    (c1075 : ¬v32 ∨ ¬v41 ∨ v42 ∨ v48 ∨ v49)
    (c1102 : ¬v25 ∨ v18 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33)
    (c1111 : ¬v28 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1136 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1165 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1177 : v23 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1232 : ¬v20 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35)
    (c1280 : ¬v21 ∨ v22 ∨ ¬v23 ∨ ¬v25)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1373 : ¬v35 ∨ v22 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1462 : ¬v35 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1514 : ¬v25 ∨ v18 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33)
    (c1561 : ¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1588 : v16 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23)
    (c1593 : ¬v29 ∨ ¬v23 ∨ v24 ∨ v26 ∨ ¬v27)
    (c1605 : v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49)
    (c1622 : ¬v35 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v45 ∨ v49)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1690 : v9 ∨ v2 ∨ v8 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1789 : v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1854 : ¬v19 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30)
    (c1857 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1936 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1952 : ¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38)
    (c1961 : ¬v24 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v31)
    (c2028 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v28)
    (c2059 : ¬v27 ∨ v1 ∨ v2 ∨ v24 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2096 : v21 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v19 ∨ v20 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2101 : ¬v2 ∨ ¬v3 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c2125 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c2127 : v21 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v44 ∨ v45)
    (c2158 : v28 ∨ v47 ∨ v48 ∨ v49)
    (c2162 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v34 ∨ v41 ∨ v48)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2198 : v15 ∨ v47 ∨ v48 ∨ v49)
    (c2221 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2222 : v47 ∨ v48 ∨ v49)
    (c2224 : ¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2234 : v20 ∨ ¬v3 ∨ v10 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2249 : v28 ∨ v1 ∨ ¬v3 ∨ v21 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2284 : ¬v6 ∨ ¬v1 ∨ v5 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2294 : ¬v15 ∨ v1 ∨ ¬v3 ∨ ¬v25 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2295 : v28 ∨ v1 ∨ ¬v3 ∨ ¬v8 ∨ v10 ∨ v15 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2298 : v1 ∨ ¬v33 ∨ v48 ∨ v49)
    (c2305 : ¬v28 ∨ v3 ∨ v10 ∨ ¬v25 ∨ v29 ∨ v31 ∨ v35 ∨ v38 ∨ v45)
    (c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2309 : v22 ∨ ¬v1 ∨ v8 ∨ v10 ∨ v15 ∨ v23 ∨ ¬v25 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v48 ∨ v49)
    (c2311 : ¬v33 ∨ v48 ∨ v49)
    (c2318 : ¬v22 ∨ ¬v25 ∨ v31 ∨ v48 ∨ v49)
    (c2341 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2345 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c2362 : v4 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2372 : v34 ∨ v10 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v48 ∨ v49)
    (c2373 : ¬v41 ∨ ¬v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49)
    (c2374 : v41 ∨ v10 ∨ v17 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2375 : v7 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2378 : v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2381 : v17 ∨ v10 ∨ ¬v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49)
    (c2384 : v30 ∨ v1 ∨ v2 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v37 ∨ v44)
    (c2385 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2386 : v39 ∨ v1 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v41 ∨ v48 ∨ v49)
    (c2390 : v1 ∨ v2 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49)
    (c2391 : v1 ∨ v4 ∨ ¬v9 ∨ v15 ∨ v19 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49)
    : (¬v15 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 ∨ v49) ∧ (¬v4 ∨ ¬v1 ∨ ¬v47) ∧ (v2 ∨ v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45) ∧ (v27 ∨ v10 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34) ∧ (v3 ∨ v10 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45) ∧ (v30 ∨ ¬v23 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34) ∧ (v4 ∨ ¬v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v48 ∨ v49) ∧ (v32 ∨ v10 ∨ v31 ∨ v34 ∨ v48 ∨ v49) ∧ (v48 ∨ ¬v3 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v28 ∨ v31 ∨ ¬v32 ∨ v34 ∨ v49) ∧ (¬v15 ∨ ¬v3 ∨ v10 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48) ∧ (v4 ∨ ¬v3 ∨ v10 ∨ v40 ∨ v41 ∨ ¬v47 ∨ v48) ∧ (v24 ∨ v10 ∨ v23 ∨ v31 ∨ v34 ∨ v48 ∨ v49) ∧ (¬v1 ∨ v10 ∨ v22 ∨ v23 ∨ ¬v25 ∨ v28 ∨ v31 ∨ v34 ∨ v38 ∨ v48 ∨ v49) ∧ (v25 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v15 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v37 ∨ v48 ∨ v49) ∧ (¬v27 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v44 ∨ v45 ∨ v46) := by
  have c2392 : v28 ∨ v1 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ ¬v25 ∨ v27 ∨ v31 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v18 := by
      rcases c2381 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v2 := by
      rcases c2390 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v4 := by
      rcases c2386 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v9 := by
      rcases c2391 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : v3 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u4 a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n1
    have u11 : v20 := by
      rcases c2101 with a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u10 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd u10 a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
    have u13 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u4 a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v35 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v8 := by
      rcases c1136 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n6
    rcases c1622 with a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n15
  have c2393 : ¬v23 ∨ v18 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c1102 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2394 : v41 ∨ v1 ∨ v10 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u8 : v15 := by
      rcases c2392 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v8 := by
      rcases c1561 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
    have u12 : ¬v13 := by
      rcases c2028 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a n9
    have u13 : ¬v3 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u14 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a n11
    have u17 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n1
    have u18 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u19 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
    have u22 : v37 := by
      rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u18 a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u20
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u23 : v7 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n14
    have u24 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u16 a
    have u26 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u16 a
    rcases c484 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a u26
    · exact absurd a n0
    · exact absurd a n13
  have c2395 : ¬v15 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v8 := by
      rcases c1561 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u3 : ¬v13 := by
      rcases c2028 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n5
    have u4 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n6
    have u7 : ¬v5 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    rcases c2284 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n9
  have c2396 : v34 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ ¬v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v35 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u2
    have u5 : ¬v29 := by
      rcases c1177 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
    have u6 : v30 := by
      rcases c145 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
    rcases c540 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd u6 a
    · exact absurd a n1
  have c2397 : ¬v4 ∨ ¬v1 ∨ ¬v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v5 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v49 := by
      rcases c186 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n2 a
      · exact a
    have u10 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u10 a
      · exact a
    rcases c470 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u1
  have c2398 : v49 ∨ v10 ∨ v17 ∨ v19 ∨ v21 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v25 := by
      rcases c2372 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v41 := by
      rcases c2373 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v28 := by
      rcases c2374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v18 := by
      rcases c2381 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n0
    have u14 : ¬v23 := by
      rcases c2393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
    have u15 : ¬v40 := by
      rcases c2396 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u11
      · exact a
      · exact absurd a u5
    have u16 : v1 := by
      rcases c2394 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n0
    have u17 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u2 a
    have u18 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    have u19 : v5 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n9
    have u20 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n2
    have u21 : v8 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd u16 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
    have u22 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u16 a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u1 a
    have u24 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u21 a
      · exact a
    rcases c2162 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a u23
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n9
  have c2399 : v49 ∨ v10 ∨ ¬v21 ∨ ¬v25 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
    have u5 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n0
    have u6 : v14 := by
      rcases c1365 with a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v23 := by
      rcases c1280 with a|a|a|a
      · exact absurd n2 a
      · exact absurd a u4
      · exact a
      · exact absurd n3 a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n7
    have u15 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
    have u16 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u17 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n0
    have u20 : v1 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    have u21 : v7 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    rcases c13 with a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u14 a
  have c2400 : ¬v1 ∨ v20 ∨ v27 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u6 : v5 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v8 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
    have u8 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n3
  have c2401 : v1 ∨ v2 ∨ v4 ∨ v10 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v31 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u7 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u9 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v8 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n12
    have u13 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u12 a
      · exact a
    rcases c452 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n0
  have c2402 : v20 ∨ v4 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v1 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n15
      · exact a
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n17
    have u8 : v2 := by
      rcases c2401 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v3 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u11 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n13
    have u12 : v9 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a u2
    rcases c47 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c2403 : v48 ∨ v10 ∨ v17 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v25 := by
      rcases c2372 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u4 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
    have u5 : ¬v41 := by
      rcases c2373 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u11 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v28 := by
      rcases c2374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    have u13 : ¬v21 := by
      rcases c2399 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n0
    have u14 : v19 := by
      rcases c2398 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u15 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v23 := by
      rcases c2393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
    have u20 : ¬v40 := by
      rcases c2396 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u10
      · exact a
      · exact absurd a u5
    have u21 : ¬v1 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n7
    have u22 : v4 := by
      rcases c2402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n7
    have u23 : ¬v3 := by
      rcases c2345 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd u22 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n0
    have u24 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u22 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u25 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u15
    have u26 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u27 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n7
    have u30 : v8 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u31 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u30 a
      · exact a
    rcases c452 with a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u31
    · exact absurd a u25
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u21
  have c2404 : ¬v30 ∨ v1 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c492 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
    have u5 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v8 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    rcases c2096 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd u9 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n10
  have c2405 : v2 ∨ v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c2164 with a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2406 : v49 ∨ v1 ∨ v10 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v25 := by
      rcases c2372 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v17 := by
      rcases c2403 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
    have u6 : ¬v41 := by
      rcases c2373 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v23 := by
      rcases c2393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
    have u18 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
    have u19 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u15
    have u20 : ¬v30 := by
      rcases c2404 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n0
    have u21 : ¬v3 := by
      rcases c2234 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n7
    have u22 : v2 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u23 : ¬v4 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
    have u24 : v9 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a n1
    have u25 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n6
    have u27 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u26 a
    have u28 : v40 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a n7
    have u29 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : v28 := by
      rcases c2396 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd u28 a
      · exact absurd a u6
    have u31 : v29 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u17
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u32 : v35 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    rcases c129 with a|a
    · exact absurd u31 a
    · exact absurd u32 a
  have c2407 : v27 ∨ v10 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v25 := by
      rcases c2372 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v1 := by
      rcases c2406 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v17 := by
      rcases c2403 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v41 := by
      rcases c2373 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v23 := by
      rcases c2393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
    have u17 : v40 := by
      rcases c2400 with a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v28 := by
      rcases c2396 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd u17 a
      · exact absurd a u10
    have u19 : ¬v26 := by
      rcases c1111 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
    have u20 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u3 a
    rcases c228 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u13
  have c2408 : v35 ∨ v20 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
  have c2409 : v20 ∨ v3 ∨ v10 ∨ v23 ∨ v25 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v24 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n11
    have u2 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd u1 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n5 a
    have u4 : v35 := by
      rcases c2408 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u6 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u2
  have c2410 : ¬v27 ∨ v3 ∨ v10 ∨ v20 ∨ v23 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v25 := by
      rcases c2409 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u3 : v18 := by
      rcases c1514 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n5
      · exact a
    rcases c71 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c2411 : v23 ∨ v3 ∨ v10 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v20 := by
      rcases c2410 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a u2
    have u6 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd u5 a
    · exact absurd a u6
  have c2412 : ¬v17 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
  have c2413 : v3 ∨ v10 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v23 := by
      rcases c2411 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u5
  have c2414 : v30 ∨ ¬v23 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
    have u6 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd n2 a
    have u7 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
    have u8 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
    have u9 : v19 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a u3
    rcases c68 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c2415 : ¬v23 ∨ ¬v3 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v30 := by
      rcases c2414 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
    have u9 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u10 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v20 := by
      rcases c2408 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
    have u13 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    rcases c80 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2416 : v17 ∨ ¬v3 ∨ ¬v20 ∨ v23 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v24 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a u7
    have u13 : v22 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u12
    have u14 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u15 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a n6
    have u16 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    rcases c2249 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u14
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n9
    · exact absurd a n10
  have c2417 : ¬v3 ∨ v1 ∨ v10 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v35 := by
      rcases c2408 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v17 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v22 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
    have u4 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v19 := by
      rcases c1854 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
    have u7 : v21 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n12
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n7
    have u8 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v2 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n15
    have u10 : v4 := by
      rcases c2362 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c14 with a|a|a
    · exact absurd u9 a
    · exact absurd n0 a
    · exact absurd u10 a
  have c2418 : ¬v18 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
  have c2419 : v10 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v17 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
    have u11 : v3 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u13 : ¬v18 := by
      rcases c2418 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
    have u14 : ¬v25 := by
      rcases c1514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
    have u15 : ¬v23 := by
      rcases c2415 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v20 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u11 a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v35 := by
      rcases c2408 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
    have u18 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u20 : ¬v24 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u4
    rcases c2417 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u19
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u7
  have c2420 : v22 ∨ ¬v3 ∨ v10 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u9 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v13 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u13 : v4 := by
      rcases c2362 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v2 := by
      rcases c2385 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
    have u16 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u4
    have u18 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u4
    have u19 : ¬v14 := by
      rcases c2125 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u12
      · exact a
      · exact absurd a u18
    have u20 : v35 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n13
    rcases c1622 with a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n13
  have c2421 : v18 ∨ ¬v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
    have u9 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u10 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u11 : v19 := by
      rcases c2420 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
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
    have u12 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u8
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u4
    have u16 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
    have u17 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u18 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u19 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u6
    have u20 : v35 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n12
    rcases c1622 with a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n12
  have c2422 : v23 ∨ ¬v3 ∨ v10 ∨ v20 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
    have u9 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u10 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u11 : v18 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
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
    have u12 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v2 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u8
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u4
    have u16 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
    have u17 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u18 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u19 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u6
    have u20 : v35 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n12
    rcases c1622 with a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n12
  have c2423 : v30 ∨ ¬v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u11 : v20 := by
      rcases c2422 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u11 a
    rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u6
  have c2424 : v28 ∨ ¬v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u7 : v30 := by
      rcases c2423 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
    have u12 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
    have u14 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u12 a
    rcases c2295 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd n1 a
    · exact absurd u13 a
    · exact absurd a n2
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n9
    · exact absurd a n10
  have c2425 : v28 ∨ ¬v3 ∨ v10 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v26 := by
      rcases c2419 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u4 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u5 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    rcases c2424 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
  have c2426 : v4 ∨ ¬v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u5
    have u14 : v40 := by
      rcases c360 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n9
    have u15 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u5
    have u16 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u9
    have u20 : v11 := by
      rcases c972 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v15 := by
      rcases c1588 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u24 : v29 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a u13
      · exact absurd a u23
    have u25 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u24 a
      · exact a
    rcases c510 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u19
    · exact absurd a u25
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd u24 a
    · exact absurd a u17
    · exact absurd a n10
  have c2427 : v30 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u3 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u4 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n5 a
    have u5 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd n6 a
      · exact absurd n5 a
      · exact a
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u7
    have u15 : v29 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n6 a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u16 : ¬v13 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u17 : v9 := by
      rcases c1690 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u7
    have u18 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v40 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u19
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u24 : ¬v7 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u21
    have u25 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u23 a
      · exact a
    rcases c342 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd u15 a
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u8
  have c2428 : v32 ∨ v10 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v27 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v3 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u12 : v28 := by
      rcases c2425 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u1 a
    have u14 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u1 a
    have u15 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u1 a
    have u16 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u12 a
      · exact absurd u1 a
      · exact a
    have u17 : v4 := by
      rcases c2426 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u17 a
    have u19 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u17 a
    have u20 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u17 a
      · exact absurd u10 a
      · exact a
    have u21 : v30 := by
      rcases c2427 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd u1 a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v37 := by
      rcases c719 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd u1 a
      · exact absurd u21 a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
    have u23 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u22 a
    rcases c422 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n5
  have c2429 : ¬v26 ∨ v22 ∨ v25 ∨ ¬v28 ∨ v29 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
    have u4 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u1
  have c2430 : v48 ∨ ¬v3 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v28 ∨ v31 ∨ ¬v32 ∨ v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u6 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n10
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u14 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v26 := by
      rcases c2429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u2
    have u16 : v39 := by
      rcases c253 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n7
    have u17 : v27 := by
      rcases c117 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v2 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u12
      · exact a
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u20 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u19 a
      · exact absurd n1 a
      · exact a
    have u21 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u19 a
      · exact absurd n1 a
      · exact a
    rcases c264 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a n0
  have c2431 : ¬v3 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v34 ∨ v36 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v28 := by
      rcases c2430 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n10
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u12 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u8
    have u14 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u12 a
    rcases c2295 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd n0 a
    · exact absurd u13 a
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
  have c2432 : v28 ∨ v1 ∨ ¬v3 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c65 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c2433 : ¬v15 ∨ ¬v3 ∨ v10 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v4 := by
      rcases c2345 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u5 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n4
  have c2434 : v4 ∨ ¬v3 ∨ v10 ∨ v40 ∨ v41 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u5 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact a
    rcases c264 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n6
  have c2435 : v23 ∨ v10 ∨ v24 ∨ v25 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v36 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u5
    have u16 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u17 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
    have u18 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
    have u19 : v22 := by
      rcases c2431 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v28 := by
      rcases c2432 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd u19 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd u19 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v26 := by
      rcases c95 with a|a|a
      · exact absurd u19 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v15 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u24 : v39 := by
      rcases c253 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
    have u25 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v4 := by
      rcases c2434 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n6
    have u27 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u26 a
    have u28 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u26 a
    have u29 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u26 a
      · exact absurd u17 a
      · exact a
    have u30 : v16 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd a u23
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u10
    have u31 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u10
    have u32 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v20 := by
      rcases c69 with a|a
      · exact absurd u30 a
      · exact a
    have u34 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u32
      · exact absurd a u33
      · exact absurd a u31
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u34
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u33
    · exact absurd a n6
    · exact absurd a n5
  have c2436 : ¬v3 ∨ v10 ∨ v22 ∨ ¬v25 ∨ v29 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
    have u7 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u8 : ¬v15 := by
      rcases c2294 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u8
    have u10 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v6 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v28 := by
      rcases c2295 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v27 := by
      rcases c115 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n3 a
    have u16 : ¬v20 := by
      rcases c1232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd a n9
    · exact absurd a n5
  have c2437 : v24 ∨ v10 ∨ v23 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u13 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v25 := by
      rcases c2435 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v22 := by
      rcases c2318 with a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v3 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v28 := by
      rcases c2305 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd u15 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u11
    have u19 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n3
      · exact a
    have u20 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v1 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u25 : v7 := by
      rcases c2375 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u26 : v6 := by
      rcases c1936 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd u24 a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n6
    rcases c13 with a|a|a
    · exact absurd u24 a
    · exact absurd u25 a
    · exact absurd u26 a
  have c2438 : ¬v1 ∨ v10 ∨ v22 ∨ v23 ∨ ¬v25 ∨ v28 ∨ v31 ∨ v34 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v24 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v15 := by
      rcases c2395 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v8 := by
      rcases c2309 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a n6
    have u16 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n10
    have u17 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
    have u18 : ¬v20 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
    have u19 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n7
    rcases c13 with a|a|a
    · exact absurd n0 a
    · exact absurd u16 a
    · exact absurd u19 a
  have c2439 : ¬v1 ∨ v10 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
    have u5 : v2 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c5 with a|a|a
    · exact absurd n0 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2440 : v25 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v15 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2198 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v24 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v26 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n0
    have u4 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v35 := by
      rcases c1373 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1165 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v13 := by
      rcases c2439 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n13
    have u12 : ¬v20 := by
      rcases c787 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a n9
    have u13 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a n10
    have u15 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
    have u17 : v14 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n13
    have u18 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    rcases c43 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c2441 : ¬v27 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c1032 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  exact ⟨c2395, c2397, c2405, c2407, c2412, c2413, c2414, c2426, c2428, c2430, c2433, c2434, c2437, c2438, c2440, c2441⟩
