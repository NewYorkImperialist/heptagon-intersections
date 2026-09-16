import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2600-2649 of the 2934-step refutation of ccase002: 101 core clauses and 95 earlier-derived ones give 6 more. -/
theorem CCase002_block052
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
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
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c148 : ¬v42 ∨ ¬v36)
    (c152 : ¬v41 ∨ ¬v37)
    (c168 : ¬v48 ∨ ¬v43)
    (c169 : ¬v43 ∨ ¬v49)
    (c173 : ¬v48 ∨ ¬v44)
    (c174 : ¬v44 ∨ ¬v49)
    (c177 : ¬v45 ∨ ¬v48)
    (c178 : ¬v49 ∨ ¬v45)
    (c180 : ¬v48 ∨ ¬v46)
    (c181 : ¬v49 ∨ ¬v46)
    (c182 : ¬v47 ∨ ¬v48)
    (c183 : ¬v49 ∨ ¬v47)
    (c184 : ¬v49 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c203 : ¬v10 ∨ v9 ∨ v4 ∨ v17 ∨ v18 ∨ v3 ∨ v11 ∨ v2)
    (c210 : v29 ∨ v43 ∨ v44 ∨ v42 ∨ v35 ∨ v30 ∨ v37 ∨ ¬v36)
    (c266 : v43 ∨ ¬v15 ∨ v49 ∨ v44 ∨ v1 ∨ v22 ∨ v21 ∨ v14 ∨ v17 ∨ v16 ∨ v10 ∨ v23 ∨ v8 ∨ v24)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c302 : v29 ∨ ¬v22 ∨ v15 ∨ v35 ∨ v14 ∨ v26 ∨ v8 ∨ v23 ∨ v27 ∨ v19 ∨ v33 ∨ v28 ∨ v16 ∨ v9)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c534 : v44 ∨ v43 ∨ v7 ∨ v14 ∨ v8 ∨ v2 ∨ ¬v1 ∨ v9)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c689 : v44 ∨ v4 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c719 : v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1143 : ¬v27 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1363 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1376 : ¬v36 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v43 ∨ v49)
    (c1380 : v3 ∨ v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v45 ∨ v46 ∨ v47)
    (c1423 : ¬v34 ∨ v15 ∨ v16 ∨ ¬v23)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1446 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v16)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1458 : ¬v8 ∨ v1 ∨ v5 ∨ v7 ∨ v12 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v28)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1531 : v33 ∨ ¬v3 ∨ v16 ∨ v18 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1672 : ¬v4 ∨ ¬v1 ∨ v3 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1774 : ¬v3 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1813 : ¬v4 ∨ ¬v1 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1818 : v19 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v33)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1835 : ¬v20 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1878 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ ¬v26)
    (c1953 : ¬v23 ∨ v8 ∨ ¬v15 ∨ ¬v20)
    (c1974 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2305 : ¬v10 ∨ v3 ∨ v4 ∨ v11 ∨ v16 ∨ v17 ∨ v18)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2440 : v21 ∨ v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ v29)
    (c2464 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2484 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2547 : ¬v16 ∨ v9 ∨ v15 ∨ ¬v19 ∨ v23 ∨ v24)
    (c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2617 : v14 ∨ v9 ∨ ¬v15 ∨ v16 ∨ ¬v20 ∨ v21 ∨ ¬v28)
    (c2720 : ¬v17 ∨ v10 ∨ v13 ∨ ¬v20 ∨ v23)
    (c2734 : ¬v24 ∨ v13 ∨ ¬v16 ∨ ¬v20)
    (c2740 : ¬v16 ∨ v13 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v28)
    (c2742 : ¬v17 ∨ ¬v20 ∨ v24 ∨ v25 ∨ v27)
    (c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2790 : v48 ∨ v49)
    (c2793 : v32 ∨ ¬v6 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2837 : ¬v29 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2847 : ¬v29 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2848 : ¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 ∨ v49)
    (c2865 : v9 ∨ ¬v6 ∨ v16 ∨ v23 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2877 : v31 ∨ ¬v6 ∨ ¬v11 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2898 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2940 : ¬v4 ∨ v10 ∨ v11 ∨ v15 ∨ v21 ∨ v22 ∨ v29 ∨ v49)
    (c2969 : ¬v39 ∨ v6 ∨ v7 ∨ v49)
    (c2999 : ¬v4 ∨ v1 ∨ ¬v5 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v32 ∨ v49)
    (c3008 : v4 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3023 : v5 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49)
    (c3028 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c3049 : ¬v8 ∨ v15 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v42 ∨ v49)
    (c3052 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c3054 : v49 ∨ ¬v7 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v29 ∨ v36)
    (c3070 : ¬v32 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c3115 : ¬v36 ∨ v6 ∨ v17 ∨ v24 ∨ v49)
    (c3118 : v10 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v44 ∨ v45 ∨ v46)
    (c3126 : v19 ∨ v4 ∨ v17 ∨ v18 ∨ v23 ∨ v25 ∨ v26 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3155 : v20 ∨ v49)
    (c3162 : v18 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46)
    (c3170 : ¬v22 ∨ v13 ∨ v19 ∨ ¬v20 ∨ v21)
    (c3178 : v21 ∨ v6 ∨ v8 ∨ v10 ∨ v15 ∨ v17 ∨ v23 ∨ v24 ∨ v49)
    (c3181 : v15 ∨ v6 ∨ v10 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v49)
    (c3185 : ¬v25 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ v23)
    (c3187 : ¬v17 ∨ v6 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v49)
    (c3189 : v16 ∨ v6 ∨ v15 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49)
    (c3190 : ¬v25 ∨ v6 ∨ v15 ∨ v16 ∨ v21 ∨ v49)
    : (v10 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (v49) ∧ (¬v15 ∨ ¬v6 ∨ ¬v8 ∨ v17 ∨ v18 ∨ v24) ∧ (v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v33) ∧ (¬v3 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v33) ∧ (¬v25 ∨ ¬v6 ∨ ¬v15 ∨ v17 ∨ v18) := by
  have c3191 : v16 ∨ v6 ∨ v15 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c3187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v25 := by
      rcases c3190 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
    have u9 : v10 := by
      rcases c3181 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v24 := by
      rcases c3189 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a n5
    have u14 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u16
    have u19 : v19 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u16
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u21 : ¬v7 := by
      rcases c3054 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u20
    have u22 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u15
    have u23 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u19 a
    have u24 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n5
    have u25 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
    have u26 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd u13 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u4
    · exact absurd a u24
    · exact absurd a u8
    · exact absurd a u26
  have c3192 : v15 ∨ v6 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v16 := by
      rcases c3191 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n3
    have u6 : ¬v22 := by
      rcases c3170 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n2
    have u7 : ¬v24 := by
      rcases c2734 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd u1 a
    have u8 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u7
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u8 a
    rcases c3178 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a n4
  have c3193 : ¬v10 ∨ ¬v15 ∨ ¬v20 ∨ v21 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : v28 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    rcases c2617 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd u5 a
  have c3194 : v4 ∨ v6 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u2 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c3162 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : v39 := by
      rcases c3126 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u8 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u9 : v7 := by
      rcases c2969 with a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
    rcases c18 with a|a|a
    · exact absurd u9 a
    · exact absurd u8 a
    · exact absurd u6 a
  have c3195 : v8 ∨ v6 ∨ v9 ∨ v21 ∨ v22 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v15 := by
      rcases c3192 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u7 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v28 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v10 := by
      rcases c3193 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v25 := by
      rcases c3185 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n5
    have u17 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a n3
      · exact a
    have u18 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : v14 := by
      rcases c2617 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd u9 a
    have u21 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a n6
    have u22 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v4 := by
      rcases c3194 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n6
    have u24 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u25 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u26 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n6
    have u27 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u28 : v32 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u25
      · exact absurd u26 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u19
      · exact a
      · exact absurd a n6
    rcases c129 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c3196 : ¬v4 ∨ v6 ∨ v9 ∨ v21 ∨ v22 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v8 := by
      rcases c3195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v15 := by
      rcases c3192 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u11 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v28 := by
      rcases c2617 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n3
      · exact a
    have u17 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
    have u18 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u20 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u14
    have u21 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
    have u22 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u23 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u27 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u25
    have u28 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a n6
    have u29 : v37 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u27
      · exact absurd a u19
      · exact a
      · exact absurd a u26
    have u30 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u29 a
    rcases c2233 with a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u30
    · exact absurd a n6
  have c3197 : v9 ∨ v6 ∨ v21 ∨ v22 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v15 := by
      rcases c3192 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u7 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v10 := by
      rcases c3193 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v4 := by
      rcases c3196 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u16 : v8 := by
      rcases c3195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v28 := by
      rcases c2617 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n2
      · exact a
    have u21 : ¬v25 := by
      rcases c3185 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
    have u22 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u4
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
    have u23 : ¬v26 := by
      rcases c1818 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
      · exact absurd a u22
    have u24 : v39 := by
      rcases c3126 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u23
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u25 : v27 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u23
      · exact a
      · exact absurd a u20
    have u26 : v32 := by
      rcases c1307 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u27 : v7 := by
      rcases c2969 with a|a|a|a
      · exact absurd u24 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
    have u28 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : v3 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u28
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u32 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u28
      · exact absurd a n5
    have u34 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u33
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u34
    · exact absurd a u12
    · exact absurd a u32
  have c3198 : v22 ∨ v6 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v15 := by
      rcases c3192 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u6 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v10 := by
      rcases c3193 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u13 : v9 := by
      rcases c3197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v28 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u18 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v1 := by
      rcases c266 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u19
    have u21 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u22 : v3 := by
      rcases c3162 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u23 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c1 with a|a|a
    · exact absurd u20 a
    · exact absurd u23 a
    · exact absurd u22 a
  have c3199 : v4 ∨ v6 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u2 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c3162 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u9 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n11
    rcases c3126 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
  have c3200 : v6 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v15 := by
      rcases c3192 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd u8 a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd u8 a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u2 a
    have u12 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd u8 a
      · exact absurd u2 a
      · exact a
    have u13 : v22 := by
      rcases c3198 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v13 := by
      rcases c3170 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n1
    have u19 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v4 := by
      rcases c3199 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n3
    have u23 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n3
    have u24 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
    have u25 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u23 a
      · exact absurd u22 a
      · exact a
    have u26 : v32 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u24
      · exact absurd u23 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u17
      · exact a
      · exact absurd a n3
    rcases c3070 with a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c3201 : v10 ∨ ¬v6 ∨ v9 ∨ v17 ∨ v19 ∨ ¬v20 ∨ v21 ∨ ¬v22 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : v13 := by
      rcases c3170 with a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u4 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u1
    have u5 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c3070 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c3202 : v10 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c3070 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c3203 : v9 ∨ ¬v6 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v22 := by
      rcases c3201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : v11 := by
      rcases c3202 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u13 : v31 := by
      rcases c2877 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v15 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u16 : ¬v23 := by
      rcases c1953 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u15 a
      · exact absurd u2 a
    have u17 : v16 := by
      rcases c266 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u15 a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n7
    rcases c61 with a|a|a
    · exact absurd u17 a
    · exact absurd u15 a
    · exact absurd u2 a
  have c3204 : v24 ∨ v9 ∨ v10 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v6 := by
      rcases c3200 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v18 := by
      rcases c3203 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v15 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u9 a
    have u11 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u9 a
    have u12 : ¬v29 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a n6
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u14 : ¬v22 := by
      rcases c3201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u16 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
    have u18 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u19 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u6
    have u20 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u21 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c128 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c3205 : v21 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v6 := by
      rcases c3200 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v19 := by
      rcases c3204 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u9 a
    have u11 : ¬v16 := by
      rcases c2547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u9 a
    have u13 : ¬v29 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u14 : v11 := by
      rcases c3202 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v22 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u17 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u16 a
      · exact a
    rcases c2440 with a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd u16 a
    · exact absurd a u17
    · exact absurd a u13
  have c3206 : v8 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c2491 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n6
  have c3207 : v18 ∨ ¬v6 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u6 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n6
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
    have u11 : v8 := by
      rcases c3206 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n6
    have u12 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v16 := by
      rcases c2740 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
    have u15 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c1448 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd n4 a
  have c3208 : v25 ∨ v9 ∨ v10 ∨ v17 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v6 := by
      rcases c3200 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v24 := by
      rcases c3205 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u7 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v18 := by
      rcases c3207 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n6
    have u12 : ¬v15 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u11 a
    have u13 : ¬v19 := by
      rcases c89 with a|a|a
      · exact absurd u11 a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u11 a
    have u15 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
    have u16 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
    have u17 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    rcases c40 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c3209 : v17 ∨ v9 ∨ v10 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v6 := by
      rcases c3200 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v25 := by
      rcases c3208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v16 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
    have u15 : ¬v29 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u17 : v8 := by
      rcases c3206 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n5
    have u18 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
    have u20 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u23
    · exact absurd a u22
  have c3210 : v10 ∨ v9 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v6 := by
      rcases c3200 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v17 := by
      rcases c3209 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v15 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u7 a
    have u9 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u7 a
    have u10 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u7 a
    have u11 : v13 := by
      rcases c2720 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
    have u12 : ¬v29 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v22 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a u8
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u16 : v24 := by
      rcases c287 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u14
    rcases c101 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c3211 : v22 ∨ v9 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v6 := by
      rcases c3200 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v10 := by
      rcases c3210 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v15 := by
      rcases c3193 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u11 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u12 : v16 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v24 := by
      rcases c2734 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u12 a
      · exact absurd u4 a
    have u14 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u12 a
      · exact absurd u4 a
      · exact a
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd u12 a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u13
  have c3212 : v9 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v6 := by
      rcases c3200 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v10 := by
      rcases c3210 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v22 := by
      rcases c3211 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v19 := by
      rcases c3170 with a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u8
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
    have u17 : ¬v16 := by
      rcases c2740 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
    have u18 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u16 a
    have u20 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd u10 a
      · exact absurd a u15
      · exact a
    rcases c2793 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u3 a
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c3213 : ¬v22 ∨ ¬v6 ∨ v11 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v19 := by
      rcases c3170 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
    have u7 : ¬v16 := by
      rcases c2740 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
    have u8 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u9 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u6 a
    have u10 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
    rcases c2793 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c3214 : v16 ∨ v21 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v9 := by
      rcases c3212 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u2 : v6 := by
      rcases c3200 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v22 := by
      rcases c3213 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a n2
    have u17 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u18 : ¬v15 := by
      rcases c266 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
    have u19 : v2 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u17
    have u20 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a u15
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u21 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u2 a
    have u22 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u12
      · exact a
      · exact absurd a u22
    rcases c2869 with a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u11
  have c3215 : ¬v16 ∨ ¬v6 ∨ v8 ∨ v11 ∨ v17 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v18 := by
      rcases c78 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u11 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u12 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
    rcases c2793 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c3216 : v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n2
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v9 := by
      rcases c3212 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v17 := by
      rcases c2720 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a n1
    have u14 : v6 := by
      rcases c3200 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v22 := by
      rcases c3213 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u16 : ¬v16 := by
      rcases c3215 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n2
    have u17 : v24 := by
      rcases c3214 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u18 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v15 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u10
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n1
    have u23 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u19
    rcases c2491 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u14 a
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n2
  have c3217 : ¬v24 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v21 := by
      rcases c3216 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u8 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n5
    have u9 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
    have u10 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
    have u11 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u3
    have u17 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
    have u18 : v11 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
    rcases c38 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c3218 : v8 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v21 := by
      rcases c3216 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u5 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u6 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v24 := by
      rcases c3217 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u15 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u15
    have u18 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u19 : v4 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u21 : v11 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u19 a
    have u23 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u22
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
    rcases c47 with a|a
    · exact absurd u21 a
    · exact absurd u23 a
  have c3219 : ¬v8 ∨ ¬v6 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v25 := by
      rcases c3202 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c1380 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u5 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c3220 : ¬v6 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v21 := by
      rcases c3216 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n2
    have u4 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u5 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u6 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u8 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v24 := by
      rcases c3217 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v8 := by
      rcases c3219 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : v22 := by
      rcases c3218 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd u16 a
    have u22 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd u16 a
      · exact absurd a u20
      · exact a
    have u23 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u24 : v4 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u25 : v11 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u26 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd n0 a
      · exact absurd a u28
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u31 : ¬v29 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u32 : v38 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u11
    have u33 : v35 := by
      rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u31
      · exact absurd u16 a
      · exact absurd a u4
      · exact a
      · exact absurd a u29
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u28
    have u34 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    rcases c136 with a|a
    · exact absurd u34 a
    · exact absurd u33 a
  have c3221 : ¬v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n1
    have u8 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v6 := by
      rcases c3220 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
    have u10 : v21 := by
      rcases c3216 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
    have u11 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u12 : ¬v17 := by
      rcases c2742 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
    have u13 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u18 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n1
    have u19 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    have u20 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact a
    have u21 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    have u22 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd n0 a
      · exact absurd a u6
      · exact a
    have u23 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u24 : v4 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u25 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
    have u26 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd n0 a
    have u27 : ¬v5 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u25
      · exact a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a n1
    have u28 : v12 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd u24 a
      · exact absurd a u9
      · exact a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
    have u29 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u30
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u33 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u34 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u35 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u33 a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u34
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd a u35
    · exact absurd a u29
    · exact absurd a u2
    · exact absurd a u31
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u6
    · exact absurd a u21
    · exact absurd a u30
  have c3222 : v18 ∨ v6 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
    have u2 : v21 := by
      rcases c3216 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n10
    have u5 : ¬v22 := by
      rcases c3221 with a|a
      · exact a
      · exact absurd a n10
    have u6 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u5
    have u13 : ¬v7 := by
      rcases c3054 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u1
    have u14 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n10
    have u15 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u16 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u17 : v32 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n8
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v3 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u21 : v10 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u20
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n0
    rcases c2305 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
  have c3223 : v18 ∨ v6 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : v21 := by
      rcases c3216 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u7 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n8
    have u8 : ¬v22 := by
      rcases c3221 with a|a
      · exact a
      · exact absurd a n8
    have u9 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u5 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u18 : v4 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : ¬v5 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u18 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u13
    have u20 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
    have u21 : v28 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u17
    have u23 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v12 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n8
    have u25 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    rcases c2579 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd u26 a
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u12
  have c3224 : v15 ∨ ¬v8 ∨ v16 ∨ v18 ∨ v25 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u12 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v1 := by
      rcases c2464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c1446 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
  have c3225 : v18 ∨ v6 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v21 := by
      rcases c3216 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v22 := by
      rcases c3221 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v29 := by
      rcases c3223 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    have u12 : v8 := by
      rcases c3222 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n8
    have u13 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v32 := by
      rcases c3224 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u16 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v3 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v2 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v1 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
    have u22 : ¬v4 := by
      rcases c2579 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u23 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
    have u24 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u19 a
    have u25 : v28 := by
      rcases c1458 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact a
    have u26 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u25 a
      · exact a
    rcases c3199 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u26
    · exact absurd a n8
  have c3226 : v19 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v25 ∨ v29 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u2 : ¬v22 := by
      rcases c3221 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u10 : v4 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u11 : ¬v8 := by
      rcases c3224 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u2
    have u13 : ¬v7 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u4
    have u14 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
    have u16 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u10 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u17 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c534 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd u12 a
    · exact absurd a u17
  have c3227 : v49 ∨ v6 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n0
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n0
    have u3 : ¬v22 := by
      rcases c3221 with a|a
      · exact a
      · exact absurd a n0
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v23 := by
      rcases c3225 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v34 := by
      rcases c1423 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u9 a
    have u14 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u9 a
    have u15 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
    have u16 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u21 : v19 := by
      rcases c3226 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n0
    have u22 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u21 a
    have u23 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    have u24 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a n0
    have u25 : ¬v8 := by
      rcases c3049 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a n0
    have u26 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u25
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u3
    have u27 : v4 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u28 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u27 a
    have u29 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u16
    have u30 : v11 := by
      rcases c1672 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd u26 a
      · exact absurd a u28
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c47 with a|a
    · exact absurd u30 a
    · exact absurd u29 a
  have c3228 : ¬v15 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u4 : v23 := by
      rcases c3216 with a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v8 := by
      rcases c1953 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u9 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
    rcases c40 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c3229 : v32 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v23 := by
      rcases c3216 with a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u4 : ¬v22 := by
      rcases c3221 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v15 := by
      rcases c3228 with a|a
      · exact a
      · exact absurd a n9
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n0
    have u15 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u16 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u15 a
      · exact absurd u14 a
      · exact a
    have u17 : v29 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u4
      · exact a
      · exact absurd a n9
    have u18 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v38 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u11
      · exact a
      · exact absurd a u18
    rcases c2869 with a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c3230 : ¬v23 ∨ v6 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n2
    have u8 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n2
    have u9 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
    have u10 : ¬v17 := by
      rcases c2742 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u1
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v15 := by
      rcases c3228 with a|a
      · exact a
      · exact absurd a n2
    have u16 : v16 := by
      rcases c3227 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u3
    have u17 : v13 := by
      rcases c2740 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
    have u18 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd u16 a
      · exact absurd u8 a
      · exact a
    have u19 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u8 a
    have u20 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u17 a
    have u24 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u17 a
    have u25 : v32 := by
      rcases c3229 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n2
    have u26 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : v3 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u31 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u32 : ¬v1 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u12
    have u33 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u31
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u34 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u22
      · exact absurd a u32
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u5
    have u35 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u34 a
    rcases c210 with a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u35
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u33
    · exact absurd u34 a
  have c3231 : ¬v32 ∨ v15 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v6 := by
      rcases c3220 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v21 := by
      rcases c3216 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u8 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n3
    have u9 : ¬v22 := by
      rcases c3221 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
    have u11 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u6 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
    have u13 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
    have u14 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u18 : ¬v24 := by
      rcases c1448 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n2
      · exact a
    have u19 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u20 : v25 := by
      rcases c3227 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u18
      · exact a
    have u21 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v3 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u20 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u24 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u25 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u16
    have u26 : ¬v36 := by
      rcases c1376 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a n3
    have u27 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a n3
    have u28 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u4
      · exact a
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u9
    have u29 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u29
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u17
      · exact a
    have u32 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u23 a
    have u33 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u23 a
    rcases c1458 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u27
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd a u30
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u22
  have c3232 : v6 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v23 := by
      rcases c3230 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u3 : v21 := by
      rcases c3216 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
    have u4 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u5 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u6 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u8 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u1 a
    have u9 : ¬v22 := by
      rcases c3221 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v32 := by
      rcases c3231 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n1
    have u11 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
    have u12 : v24 := by
      rcases c3227 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact a
      · exact absurd a u11
    have u13 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
    rcases c3226 with a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a n1
  have c3233 : ¬v11 ∨ v15 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n2
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n2
    have u5 : v6 := by
      rcases c3232 with a|a
      · exact a
      · exact absurd a n2
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v23 := by
      rcases c3220 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n2
    have u10 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v17 := by
      rcases c2742 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
    have u16 : ¬v16 := by
      rcases c2740 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
    have u17 : v30 := by
      rcases c1424 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u9 a
    have u18 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u18
    have u21 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u5 a
    have u22 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd u5 a
      · exact absurd u20 a
      · exact a
    rcases c3118 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u21
    · exact absurd u20 a
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c3234 : v15 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v11 := by
      rcases c3233 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v6 := by
      rcases c3232 with a|a
      · exact a
      · exact absurd a n1
    have u5 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v23 := by
      rcases c3220 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
    have u10 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v17 := by
      rcases c2742 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
    have u16 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
    have u17 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v16 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd u9 a
    have u20 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd u19 a
      · exact absurd u1 a
      · exact a
    have u21 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u1 a
    have u22 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd u1 a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
    have u23 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u22 a
    rcases c3202 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd u4 a
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c3235 : v49 := by
    by_contra hc
    have u1 : v15 := by
      rcases c3234 with a|a
      · exact a
      · exact absurd a hc
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a hc
    have u3 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u5 : v23 := by
      rcases c3216 with a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a hc
    have u6 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v8 := by
      rcases c1953 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u10 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
    rcases c40 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c3236 : ¬v15 ∨ ¬v6 ∨ ¬v8 ∨ v17 ∨ v18 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n2 a
      · exact a
    have u11 : v25 := by
      rcases c3202 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
    have u14 : ¬v32 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v19 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u14
    have u16 : ¬v20 := by
      rcases c70 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u15 a
    rcases c1872 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd u15 a
    · exact absurd a u16
    · exact absurd a u12
  have c3237 : ¬v19 ∨ ¬v15 ∨ v20 ∨ v22 ∨ v23 ∨ v26 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
    have u5 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1872 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n5
  have c3238 : v16 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c1380 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : v26 := by
      rcases c1531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c115 with a|a
    · exact absurd n3 a
    · exact absurd u7 a
  have c3239 : ¬v3 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u8 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u9 : v12 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : v10 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c48 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c3240 : ¬v25 ∨ ¬v6 ∨ ¬v15 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v8 := by
      rcases c3236 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
    have u14 : ¬v20 := by
      rcases c1835 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u15 : ¬v19 := by
      rcases c3237 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u16 : v32 := by
      rcases c1740 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact a
    have u17 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v3 := by
      rcases c3239 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u17
    have u19 : v10 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u24 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd n1 a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd n1 a
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u21
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u24
  exact ⟨c3202, c3235, c3236, c3238, c3239, c3240⟩
