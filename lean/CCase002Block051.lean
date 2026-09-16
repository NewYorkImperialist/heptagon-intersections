import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2550-2599 of the 2934-step refutation of ccase002: 113 core clauses and 101 earlier-derived ones give 11 more. -/
theorem CCase002_block051
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
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
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c94 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v17)
    (c96 : v15 ∨ v21 ∨ v17 ∨ v20 ∨ v19 ∨ v16)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c99 : v16 ∨ v21 ∨ v18 ∨ v20 ∨ v17 ∨ v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
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
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c152 : ¬v41 ∨ ¬v37)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c168 : ¬v48 ∨ ¬v43)
    (c173 : ¬v48 ∨ ¬v44)
    (c177 : ¬v45 ∨ ¬v48)
    (c180 : ¬v48 ∨ ¬v46)
    (c182 : ¬v47 ∨ ¬v48)
    (c183 : ¬v49 ∨ ¬v47)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c262 : v13 ∨ ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v4 ∨ v12 ∨ v11)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c372 : v21 ∨ v14 ∨ v1 ∨ v7 ∨ v16 ∨ v9 ∨ v15 ∨ ¬v8)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c421 : ¬v10 ∨ v12 ∨ v44 ∨ v45 ∨ v46 ∨ v2 ∨ v17 ∨ v20 ∨ v6 ∨ v9 ∨ v11 ∨ v3 ∨ v13 ∨ v18)
    (c436 : ¬v8 ∨ v9 ∨ v21 ∨ v2 ∨ v14 ∨ v16 ∨ v1 ∨ v15)
    (c444 : v22 ∨ v21 ∨ v18 ∨ v27 ∨ v7 ∨ v15 ∨ v4 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v12 ∨ v6 ∨ v11 ∨ v28)
    (c486 : ¬v48 ∨ v41 ∨ v40 ∨ v47 ∨ v49 ∨ v5 ∨ v42 ∨ v6)
    (c491 : ¬v48 ∨ v36 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v40 ∨ v7 ∨ v34 ∨ v1 ∨ v43 ∨ v47 ∨ v49)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c534 : v44 ∨ v43 ∨ v7 ∨ v14 ∨ v8 ∨ v2 ∨ ¬v1 ∨ v9)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c660 : v31 ∨ v18 ∨ ¬v19 ∨ ¬v20 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1143 : ¬v27 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1238 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1331 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1774 : ¬v3 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    (c1813 : ¬v4 ∨ ¬v1 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1874 : v23 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v26 ∨ v27)
    (c1904 : ¬v18 ∨ ¬v12 ∨ ¬v15 ∨ v17 ∨ v21)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c1974 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v22)
    (c2013 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2070 : ¬v26 ∨ v15 ∨ ¬v16 ∨ v19 ∨ v33)
    (c2086 : ¬v29 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28)
    (c2116 : ¬v22 ∨ v15 ∨ v16 ∨ v29 ∨ v30 ∨ v35)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2228 : v27 ∨ v13 ∨ ¬v17 ∨ ¬v20)
    (c2233 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v49)
    (c2250 : ¬v1 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v49)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2305 : ¬v10 ∨ v3 ∨ v4 ∨ v11 ∨ v16 ∨ v17 ∨ v18)
    (c2312 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2390 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v33)
    (c2440 : v21 ∨ v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ v29)
    (c2484 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v23)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2535 : v21 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2585 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2693 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v43 ∨ v49)
    (c2720 : ¬v17 ∨ v10 ∨ v13 ∨ ¬v20 ∨ v23)
    (c2724 : ¬v18 ∨ v11 ∨ v12 ∨ v17 ∨ ¬v20 ∨ v24 ∨ v25)
    (c2734 : ¬v24 ∨ v13 ∨ ¬v16 ∨ ¬v20)
    (c2742 : ¬v17 ∨ ¬v20 ∨ v24 ∨ v25 ∨ v27)
    (c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2790 : v48 ∨ v49)
    (c2792 : v11 ∨ ¬v6 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2793 : v32 ∨ ¬v6 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2847 : ¬v29 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2848 : ¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 ∨ v49)
    (c2865 : v9 ∨ ¬v6 ∨ v16 ∨ v23 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2877 : v31 ∨ ¬v6 ∨ ¬v11 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2904 : ¬v6 ∨ v20 ∨ v26 ∨ v49)
    (c2913 : ¬v2 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v49)
    (c2952 : ¬v34 ∨ ¬v1 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v49)
    (c2955 : v33 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v29 ∨ v34 ∨ v36 ∨ v43 ∨ v46 ∨ v47)
    (c2964 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49)
    (c2969 : ¬v39 ∨ v6 ∨ v7 ∨ v49)
    (c2976 : v34 ∨ v32 ∨ v33 ∨ v39 ∨ ¬v40 ∨ v46 ∨ v47)
    (c2990 : ¬v17 ∨ v20 ∨ v26 ∨ v49)
    (c2999 : ¬v4 ∨ v1 ∨ ¬v5 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v32 ∨ v49)
    (c3008 : v4 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3014 : ¬v4 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v22 ∨ v23 ∨ v49)
    (c3018 : ¬v36 ∨ v5 ∨ v6 ∨ v49)
    (c3021 : ¬v12 ∨ v5 ∨ v6 ∨ v18 ∨ v19 ∨ v20)
    (c3023 : v5 ∨ ¬v4 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49)
    (c3026 : v3 ∨ v4 ∨ v6 ∨ v10 ∨ v12 ∨ v13 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v45 ∨ v46 ∨ v47)
    (c3028 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c3036 : ¬v21 ∨ v20 ∨ v26 ∨ v49)
    (c3052 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c3054 : v49 ∨ ¬v7 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v29 ∨ v36)
    (c3065 : ¬v2 ∨ v3 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c3070 : ¬v32 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c3092 : v5 ∨ v6 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49)
    (c3102 : v26 ∨ v1 ∨ v6 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v36 ∨ v49)
    (c3115 : ¬v36 ∨ v6 ∨ v17 ∨ v24 ∨ v49)
    (c3118 : v10 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v44 ∨ v45 ∨ v46)
    (c3122 : ¬v4 ∨ ¬v3 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v49)
    (c3126 : v19 ∨ v4 ∨ v17 ∨ v18 ∨ v23 ∨ v25 ∨ v26 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3135 : ¬v38 ∨ v6 ∨ v7 ∨ v49)
    (c3137 : v21 ∨ v20 ∨ v22 ∨ v49)
    (c3139 : ¬v4 ∨ v6 ∨ v20 ∨ v22 ∨ v49)
    (c3140 : v15 ∨ v6 ∨ v20 ∨ v22 ∨ v49)
    : (¬v10 ∨ v2 ∨ v3 ∨ v6 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46) ∧ (v20 ∨ v49) ∧ (¬v8 ∨ v1 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v21) ∧ (v18 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v22 ∨ v13 ∨ v19 ∨ ¬v20 ∨ v21) ∧ (v21 ∨ v6 ∨ v8 ∨ v10 ∨ v15 ∨ v17 ∨ v23 ∨ v24 ∨ v49) ∧ (v15 ∨ v6 ∨ v10 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v49) ∧ (¬v25 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ v23) ∧ (¬v17 ∨ v6 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v49) ∧ (v16 ∨ v6 ∨ v15 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49) ∧ (¬v25 ∨ v6 ∨ v15 ∨ v16 ∨ v21 ∨ v49) := by
  have c3141 : v6 ∨ v20 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v21 := by
      rcases c3137 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v26 := by
      rcases c3036 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
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
    have u9 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v4 := by
      rcases c3139 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : v15 := by
      rcases c3140 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact a
    have u14 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact a
    have u15 : v33 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n1
      · exact a
    have u16 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c3008 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c3142 : v15 ∨ v20 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v6 := by
      rcases c3141 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v21 := by
      rcases c3137 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u4 : v26 := by
      rcases c2904 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
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
    have u14 : ¬v13 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
    have u15 : v14 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact a
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u20 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v16 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd u19 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u24 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd u1 a
      · exact absurd a u18
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u25 : v19 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
    rcases c77 with a|a|a
    · exact absurd u23 a
    · exact absurd u25 a
    · exact absurd u24 a
  have c3143 : v22 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n2
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
    have u6 : v15 := by
      rcases c3142 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u7 : v21 := by
      rcases c3137 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u8 : v26 := by
      rcases c3036 with a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u9 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v17 := by
      rcases c66 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v33 := by
      rcases c2390 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n1
      · exact a
    have u15 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u18 : v6 := by
      rcases c3141 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u19 : v11 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    rcases c2877 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u18 a
    · exact absurd u19 a
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c3144 : v18 ∨ ¬v4 ∨ v16 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v22 := by
      rcases c3143 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
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
    have u8 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
    have u14 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
    have u15 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
    have u16 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
    have u17 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n4
    have u18 : v19 := by
      rcases c99 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact a
    have u19 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
    have u20 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u25 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u16
      · exact a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u7
    have u26 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
    have u27 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u28 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u29 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a n4
    have u30 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u27 a
    have u32 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u27 a
    have u33 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u30
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n4
    have u34 : ¬v5 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u32
      · exact absurd a n4
    have u35 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u32
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u36 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u35 a
    have u37 : v40 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u36
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd a u16
    rcases c2976 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u29
    · exact absurd u37 a
    · exact absurd a u4
    · exact absurd a u3
  have c3145 : ¬v18 ∨ ¬v4 ∨ v6 ∨ ¬v15 ∨ v17 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v20 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u3 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v12 := by
      rcases c1904 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u6 : v22 := by
      rcases c3143 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
    have u7 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v5 := by
      rcases c3023 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u13 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
    rcases c3135 with a|a|a|a
    · exact absurd u13 a
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n10
  have c3146 : v5 ∨ ¬v4 ∨ v18 ∨ v19 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v22 := by
      rcases c3143 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
    have u6 : ¬v12 := by
      rcases c3021 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c3023 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n5
  have c3147 : ¬v4 ∨ ¬v15 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v22 := by
      rcases c3143 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u6 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
    have u12 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
    have u13 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
    have u14 : ¬v18 := by
      rcases c3145 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
    have u15 : v16 := by
      rcases c3144 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v3 := by
      rcases c3122 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
    have u18 : v5 := by
      rcases c3146 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n0 a
    have u20 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u18 a
      · exact absurd n0 a
      · exact a
    have u21 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n3
    have u22 : ¬v38 := by
      rcases c3135 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n3
    have u23 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u4
    have u24 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u23 a
    rcases c421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u24
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u17
    · exact absurd a u26
    · exact absurd a u14
  have c3148 : ¬v10 ∨ v2 ∨ v3 ∨ v6 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    rcases c421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n5
  have c3149 : ¬v39 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n2
    have u4 : v22 := by
      rcases c3143 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u9 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v32 := by
      rcases c1307 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
    have u13 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
    have u14 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
    have u15 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : v7 := by
      rcases c2969 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
    have u19 : v15 := by
      rcases c1805 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
    have u20 : ¬v4 := by
      rcases c3147 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a n2
    have u21 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n0 a
      · exact a
    have u22 : v5 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u14
    have u23 : ¬v3 := by
      rcases c28 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u18 a
    have u24 : v10 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u23
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u25 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u24 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd u22 a
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u27
  have c3150 : v18 ∨ v4 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v22 := by
      rcases c3143 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
    have u13 : ¬v39 := by
      rcases c3149 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u14 : v19 := by
      rcases c3126 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u9
      · exact a
    have u18 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u20
  have c3151 : ¬v15 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v22 := by
      rcases c3143 with a|a|a
      · exact a
      · exact absurd a n1
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
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
    have u13 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
    have u14 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
    have u15 : ¬v4 := by
      rcases c3147 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u16 : v18 := by
      rcases c3150 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u16 a
    have u18 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
    have u19 : ¬v12 := by
      rcases c1904 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u12
    have u20 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v3 := by
      rcases c3026 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u23 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd u22 a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u24 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u22 a
    have u25 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u22 a
    rcases c2964 with a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n2
  have c3152 : v19 ∨ v15 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v16 := by
      rcases c96 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u2 : v18 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
    have u3 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u3 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u6
  have c3153 : v10 ∨ v4 ∨ v6 ∨ v15 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n13
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n13
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
    have u8 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n10
    have u11 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
    have u13 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
    have u14 : v42 := by
      rcases c2535 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n12
      · exact a
      · exact absurd a n13
    have u15 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v29 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n13
    have u18 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u9
    have u19 : v22 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : v26 := by
      rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n13
    rcases c103 with a|a
    · exact absurd u19 a
    · exact absurd u20 a
  have c3154 : ¬v10 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v22 := by
      rcases c3143 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v15 := by
      rcases c3151 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n2
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
    have u17 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
    have u18 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
    have u19 : v19 := by
      rcases c3152 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd u4 a
    have u21 : ¬v16 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u22 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd u4 a
    have u23 : v29 := by
      rcases c2440 with a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd u4 a
      · exact absurd a u12
      · exact a
    have u24 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u25 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u23 a
      · exact a
    rcases c2913 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a n2
  have c3155 : v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n1
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
    have u6 : ¬v10 := by
      rcases c3154 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u7 : v22 := by
      rcases c3143 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u8 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n1
    have u15 : ¬v15 := by
      rcases c3151 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u16 : ¬v21 := by
      rcases c3036 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n1
    have u17 : ¬v17 := by
      rcases c2990 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n1
    have u18 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd u7 a
    have u19 : v19 := by
      rcases c3152 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v16 := by
      rcases c2013 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u21 : v29 := by
      rcases c2440 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd u7 a
      · exact absurd a u13
      · exact a
    have u22 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u26 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
    have u27 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u28 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
    have u29 : v4 := by
      rcases c3153 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a n1
    have u30 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u29 a
    have u31 : v9 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u30
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u32 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u31 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u32
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u30
    · exact absurd a u20
    · exact absurd a u28
  have c3156 : v7 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v38 := by
      rcases c3135 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
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
    have u8 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
    have u9 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
    have u10 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u11 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
    have u12 : ¬v8 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u13 : ¬v9 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u9
    have u14 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u15 : v22 := by
      rcases c3014 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n11
    have u16 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u15 a
      · exact a
    rcases c2440 with a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u15 a
    · exact absurd a u16
    · exact absurd a u14
  have c3157 : v16 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
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
    have u7 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n12
    have u8 : v7 := by
      rcases c3156 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u9 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u11 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u12 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n12
    · exact absurd a n2
    · exact absurd u8 a
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u6
  have c3158 : ¬v4 ∨ v6 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v18 := by
      rcases c3157 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n11
    have u3 : ¬v19 := by
      rcases c89 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u4 : v27 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u5 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u5 a
    rcases c3014 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n11
  have c3159 : ¬v8 ∨ v1 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    rcases c436 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
  have c3160 : v9 ∨ ¬v4 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
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
    have u7 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
    have u8 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v8 := by
      rcases c3159 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n5
  have c3161 : ¬v4 ∨ v6 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
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
    have u7 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
    have u8 : v26 := by
      rcases c3158 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
    have u9 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v9 := by
      rcases c3160 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n10
    have u13 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v2 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u7
    have u18 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u3
    have u19 : ¬v5 := by
      rcases c19 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n0 a
    rcases c3092 with a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n10
  have c3162 : v18 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v32 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v39 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a u1
    have u3 : v47 := by
      rcases c1307 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u4 : ¬v49 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v48 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    rcases c2790 with a|a
    · exact absurd a u5
    · exact absurd a u4
  have c3163 : v4 ∨ v6 ∨ ¬v9 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u8 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n10
    have u9 : ¬v18 := by
      rcases c2724 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd u8 a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v3 := by
      rcases c3162 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n10
    have u16 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u13
    have u17 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n10
    have u18 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n9
      · exact a
    have u19 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v22 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u13
      · exact a
    rcases c2116 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u20
  have c3164 : ¬v22 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v49 := by
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
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u7 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n8
    have u8 : v29 := by
      rcases c2440 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v17 := by
      rcases c2742 with a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u12 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n8
    have u14 : v42 := by
      rcases c2535 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u12
      · exact a
      · exact absurd a n8
    have u15 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u14 a
      · exact a
    rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n8
  have c3165 : v10 ∨ ¬v3 ∨ v6 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c3161 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v19 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n6
    have u3 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u5 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n12
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
    have u10 : v2 := by
      rcases c3118 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u12 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u13 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n12
    have u14 : ¬v22 := by
      rcases c3164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n12
    have u15 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n12
    have u16 : ¬v38 := by
      rcases c3135 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n12
    have u17 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u14
    have u18 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v28 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u14
      · exact absurd a n9
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u23 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a n7
    · exact absurd u2 a
    · exact absurd u5 a
    · exact absurd u22 a
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c3166 : v16 ∨ v6 ∨ v8 ∨ v10 ∨ v15 ∨ v17 ∨ v18 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c3161 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
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
    have u8 : ¬v3 := by
      rcases c3165 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
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
    have u9 : ¬v32 := by
      rcases c3070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
    have u11 : v11 := by
      rcases c3162 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u13 : v7 := by
      rcases c3135 with a|a|a|a
      · exact absurd u10 a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
    have u14 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v1 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a u7
    rcases c962 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd u13 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u4
  have c3167 : v8 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : v22 := by
      rcases c3054 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n9
    have u8 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    rcases c2440 with a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u6
  have c3168 : v25 ∨ v6 ∨ v8 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c3161 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n10
    have u5 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v18 := by
      rcases c3166 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u9 : ¬v9 := by
      rcases c3163 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u10 : ¬v7 := by
      rcases c3167 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n10
    have u11 : ¬v38 := by
      rcases c3135 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n10
    have u12 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u5
    have u13 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u14 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n10
    have u15 : ¬v22 := by
      rcases c3164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n10
    have u16 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u15
    have u17 : v28 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a n8
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u17 a
    rcases c673 with a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u8 a
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u19
  have c3169 : v15 ∨ v6 ∨ v10 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
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
    have u6 : ¬v4 := by
      rcases c3161 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v8 := by
      rcases c3168 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u8 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v18 := by
      rcases c2724 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v3 := by
      rcases c3162 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v1 := by
      rcases c2312 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v7 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
    rcases c372 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd u7 a
  have c3170 : ¬v22 ∨ v13 ∨ v19 ∨ ¬v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c3171 : v7 ∨ v6 ∨ v10 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n10
    have u5 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n4 a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v38 := by
      rcases c3135 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n10
    have u11 : v3 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
    have u12 : ¬v1 := by
      rcases c1844 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u13 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n6
    have u14 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v28 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v26 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a u14
    have u17 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1281 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u16
    · exact absurd a u17
  have c3172 : v10 ∨ v6 ∨ v15 ∨ v17 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n8
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
    have u7 : v16 := by
      rcases c3169 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v18 := by
      rcases c78 with a|a|a
      · exact absurd u7 a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd u7 a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n5
    have u11 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v22 := by
      rcases c3170 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n4
    have u13 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
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
    have u17 : v7 := by
      rcases c3171 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v1 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a u15
      · exact a
      · exact absurd a u14
      · exact absurd a u6
    have u19 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
    have u20 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
    rcases c3162 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c3173 : v49 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n0
    have u2 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
    have u8 : v22 := by
      rcases c3054 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u8 a
      · exact a
    rcases c2440 with a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd u8 a
    · exact absurd a u9
    · exact absurd a u6
  have c3174 : v10 ∨ v6 ∨ v8 ∨ v15 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v25 := by
      rcases c3172 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
    have u2 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
    have u12 : ¬v16 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
    have u13 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v7 := by
      rcases c3173 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v5 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n9
    have u17 : v1 := by
      rcases c3102 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n9
    rcases c2521 with a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd u17 a
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n9
  have c3175 : v12 ∨ v4 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ ¬v14 ∨ v15 ∨ v18 ∨ v21 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n6 a
      · exact a
    rcases c444 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n12
  have c3176 : ¬v14 ∨ v4 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ v15 ∨ v18 ∨ v21 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v12 := by
      rcases c3175 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c55 with a|a
    · exact absurd u1 a
    · exact absurd n0 a
  have c3177 : ¬v14 ∨ v4 ∨ v6 ∨ v7 ∨ v8 ∨ v15 ∨ v18 ∨ v21 ∨ v22 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    rcases c3176 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c3178 : v21 ∨ v6 ∨ v8 ∨ v10 ∨ v15 ∨ v17 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v25 := by
      rcases c3172 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v28 := by
      rcases c117 with a|a
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
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v16 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u7
    have u14 : v19 := by
      rcases c3174 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u14 a
    have u16 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
    have u17 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u6
    have u18 : ¬v7 := by
      rcases c3054 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u1
    have u19 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u20 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u21 : v14 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u18
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
    rcases c3177 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
  have c3179 : v17 ∨ v6 ∨ v10 ∨ v15 ∨ v21 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v8 := by
      rcases c3178 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u4 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u2 a
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
    have u15 : v25 := by
      rcases c3172 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u16 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v16 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u18
    have u21 : ¬v4 := by
      rcases c3160 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n7
    have u22 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
    have u23 : v7 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n7
    have u24 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
    have u25 : ¬v2 := by
      rcases c3065 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u23 a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u26 : v30 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u27 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a u28
    · exact absurd a u27
  have c3180 : v16 ∨ ¬v8 ∨ v15 ∨ v17 ∨ v21 ∨ v23 ∨ ¬v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u6 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n6 a
    have u9 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u11 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n7
    have u12 : v19 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a u1
    have u13 : ¬v4 := by
      rcases c3160 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n7
    have u14 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    have u18 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd n6 a
    have u19 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a u18
  have c3181 : v15 ∨ v6 ∨ v10 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n7
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
    have u7 : v24 := by
      rcases c3179 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u8 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u10
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u15 : ¬v8 := by
      rcases c3180 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u7 a
      · exact absurd a n7
    have u16 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
    have u17 : ¬v7 := by
      rcases c3054 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u14
    have u18 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u19 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u20 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n7
    have u21 : v14 := by
      rcases c3092 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
    have u22 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v19 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u10
    have u25 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u24 a
    have u26 : ¬v32 := by
      rcases c1448 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u25
      · exact absurd a n6
      · exact absurd u7 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u25
    · exact absurd a u4
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u26
  have c3182 : v17 ∨ v6 ∨ v10 ∨ v15 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v16 := by
      rcases c3181 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c2484 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
    have u5 : ¬v22 := by
      rcases c3170 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n4
    have u6 : ¬v24 := by
      rcases c2734 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd u2 a
    have u7 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u6
    have u8 : v8 := by
      rcases c3178 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
    rcases c36 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c3183 : v7 ∨ v4 ∨ v6 ∨ v11 ∨ v14 ∨ v18 ∨ v21 ∨ v22 ∨ v25 ∨ v28 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u3 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u2 a
      · exact a
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
    have u7 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n8
      · exact a
    have u8 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u14 : v40 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u1
      · exact a
    have u15 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n11
    have u16 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u14 a
    rcases c2233 with a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a n11
  have c3184 : ¬v24 ∨ v6 ∨ v10 ∨ v15 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
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
    have u6 : v17 := by
      rcases c3182 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u8 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n5
    have u9 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u6 a
    have u10 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u6 a
    have u11 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd u6 a
      · exact absurd u8 a
      · exact a
    have u12 : v13 := by
      rcases c2720 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n2
      · exact a
      · exact absurd u8 a
      · exact absurd a u3
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
    have u18 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u12 a
    have u20 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u12 a
    have u21 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    have u22 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u12 a
    have u23 : ¬v4 := by
      rcases c3160 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
    have u24 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u9
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
    have u25 : v7 := by
      rcases c3183 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a n5
    have u26 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
    have u27 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u28 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u16
    have u29 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n5
    have u30 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u20
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u1
    have u31 : v5 := by
      rcases c2955 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u23
      · exact a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
    rcases c2521 with a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n5
  have c3185 : ¬v25 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1874 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u2
  have c3186 : v10 ∨ v6 ∨ v15 ∨ v21 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n5
    have u2 : v17 := by
      rcases c3182 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u4 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u5 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u6 : v13 := by
      rcases c2720 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
    have u7 : ¬v25 := by
      rcases c3185 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v24 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u8
    rcases c3184 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
  have c3187 : ¬v17 ∨ v6 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v49 := by
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
    have u8 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u10 : ¬v25 := by
      rcases c3185 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v10 := by
      rcases c3186 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v22 := by
      rcases c3170 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n4
    have u18 : ¬v4 := by
      rcases c3160 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v27 := by
      rcases c2228 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd u2 a
    have u20 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u15
    have u24 : ¬v36 := by
      rcases c3018 with a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n6
    have u25 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u3
    have u26 : ¬v29 := by
      rcases c3028 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u27 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u17
    have u28 : ¬v34 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n6
    have u29 : v33 := by
      rcases c2955 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
    have u30 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u31
    · exact absurd a u10
    · exact absurd a u30
  have c3188 : v36 ∨ v6 ∨ v15 ∨ v16 ∨ v18 ∨ v21 ∨ v23 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c3187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v10 := by
      rcases c3181 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v1 := by
      rcases c2250 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u14 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n8
    have u15 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u12
    have u16 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n8
    have u17 : ¬v22 := by
      rcases c3164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n8
    have u18 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u17
    have u19 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u21 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a u19
    rcases c2579 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c3189 : v16 ∨ v6 ∨ v15 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v17 := by
      rcases c3187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u2 : v10 := by
      rcases c3181 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u3 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
    have u5 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v18 := by
      rcases c3188 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v19 := by
      rcases c89 with a|a|a
      · exact absurd u9 a
      · exact absurd u3 a
      · exact a
    have u11 : v26 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u12 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u11 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u8
  have c3190 : ¬v25 ∨ v6 ∨ v15 ∨ v16 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v17 := by
      rcases c3187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
    have u8 : v10 := by
      rcases c3181 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
    have u9 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u10 : v20 := by
      rcases c3155 with a|a
      · exact a
      · exact absurd a n5
    have u11 : ¬v36 := by
      rcases c3115 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u12 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u21 : v19 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u21 a
    have u23 : ¬v29 := by
      rcases c2086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v7 := by
      rcases c3054 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u11
    have u25 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u3
    have u26 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n5
    have u27 : v2 := by
      rcases c534 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd u25 a
      · exact absurd a u12
    have u28 : v3 := by
      rcases c2305 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u22
    rcases c1 with a|a|a
    · exact absurd u25 a
    · exact absurd u27 a
    · exact absurd u28 a
  exact ⟨c3148, c3155, c3159, c3162, c3170, c3178, c3181, c3185, c3187, c3189, c3190⟩
