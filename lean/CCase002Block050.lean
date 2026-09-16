import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2500-2549 of the 2934-step refutation of ccase002: 120 core clauses and 89 earlier-derived ones give 11 more. -/
theorem CCase002_block050
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c28 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c53 : ¬v11 ∨ ¬v14)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c96 : v15 ∨ v21 ∨ v17 ∨ v20 ∨ v19 ∨ v16)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c103 : ¬v22 ∨ ¬v26)
    (c108 : ¬v26 ∨ ¬v23)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c153 : ¬v42 ∨ ¬v37)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c168 : ¬v48 ∨ ¬v43)
    (c173 : ¬v48 ∨ ¬v44)
    (c174 : ¬v44 ∨ ¬v49)
    (c177 : ¬v45 ∨ ¬v48)
    (c180 : ¬v48 ∨ ¬v46)
    (c182 : ¬v47 ∨ ¬v48)
    (c184 : ¬v49 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c196 : v43 ∨ ¬v9 ∨ v19 ∨ v44 ∨ v17 ∨ v45 ∨ v8 ∨ v16 ∨ v12 ∨ v1 ∨ v11 ∨ v10 ∨ v5 ∨ v2)
    (c203 : ¬v10 ∨ v9 ∨ v4 ∨ v17 ∨ v18 ∨ v3 ∨ v11 ∨ v2)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c262 : v13 ∨ ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v4 ∨ v12 ∨ v11)
    (c266 : v43 ∨ ¬v15 ∨ v49 ∨ v44 ∨ v1 ∨ v22 ∨ v21 ∨ v14 ∨ v17 ∨ v16 ∨ v10 ∨ v23 ∨ v8 ∨ v24)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c291 : ¬v48 ∨ v41 ∨ v6 ∨ v42 ∨ v40 ∨ v7 ∨ v47 ∨ v49)
    (c292 : ¬v48 ∨ v41 ∨ v6 ∨ v40 ∨ v7 ∨ v5 ∨ v47 ∨ v49)
    (c311 : ¬v24 ∨ v31 ∨ v18 ∨ v38 ∨ v30 ∨ v25 ∨ v17 ∨ v33 ∨ v19 ∨ v23 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c372 : v21 ∨ v14 ∨ v1 ∨ v7 ∨ v16 ∨ v9 ∨ v15 ∨ ¬v8)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c421 : ¬v10 ∨ v12 ∨ v44 ∨ v45 ∨ v46 ∨ v2 ∨ v17 ∨ v20 ∨ v6 ∨ v9 ∨ v11 ∨ v3 ∨ v13 ∨ v18)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c486 : ¬v48 ∨ v41 ∨ v40 ∨ v47 ∨ v49 ∨ v5 ∨ v42 ∨ v6)
    (c491 : ¬v48 ∨ v36 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v40 ∨ v7 ∨ v34 ∨ v1 ∨ v43 ∨ v47 ∨ v49)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c805 : ¬v18 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1330 : ¬v13 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v49)
    (c1331 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1338 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v45 ∨ v46)
    (c1363 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1376 : ¬v36 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v43 ∨ v49)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1813 : ¬v4 ∨ ¬v1 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1818 : v19 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v33)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2021 : ¬v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c2126 : ¬v24 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2339 : ¬v16 ∨ v6 ∨ v7 ∨ ¬v13 ∨ ¬v15 ∨ v21)
    (c2372 : ¬v21 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2532 : v14 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v21 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2684 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ ¬v19 ∨ v38 ∨ v45)
    (c2756 : ¬v41 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49)
    (c2787 : ¬v7 ∨ v48 ∨ v49)
    (c2790 : v48 ∨ v49)
    (c2792 : v11 ∨ ¬v6 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2805 : v13 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v49)
    (c2848 : ¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 ∨ v49)
    (c2865 : v9 ∨ ¬v6 ∨ v16 ∨ v23 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2876 : ¬v31 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v21 ∨ v49)
    (c2877 : v31 ∨ ¬v6 ∨ ¬v11 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2887 : v19 ∨ v20 ∨ ¬v27 ∨ ¬v32)
    (c2898 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2904 : ¬v6 ∨ v20 ∨ v26 ∨ v49)
    (c2940 : ¬v4 ∨ v10 ∨ v11 ∨ v15 ∨ v21 ∨ v22 ∨ v29 ∨ v49)
    (c2955 : v33 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v29 ∨ v34 ∨ v36 ∨ v43 ∨ v46 ∨ v47)
    (c2964 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49)
    (c2969 : ¬v39 ∨ v6 ∨ v7 ∨ v49)
    (c2970 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v13 ∨ v20 ∨ v21)
    (c2976 : v34 ∨ v32 ∨ v33 ∨ v39 ∨ ¬v40 ∨ v46 ∨ v47)
    (c2990 : ¬v17 ∨ v20 ∨ v26 ∨ v49)
    (c2999 : ¬v4 ∨ v1 ∨ ¬v5 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v32 ∨ v49)
    (c3008 : v4 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3014 : ¬v4 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v49)
    (c3018 : ¬v36 ∨ v5 ∨ v6 ∨ v49)
    (c3021 : ¬v12 ∨ v5 ∨ v6 ∨ v18 ∨ v19 ∨ v20)
    (c3023 : v5 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49)
    (c3028 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c3036 : ¬v21 ∨ v20 ∨ v26 ∨ v49)
    (c3049 : ¬v8 ∨ v15 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v42 ∨ v49)
    (c3051 : ¬v23 ∨ v20 ∨ v49)
    (c3052 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c3055 : v28 ∨ ¬v7 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v36 ∨ v49)
    (c3061 : v29 ∨ v9 ∨ v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c3065 : ¬v2 ∨ v3 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c3067 : v16 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3069 : ¬v4 ∨ v3 ∨ ¬v7 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c3070 : ¬v32 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c3089 : ¬v7 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c3090 : v16 ∨ ¬v17 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    : (v5 ∨ v6 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49) ∧ (v26 ∨ v1 ∨ v6 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v36 ∨ v49) ∧ (¬v36 ∨ v6 ∨ v17 ∨ v24 ∨ v49) ∧ (v10 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v4 ∨ ¬v3 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v49) ∧ (¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v20 ∨ v21) ∧ (v19 ∨ v4 ∨ v17 ∨ v18 ∨ v23 ∨ v25 ∨ v26 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v38 ∨ v6 ∨ v7 ∨ v49) ∧ (v21 ∨ v20 ∨ v22 ∨ v49) ∧ (¬v4 ∨ v6 ∨ v20 ∨ v22 ∨ v49) ∧ (v15 ∨ v6 ∨ v20 ∨ v22 ∨ v49) := by
  have c3091 : ¬v10 ∨ v7 ∨ v15 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v29 := by
      rcases c2805 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u11 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u13 : v5 := by
      rcases c292 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n7
    have u14 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n4
    rcases c2521 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n7
  have c3092 : v5 ∨ v6 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    rcases c292 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n8
  have c3093 : v28 ∨ v8 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u6 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u7 : ¬v13 := by
      rcases c1330 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
    have u8 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n5
    have u9 : ¬v14 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a u7
    have u10 : v5 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
    rcases c2521 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd u8 a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n8
  have c3094 : ¬v29 ∨ ¬v17 ∨ ¬v18 ∨ ¬v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    rcases c1100 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c3095 : v16 ∨ ¬v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
    have u3 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v18 := by
      rcases c3090 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u13 : ¬v10 := by
      rcases c3091 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v29 := by
      rcases c3094 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact absurd u3 a
    have u15 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u16 : v8 := by
      rcases c3093 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n6
    have u17 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v1 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n3
    have u23 : v42 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n6
    have u24 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u8
    have u25 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v30 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u26
      · exact absurd a u25
    have u28 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u9
      · exact a
    have u29 : ¬v6 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u24
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u30 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u22 a
      · exact absurd u28 a
      · exact a
    rcases c292 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u21
    · exact absurd a u29
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a u30
    · exact absurd a u7
    · exact absurd a n6
  have c3096 : ¬v17 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    have u3 : v26 := by
      rcases c2990 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v16 := by
      rcases c3095 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    have u12 : v33 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact a
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v36 := by
      rcases c1376 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n5
    have u17 : v8 := by
      rcases c3093 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n5
    have u18 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n5
    have u19 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v41 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact a
      · exact absurd a n5
    rcases c2756 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n5
  have c3097 : v22 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
    have u3 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u9 : v8 := by
      rcases c3093 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u15 : v42 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n7
    have u16 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v16 := by
      rcases c3061 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
    have u18 : v1 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n3
    have u19 : v19 := by
      rcases c96 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u17
    have u20 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v34 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd a u5
    have u22 : v35 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n6
      · exact absurd a u21
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u23 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u24
    rcases c2126 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u25
  have c3098 : v49 ∨ ¬v8 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
    have u9 : v27 := by
      rcases c3097 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u10 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n0
    have u11 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u12 : ¬v4 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u13 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u10 a
    have u19 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u10 a
      · exact a
    have u20 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n0
    have u21 : ¬v16 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u15
    have u22 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
    have u23 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a n0
    have u24 : v41 := by
      rcases c292 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a n0
    have u25 : v1 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n1 a
    have u26 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v3 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u18
    rcases c1470 with a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u23
    · exact absurd a u18
  have c3099 : v15 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u3 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u11 : v27 := by
      rcases c3097 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n6
    have u16 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n6
    have u17 : ¬v13 := by
      rcases c1330 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u18 : ¬v8 := by
      rcases c3098 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
    have u20 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u21 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u22 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u23 : ¬v14 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u18
      · exact a
      · exact absurd a u17
    have u24 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u25 : v41 := by
      rcases c292 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n6
    have u26 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u20
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u7
    have u28 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : v16 := by
      rcases c2532 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd u27 a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c649 with a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a n0
    · exact absurd u29 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u14
  have c3100 : v19 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v8 ∨ v17 ∨ v18 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u8 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u9 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u10 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v36 := by
      rcases c3018 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n8
    have u12 : ¬v12 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n0
    have u13 : v32 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
    have u14 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v26 := by
      rcases c2390 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u14
    rcases c2955 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u3
  have c3101 : ¬v26 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v33 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u5 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u7 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1376 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n8
    have u13 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    rcases c2233 with a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n8
  have c3102 : v26 ∨ v1 ∨ v6 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u3 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n10
    have u4 : v42 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n10
    have u5 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u1
    have u9 : ¬v34 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u1
    rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n10
  have c3103 : v21 ∨ v1 ∨ v3 ∨ v6 ∨ v12 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v28 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u3 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u5 : ¬v14 := by
      rcases c2970 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
    have u6 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v26 := by
      rcases c3101 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u11 : v27 := by
      rcases c3102 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v34 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact a
    have u14 : v10 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v2 := by
      rcases c421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd u17 a
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c3104 : ¬v3 ∨ v1 ∨ v6 ∨ v12 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v28 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u2 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n13
    have u4 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n13
    have u5 : v27 := by
      rcases c3102 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v32 := by
      rcases c2887 with a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u5 a
      · exact a
    have u13 : v34 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    have u14 : v4 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n0 a
    have u17 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u6
      · exact a
    have u18 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u17 a
    rcases c2233 with a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a u18
    · exact absurd a n13
  have c3105 : v19 ∨ v1 ∨ v6 ∨ v12 ∨ v13 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u4 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n11
    have u5 : ¬v14 := by
      rcases c2970 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v15 := by
      rcases c98 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v3 := by
      rcases c3103 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v26 := by
      rcases c3104 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v33 := by
      rcases c1818 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd u12 a
      · exact a
    have u16 : v5 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n11
    have u17 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u11 a
    rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c3106 : ¬v26 ∨ v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v17 ∨ v31 ∨ v38 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n8
    have u5 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u6 : v44 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n3
    have u7 : ¬v49 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v48 := by
      rcases c173 with a|a
      · exact a
      · exact absurd u6 a
    rcases c2790 with a|a
    · exact absurd a u8
    · exact absurd a u7
  have c3107 : v20 ∨ v6 ∨ v8 ∨ ¬v15 ∨ ¬v16 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u5 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u7 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n9
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v1 := by
      rcases c3100 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n9
    have u13 : ¬v13 := by
      rcases c2339 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
    have u14 : v12 := by
      rcases c3105 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v14 := by
      rcases c2970 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n5
    have u16 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v5 := by
      rcases c3021 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
    have u19 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v31 := by
      rcases c2876 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n9
    have u21 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v26 := by
      rcases c3106 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
    have u23 : v27 := by
      rcases c3102 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v32 := by
      rcases c2887 with a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u23 a
      · exact a
    have u27 : v3 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u9
    have u28 : v4 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c24 with a|a|a
    · exact absurd u18 a
    · exact absurd u28 a
    · exact absurd u27 a
  have c3108 : v8 ∨ ¬v15 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u4 : v16 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
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
    have u9 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact a
    have u11 : v6 := by
      rcases c3107 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v26 := by
      rcases c2904 with a|a|a|a
      · exact absurd u11 a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
    have u13 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v33 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
      · exact a
    have u16 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u19 : v11 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c2877 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u11 a
    · exact absurd u19 a
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c3109 : ¬v26 ∨ v7 ∨ ¬v8 ∨ v17 ∨ v21 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n2 a
      · exact a
    have u13 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u14 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
    have u19 : v42 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a n6
    have u20 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v3 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u16
    have u23 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u16
    have u24 : v5 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
    have u25 : v4 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u24 a
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    rcases c24 with a|a|a
    · exact absurd u24 a
    · exact absurd u25 a
    · exact absurd u22 a
  have c3110 : ¬v3 ∨ ¬v15 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v8 := by
      rcases c3108 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u3 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v26 := by
      rcases c3109 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v6 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v1 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
    have u16 : v27 := by
      rcases c3102 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v18 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u11
    have u20 : ¬v19 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u19
      · exact a
      · exact absurd a n2
      · exact absurd a u11
    rcases c3105 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c3111 : v49 ∨ v3 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v24 ∨ v26 ∨ v28 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v19 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n11
    have u2 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
    have u3 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
    have u4 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n0
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n0
    have u7 : v15 := by
      rcases c98 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
    have u8 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n0
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v8 := by
      rcases c3108 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u13 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v32 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
    have u17 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u14
    have u18 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u14
    have u19 : v1 := by
      rcases c3102 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u20 : v5 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a n12
      · exact absurd a n0
    rcases c10 with a|a|a
    · exact absurd u19 a
    · exact absurd u20 a
    · exact absurd u18 a
  have c3112 : v24 ∨ ¬v15 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v8 := by
      rcases c3108 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u3 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u4 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u6 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : ¬v3 := by
      rcases c3110 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v26 := by
      rcases c3109 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n7
    have u19 : v18 := by
      rcases c3111 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v25 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd u19 a
      · exact absurd a n0
      · exact a
      · exact absurd a u17
    have u21 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u19 a
    have u22 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v2 := by
      rcases c3067 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u24 : v1 := by
      rcases c3102 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : v5 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n7
    rcases c3 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u25 a
  have c3113 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u8 : v15 := by
      rcases c3099 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u9 : v8 := by
      rcases c3108 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
    have u10 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v24 := by
      rcases c3112 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
    have u15 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n5
    have u18 : v5 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v1 := by
      rcases c3102 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
    have u20 : v4 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    rcases c10 with a|a|a
    · exact absurd u19 a
    · exact absurd u18 a
    · exact absurd u20 a
  have c3114 : v28 ∨ v20 ∨ v21 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
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
    have u8 : ¬v7 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u9 : ¬v17 := by
      rcases c3096 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u10 : v29 := by
      rcases c3113 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u11 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u17 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v40 := by
      rcases c2976 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u19 : v36 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v6 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u20
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n4
    have u23 : v26 := by
      rcases c2904 with a|a|a|a
      · exact absurd u22 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
    have u24 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v19 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u13
    have u27 : ¬v11 := by
      rcases c2877 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u22 a
      · exact a
      · exact absurd a u9
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u28 : v18 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd u22 a
      · exact a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u29 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u28 a
    have u30 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u28 a
    have u31 : ¬v8 := by
      rcases c3049 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a n4
    have u32 : v9 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u30
      · exact absurd a u1
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u33 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u31
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
    have u34 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u32 a
      · exact a
    have u35 : v2 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd a u31
      · exact absurd a u9
      · exact absurd a u29
      · exact absurd a u34
      · exact a
      · exact absurd a u30
      · exact absurd a u33
    have u36 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u34
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u5
    rcases c17 with a|a|a
    · exact absurd u35 a
    · exact absurd u36 a
    · exact absurd u22 a
  have c3115 : ¬v36 ∨ v6 ∨ v17 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v5 := by
      rcases c3018 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
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
    have u11 : v7 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a n4
    have u12 : v29 := by
      rcases c2017 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u13 : ¬v3 := by
      rcases c28 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v4 := by
      rcases c31 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
    have u18 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u17 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u20
  have c3116 : ¬v10 ∨ v3 ∨ ¬v7 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v2 := by
      rcases c3065 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v4 := by
      rcases c3069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v16 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
    have u6 : v18 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
    rcases c805 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c3117 : v3 ∨ ¬v7 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v28 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v10 := by
      rcases c3116 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v34 := by
      rcases c1338 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
    have u7 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    rcases c898 with a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u9
  have c3118 : v10 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v11 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a n0
    have u2 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u2
  have c3119 : ¬v7 ∨ v20 ∨ v21 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2787 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
    have u2 : v28 := by
      rcases c3114 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
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
    have u9 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n4
    have u11 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n4
    have u12 : v3 := by
      rcases c3117 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n0 a
    have u14 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact absurd u12 a
      · exact a
    have u16 : v10 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u12 a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u16 a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd n0 a
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u8
  have c3120 : v15 ∨ v1 ∨ v8 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v29 := by
      rcases c2021 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n5
  have c3121 : ¬v10 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v7 := by
      rcases c3119 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v28 := by
      rcases c3114 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u8 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
    have u17 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
    have u18 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n5
    have u19 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
    have u20 : v15 := by
      rcases c3120 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a u18
      · exact absurd a u15
    have u21 : ¬v18 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd u20 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
    have u22 : ¬v19 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u21
      · exact a
      · exact absurd a n2
      · exact absurd a u8
    have u23 : v5 := by
      rcases c2964 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n5
    have u24 : v4 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u23 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a u1
      · exact absurd a u3
    rcases c24 with a|a|a
    · exact absurd u23 a
    · exact absurd u24 a
    · exact absurd n1 a
  have c3122 : ¬v4 ∨ ¬v3 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c3021 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c3023 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c3123 : ¬v32 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v24 := by
      rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
  have c3124 : ¬v16 ∨ ¬v3 ∨ ¬v15 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
    have u6 : ¬v4 := by
      rcases c3122 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v32 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c3123 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c3125 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2970 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c3126 : v19 ∨ v4 ∨ v17 ∨ v18 ∨ v23 ∨ v25 ∨ v26 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v32 := by
      rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v24 := by
      rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u5
  have c3127 : v18 ∨ v4 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ ¬v28 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : v19 := by
      rcases c3126 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u7 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a u3
      · exact a
    have u9 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v38 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact a
    rcases c2869 with a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u10
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c3128 : v15 ∨ v1 ∨ v7 ∨ v14 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c2021 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n8 a
    have u2 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n7
    rcases c1331 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
  have c3129 : v4 ∨ v1 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v7 := by
      rcases c3119 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v28 := by
      rcases c3114 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
    have u13 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
    have u14 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n6
    have u15 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n6
    have u16 : ¬v14 := by
      rcases c3125 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v10 := by
      rcases c3121 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v18 := by
      rcases c3127 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u19 : ¬v16 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : v15 := by
      rcases c3128 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u3 a
      · exact absurd a u15
      · exact absurd a u11
    have u21 : v8 := by
      rcases c266 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u20 a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u1
      · exact a
      · exact absurd a u7
    have u22 : v11 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u20 a
      · exact absurd u18 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c38 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c3130 : ¬v15 ∨ ¬v3 ∨ v5 ∨ v20 ∨ v21 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c3119 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v28 := by
      rcases c3114 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n6
    have u7 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n6
    have u8 : ¬v16 := by
      rcases c3124 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n6
    have u9 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v19 := by
      rcases c2964 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n6
    have u11 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact a
    rcases c594 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd u10 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u4
  have c3131 : v1 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v22 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c3119 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : v28 := by
      rcases c3114 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n6
    have u7 : ¬v14 := by
      rcases c3125 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : v4 := by
      rcases c3129 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u9 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u10 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u11 : ¬v15 := by
      rcases c3130 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u12 : ¬v29 := by
      rcases c2021 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u2 a
    have u13 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n4
    have u14 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u13 a
      · exact a
    rcases c480 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a n0
  have c3132 : ¬v3 ∨ v20 ∨ v21 ∨ v22 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v1 := by
      rcases c3131 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v2 := by
      rcases c1 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
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
    have u9 : v10 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : v8 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    rcases c37 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c3133 : v15 ∨ v4 ∨ v20 ∨ v21 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u2 : ¬v7 := by
      rcases c3119 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v28 := by
      rcases c3114 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n5
    have u12 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n5
    have u13 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n5
    have u14 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n5
    have u15 : ¬v3 := by
      rcases c3132 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n5
    have u16 : ¬v29 := by
      rcases c2021 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u3 a
    have u17 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact a
    have u18 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u20 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u15
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u9
    have u21 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v16 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u7
    rcases c2532 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd u20 a
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c3134 : ¬v10 ∨ v4 ∨ v6 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
    have u5 : ¬v18 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd n3 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v19 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n9
    have u7 : v39 := by
      rcases c3126 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v32 := by
      rcases c1307 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v48 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact a
    have u14 : ¬v49 := by
      rcases c184 with a|a
      · exact a
      · exact absurd u13 a
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n14
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a n2
  have c3135 : ¬v38 ∨ v6 ∨ v7 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v40 := by
      rcases c2976 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    rcases c291 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n3
  have c3136 : v4 ∨ v20 ∨ v21 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u2 : ¬v7 := by
      rcases c3119 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v28 := by
      rcases c3114 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n4
    have u14 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n4
    have u15 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n4
    have u16 : ¬v38 := by
      rcases c3135 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n4
    have u17 : v15 := by
      rcases c3133 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v10 := by
      rcases c3134 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u19 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
    have u20 : v1 := by
      rcases c3131 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n4
    have u21 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd u19 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    rcases c1 with a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u19 a
  have c3137 : v21 ∨ v20 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u2 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v23 := by
      rcases c3051 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u8 : v4 := by
      rcases c3136 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
    have u10 : v28 := by
      rcases c3114 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n3
    have u15 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n3
    have u16 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
    have u17 : ¬v7 := by
      rcases c3119 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u18 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n3
    have u19 : ¬v38 := by
      rcases c3135 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n3
    have u20 : ¬v3 := by
      rcases c3131 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n3
    have u21 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u4
    have u22 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u21 a
    have u27 : ¬v2 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u9
      · exact a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u28 : v18 := by
      rcases c421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u27
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u24
      · exact a
    have u29 : v19 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd u28 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u30 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u28 a
    have u31 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u28 a
    rcases c3014 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n3
  have c3138 : ¬v15 ∨ ¬v4 ∨ v6 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v20 := by
      rcases c72 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u6 : v26 := by
      rcases c3036 with a|a|a|a
      · exact absurd n3 a
      · exact absurd a u5
      · exact a
      · exact absurd a n7
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
    have u9 : v33 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact a
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
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
    have u15 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u19 : ¬v5 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u18
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n7
    have u20 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u21 : ¬v12 := by
      rcases c3021 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
    have u22 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u12
    have u23 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n1 a
    have u24 : v9 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u23
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u25 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u24 a
      · exact a
    rcases c196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u24 a
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u26
    · exact absurd a u1
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a u23
  have c3139 : ¬v4 ∨ v6 ∨ v20 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v21 := by
      rcases c3137 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v26 := by
      rcases c3036 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
    have u3 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v15 := by
      rcases c3138 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n4
    have u9 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u5
    have u11 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u8
      · exact a
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v17 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u7
    have u16 : v16 := by
      rcases c3014 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u13
  have c3140 : v15 ∨ v6 ∨ v20 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v4 := by
      rcases c3139 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v21 := by
      rcases c3137 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u4 : v26 := by
      rcases c3036 with a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
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
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u12
    have u16 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
    have u17 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n0
      · exact a
    have u18 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u20
    have u23 : ¬v36 := by
      rcases c3018 with a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n4
    have u24 : ¬v17 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u14
    have u25 : ¬v16 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u19
    have u26 : ¬v7 := by
      rcases c3055 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a n4
    have u27 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a n4
    have u28 : ¬v38 := by
      rcases c3135 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a n4
    have u29 : ¬v29 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u30 : v3 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u7
    have u31 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
    have u32 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u30 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c1 with a|a|a
    · exact absurd u31 a
    · exact absurd u32 a
    · exact absurd u30 a
  exact ⟨c3092, c3102, c3115, c3118, c3122, c3125, c3126, c3135, c3137, c3139, c3140⟩
