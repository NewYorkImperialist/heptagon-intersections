import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2350-2399 of the 2934-step refutation of ccase002: 107 core clauses and 68 earlier-derived ones give 14 more. -/
theorem CCase002_block047
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
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
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c96 : v15 ∨ v21 ∨ v17 ∨ v20 ∨ v19 ∨ v16)
    (c97 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v20)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c124 : ¬v32 ∨ ¬v29)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c135 : ¬v31 ∨ ¬v34)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c146 : ¬v40 ∨ ¬v36)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c168 : ¬v48 ∨ ¬v43)
    (c173 : ¬v48 ∨ ¬v44)
    (c177 : ¬v45 ∨ ¬v48)
    (c180 : ¬v48 ∨ ¬v46)
    (c182 : ¬v47 ∨ ¬v48)
    (c184 : ¬v49 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c216 : ¬v48 ∨ v41 ∨ v47 ∨ v6 ∨ v7 ∨ v5 ∨ v42 ∨ v49)
    (c217 : ¬v48 ∨ v6 ∨ v5 ∨ v27 ∨ v26 ∨ v34 ∨ v39 ∨ v28 ∨ v42 ∨ v41 ∨ v4 ∨ v46 ∨ v47 ∨ v49)
    (c221 : ¬v25 ∨ v32 ∨ v18 ∨ v33 ∨ v31 ∨ v26 ∨ v24 ∨ v19)
    (c262 : v13 ∨ ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v4 ∨ v12 ∨ v11)
    (c265 : ¬v40 ∨ v33 ∨ v39 ∨ v41 ∨ v32 ∨ v34 ∨ v46 ∨ v47)
    (c278 : v21 ∨ v13 ∨ v1 ∨ v20 ∨ v6 ∨ ¬v14 ∨ v8 ∨ v7)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c291 : ¬v48 ∨ v41 ∨ v6 ∨ v42 ∨ v40 ∨ v7 ∨ v47 ∨ v49)
    (c292 : ¬v48 ∨ v41 ∨ v6 ∨ v40 ∨ v7 ∨ v5 ∨ v47 ∨ v49)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c431 : ¬v31 ∨ v38 ∨ v24 ∨ v37 ∨ v32 ∨ v30 ∨ v23 ∨ v39)
    (c451 : ¬v33 ∨ v40 ∨ v27 ∨ v32 ∨ v28 ∨ v4 ∨ v26 ∨ v34 ∨ v35 ∨ v39 ∨ v42 ∨ v6 ∨ v5 ∨ v47)
    (c473 : ¬v48 ∨ v6 ∨ v12 ∨ v42 ∨ v2 ∨ v41 ∨ v14 ∨ v13 ∨ v5 ∨ v37 ∨ v43 ∨ v44 ∨ v47 ∨ v49)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c486 : ¬v48 ∨ v41 ∨ v40 ∨ v47 ∨ v49 ∨ v5 ∨ v42 ∨ v6)
    (c491 : ¬v48 ∨ v36 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v40 ∨ v7 ∨ v34 ∨ v1 ∨ v43 ∨ v47 ∨ v49)
    (c494 : v43 ∨ v29 ∨ v21 ∨ v23 ∨ ¬v22 ∨ v30 ∨ v34 ∨ v20 ∨ v36 ∨ v15 ∨ v27 ∨ v28 ∨ v44 ∨ v49)
    (c502 : ¬v48 ∨ v41 ∨ v6 ∨ v21 ∨ v19 ∨ v1 ∨ v36 ∨ v13 ∨ v20 ∨ v5 ∨ v42 ∨ v43 ∨ v47 ∨ v49)
    (c521 : ¬v33 ∨ v40 ∨ v27 ∨ v26 ∨ v25 ∨ v32 ∨ v39 ∨ v34)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1275 : ¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1375 : ¬v40 ∨ v4 ∨ v5 ∨ v6 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47)
    (c1423 : ¬v34 ∨ v15 ∨ v16 ∨ ¬v23)
    (c1483 : v6 ∨ v5 ∨ v12 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21)
    (c1554 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v41 ∨ v42)
    (c1574 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    (c1813 : ¬v4 ∨ ¬v1 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17)
    (c2015 : ¬v34 ∨ v15 ∨ v21 ∨ ¬v22)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2377 : ¬v40 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v49)
    (c2381 : ¬v19 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v17 ∨ v23)
    (c2389 : ¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44)
    (c2421 : v23 ∨ ¬v1 ∨ v9 ∨ v14 ∨ v16 ∨ v21 ∨ v22 ∨ v24 ∨ v28 ∨ v29 ∨ ¬v40 ∨ v44 ∨ v49)
    (c2440 : v21 ∨ v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ v29)
    (c2490 : v46 ∨ v4 ∨ v11 ∨ ¬v16 ∨ v18 ∨ v26 ∨ ¬v30 ∨ v45)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2499 : v22 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v19 ∨ v20 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2535 : v21 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2566 : v4 ∨ ¬v15 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2585 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2616 : ¬v40 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c2620 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v44)
    (c2697 : ¬v15 ∨ v10 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24 ∨ v26)
    (c2731 : v24 ∨ v16 ∨ v23 ∨ v48 ∨ v49)
    (c2755 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v36 ∨ v42)
    (c2756 : ¬v41 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v49)
    (c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2790 : v48 ∨ v49)
    (c2848 : ¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 ∨ v49)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2892 : v28 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v49)
    (c2903 : v11 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v49)
    (c2904 : ¬v6 ∨ v20 ∨ v26 ∨ v49)
    (c2913 : ¬v2 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v49)
    (c2928 : ¬v29 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49)
    (c2935 : ¬v21 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49)
    (c2936 : v39 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ ¬v32 ∨ v49)
    : (¬v4 ∨ v10 ∨ v11 ∨ v15 ∨ v21 ∨ v22 ∨ v29 ∨ v49) ∧ (v19 ∨ v11 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v49) ∧ (¬v12 ∨ v8 ∨ v11 ∨ v15 ∨ ¬v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v29 ∨ v49) ∧ (¬v32 ∨ v5 ∨ v12 ∨ v19 ∨ v20 ∨ v26 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v34 ∨ ¬v1 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v49) ∧ (v33 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v29 ∨ v34 ∨ v36 ∨ v43 ∨ v46 ∨ v47) ∧ (v23 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v28 ∨ v49) ∧ (v32 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v39 ∨ v40) ∧ (v7 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49) ∧ (¬v39 ∨ v6 ∨ v7 ∨ v49) ∧ (¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v13 ∨ v20 ∨ v21) ∧ (v34 ∨ v32 ∨ v33 ∨ v39 ∨ ¬v40 ∨ v46 ∨ v47) ∧ (v22 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v27 ∨ v49) ∧ (v27 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49) := by
  have c2937 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v36 ∨ v39 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n12
      · exact a
    have u2 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v34 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v35 := by
      rcases c2755 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
    rcases c1554 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
  have c2938 : v28 ∨ v4 ∨ v8 ∨ v11 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n15
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n15
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
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n15
    have u8 : ¬v12 := by
      rcases c2499 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n15
    have u9 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
    have u10 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n15
    have u11 : ¬v13 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v32 := by
      rcases c2936 with a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n11
      · exact a
      · exact absurd a n15
    have u13 : v33 := by
      rcases c2937 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v40 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a u14
    have u17 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n15
    have u18 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u16 a
    rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a u14
    · exact absurd a n14
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n15
  have c2939 : v21 ∨ v4 ∨ v11 ∨ v15 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v8 := by
      rcases c2938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n14
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n14
    have u4 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n2
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n14
    have u12 : ¬v32 := by
      rcases c2936 with a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n9
      · exact a
      · exact absurd a n14
    have u13 : v33 := by
      rcases c2937 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v40 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n13
      · exact absurd a u14
    have u17 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n14
    have u18 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u16 a
    rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a u14
    · exact absurd a n13
    · exact absurd a n11
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n14
  have c2940 : ¬v4 ∨ v10 ∨ v11 ∨ v15 ∨ v21 ∨ v22 ∨ v29 ∨ v49 := by
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
    have u7 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u8 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
    have u9 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n6
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
    have u10 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
    rcases c480 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u8
  have c2941 : v22 ∨ v10 ∨ v11 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v4 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n13
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n13
    have u4 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u9 : ¬v12 := by
      rcases c2499 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u10 : v39 := by
      rcases c2939 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
    have u11 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v7 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a n13
    have u15 : v5 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n13
      · exact a
      · exact absurd a u12
      · exact absurd a u2
    have u16 : v13 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n2
    have u17 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u18 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u16 a
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n12
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a n0
  have c2942 : v19 ∨ v11 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n12
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
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
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u8 : v10 := by
      rcases c2941 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
    have u11 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u12 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
    have u13 : v39 := by
      rcases c2938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u9
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
      · exact absurd a n11
      · exact a
      · exact absurd a n12
    have u14 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u13 a
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u1
  have c2943 : v13 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
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
    have u7 : ¬v5 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
    have u8 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u3
      · exact a
    have u10 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v34 := by
      rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n9
      · exact a
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
    have u14 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n8
      · exact a
    rcases c138 with a|a
    · exact absurd u13 a
    · exact absurd u14 a
  have c2944 : v19 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
    have u2 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u4 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
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
    have u10 : v15 := by
      rcases c2942 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n10
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u12 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n2 a
    have u13 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u10 a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n9
    have u15 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v4 := by
      rcases c2943 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u22 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u23 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
    have u24 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
    have u25 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
    have u26 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n10
  have c2945 : ¬v32 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u4 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u7 : ¬v2 := by
      rcases c2913 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
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
    have u12 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a u7
    have u13 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c2152 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2946 : ¬v24 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u4 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
    have u8 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u9 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
    have u10 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
    have u11 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v19 := by
      rcases c2944 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
    have u15 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n2 a
    have u16 : ¬v15 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u14 a
    have u17 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u14 a
    have u18 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v12 := by
      rcases c1001 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a n3
    have u21 : ¬v4 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n4
    have u22 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v32 := by
      rcases c2945 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
    have u25 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a u24
  have c2947 : ¬v12 ∨ v8 ∨ v11 ∨ v15 ∨ ¬v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v4 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v24 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n10
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u10 : ¬v6 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u11 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n7
    have u12 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u13 : v19 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u2
    have u14 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n4 a
    have u15 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u13 a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd n4 a
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a n2
  have c2948 : v15 ∨ v11 ∨ ¬v17 ∨ v20 ∨ ¬v22 ∨ v23 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
    have u3 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
    have u6 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd n4 a
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
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
    have u12 : v16 := by
      rcases c2440 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a u5
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u14 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u12 a
      · exact absurd n2 a
      · exact a
    have u15 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd n4 a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n8
    have u16 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v4 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd u15 a
      · exact absurd a u9
    have u18 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n8
    have u19 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u20 : v7 := by
      rcases c2535 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n8
    have u21 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u20 a
    have u22 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u17 a
    rcases c1574 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd u17 a
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c2949 : ¬v32 ∨ v5 ∨ v12 ∨ v19 ∨ v20 ∨ v26 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    have u5 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n8
      · exact a
    have u6 : ¬v49 := by
      rcases c184 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
    have u13 : v7 := by
      rcases c216 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u6
    have u14 : v4 := by
      rcases c1375 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
    have u16 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u17 : v11 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd u14 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u17 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd u13 a
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u8
  have c2950 : v20 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ ¬v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v30 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n16
    have u4 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n18
    have u6 : ¬v32 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v31 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u7
    have u9 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a u7
      · exact a
      · exact absurd a u6
    have u10 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v34 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : v33 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u1
    rcases c140 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c2951 : v18 ∨ v11 ∨ v12 ∨ v15 ∨ v16 ∨ ¬v17 ∨ v20 ∨ v21 ∨ v24 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v19 := by
      rcases c97 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
    have u2 : v13 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n9
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v23 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n5 a
      · exact a
    have u6 : v25 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u3
    rcases c107 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c2952 : ¬v34 ∨ ¬v1 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v48 := by
      rcases c2731 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n11
    have u6 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u6
    have u11 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a u6
      · exact a
    have u12 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v7 := by
      rcases c216 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n11
    have u16 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
    have u17 : v14 := by
      rcases c473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u13
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n11
    have u18 : v9 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u16
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    rcases c46 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c2953 : v41 ∨ v4 ∨ v5 ∨ v6 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ ¬v40 ∨ v43 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n8 a
    rcases c1375 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2954 : ¬v40 ∨ v4 ∨ v5 ∨ v6 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2953 with a|a|a|a|a|a|a|a|a|a|a|a
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
  have c2955 : v33 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v29 ∨ v34 ∨ v36 ∨ v43 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n12
      · exact a
    rcases c2954 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2956 : v28 ∨ v8 ∨ v11 ∨ v15 ∨ ¬v17 ∨ v20 ∨ v23 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v24 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
    have u3 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
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
    have u11 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u12 : ¬v22 := by
      rcases c2948 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u13 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
    have u14 : ¬v12 := by
      rcases c2947 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n8
    have u15 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u16 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u17 : ¬v16 := by
      rcases c2950 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u14
      · exact a
      · exact absurd n4 a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u18 : v18 := by
      rcases c2951 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
    have u19 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n4 a
    have u20 : ¬v32 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u21 : ¬v13 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u4
    have u22 : ¬v34 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u24 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u22
    have u25 : v33 := by
      rcases c2955 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
    have u26 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u28 : v40 := by
      rcases c451 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u6
    have u29 : v41 := by
      rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a n7
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u27
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    rcases c161 with a|a
    · exact absurd u29 a
    · exact absurd u28 a
  have c2957 : v5 ∨ v10 ∨ v11 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ ¬v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u7 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
    have u8 : ¬v22 := by
      rcases c1805 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u4
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v4 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n11
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n11
    have u17 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n11
    have u18 : v41 := by
      rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a u17
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
    have u19 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u18 a
      · exact a
    rcases c451 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u9
  have c2958 : v14 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n14
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
    have u8 : ¬v32 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n14
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u11 : ¬v33 := by
      rcases c2957 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact a
      · exact absurd a n14
    have u12 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a u3
      · exact a
    have u13 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v34 := by
      rcases c265 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u16 : v1 := by
      rcases c502 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n7
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n14
    have u17 : v7 := by
      rcases c216 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n14
    have u18 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c473 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n14
  have c2959 : v11 ∨ v15 ∨ ¬v17 ∨ v20 ∨ v23 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v24 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
    have u3 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    have u4 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
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
    have u11 : v8 := by
      rcases c2956 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u12 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v19 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd n2 a
      · exact absurd a n4
    have u18 : v5 := by
      rcases c2958 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
    have u19 : v4 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u18 a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a n0
    have u20 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u21 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c480 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u20
  have c2960 : v23 ∨ ¬v5 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u3 : ¬v24 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
    have u4 : v15 := by
      rcases c2959 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u7 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u8 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u4 a
      · exact absurd n3 a
      · exact a
    have u9 : v10 := by
      rcases c2697 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
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
    have u15 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u3
    have u16 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u9 a
    have u18 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u21 : v22 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a u5
      · exact a
      · exact absurd a n0
    have u22 : ¬v1 := by
      rcases c1839 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u23 : v4 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a u16
      · exact absurd a n2
    have u24 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
    have u26 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u27 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
    have u28 : ¬v40 := by
      rcases c2616 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u29 : v41 := by
      rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u24
      · exact absurd a n6
      · exact a
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n7
    have u30 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : v32 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
    have u32 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u30
      · exact absurd a u13
      · exact absurd a u26
    rcases c129 with a|a
    · exact absurd u31 a
    · exact absurd u32 a
  have c2961 : v23 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c2960 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u3 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u4 : ¬v24 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
    have u5 : v15 := by
      rcases c2959 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u7 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n2 a
    have u9 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact a
    have u10 : v10 := by
      rcases c2697 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n4
    have u11 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
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
    have u16 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u4
    have u17 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u10 a
    have u19 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u10 a
      · exact a
    have u20 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u10 a
      · exact a
    have u21 : v22 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a n0
    have u22 : ¬v32 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u23 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u25 : v4 := by
      rcases c2566 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u12
    have u26 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u27 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u28 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u15
    have u29 : v37 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
    have u30 : ¬v40 := by
      rcases c2616 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n6
    have u31 : v41 := by
      rcases c292 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n6
    rcases c152 with a|a
    · exact absurd u31 a
    · exact absurd u29 a
  have c2962 : v32 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    rcases c521 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u1
  have c2963 : v40 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v41 := by
      rcases c292 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n9
    have u4 : v33 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
    have u5 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u4 a
    rcases c2962 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n0
  have c2964 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u2 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v40 := by
      rcases c2963 with a|a|a|a|a|a|a|a|a|a
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
    have u4 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u3 a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n8
  have c2965 : v5 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v36 ∨ ¬v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u6 : ¬v35 := by
      rcases c2755 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v34 := by
      rcases c1554 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
    have u12 : v4 := by
      rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    have u13 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    rcases c502 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n11
  have c2966 : v5 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n11
    have u3 : ¬v13 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u7 : ¬v32 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v40 := by
      rcases c2965 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
    have u10 : ¬v33 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u8
      · exact absurd a u9
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u9
  have c2967 : ¬v7 ∨ ¬v5 ∨ v6 ∨ v11 ∨ v12 ∨ ¬v17 ∨ v19 ∨ v22 ∨ v29 ∨ v36 ∨ v43 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : v13 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n3
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v15 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a n7
    rcases c1932 with a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u8 a
    · exact absurd n5 a
  have c2968 : ¬v13 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
  have c2969 : ¬v39 ∨ v6 ∨ v7 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u5 : v47 := by
      rcases c291 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    rcases c182 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2970 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v13 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    rcases c278 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
  have c2971 : v12 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v24 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
    have u3 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u4 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u5 : v23 := by
      rcases c2961 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u7 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u7
    have u15 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u16 : v5 := by
      rcases c2966 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n6
    have u17 : ¬v7 := by
      rcases c2967 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
    have u18 : ¬v39 := by
      rcases c2969 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n6
    have u19 : ¬v13 := by
      rcases c2968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u3
    have u20 : v4 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u16 a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u21 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u22 : ¬v14 := by
      rcases c2970 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u3
    have u23 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u24
    have u26 : v34 := by
      rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u17
      · exact a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n6
    rcases c1217 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u24
  have c2972 : v28 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c2892 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v23 := by
      rcases c2961 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u3 : ¬v24 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
    have u4 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u7 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u7
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u14 : v12 := by
      rcases c2971 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u15 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u15
      · exact a
      · exact absurd n2 a
    have u21 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u19
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u9
    have u22 : ¬v4 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n5
    have u23 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    rcases c352 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a u17
  have c2973 : ¬v12 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v28 := by
      rcases c2972 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
    have u10 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u6 a
    rcases c2947 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n4
  have c2974 : ¬v28 ∨ v2 ∨ ¬v15 ∨ ¬v17 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u8 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u5
    have u9 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u14 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v37 := by
      rcases c2620 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u10
    have u16 : v35 := by
      rcases c898 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u14
      · exact a
    have u17 : v30 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u6
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    rcases c132 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c2975 : v22 ∨ v7 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
    have u2 : ¬v12 := by
      rcases c2973 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u3 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u4 : v28 := by
      rcases c2972 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u5 : ¬v6 := by
      rcases c2903 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u6 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u15 : v5 := by
      rcases c2964 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v13 := by
      rcases c2968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u3
    have u17 : v4 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a n2
    have u18 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u19 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u17 a
    have u20 : ¬v15 := by
      rcases c2974 with a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u19
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
    have u21 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a n0
    have u22 : v10 := by
      rcases c2940 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n7
    rcases c37 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c2976 : v34 ∨ v32 ∨ v33 ∨ v39 ∨ ¬v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n4 a
    rcases c265 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
  have c2977 : v15 ∨ v5 ∨ v12 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ ¬v28 ∨ v29 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact a
    have u2 : ¬v32 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v40 := by
      rcases c2976 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n12
    · exact absurd a u6
  have c2978 : v11 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
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
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u10 : v7 := by
      rcases c2975 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v12 := by
      rcases c2973 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u12 : ¬v21 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u13 : v28 := by
      rcases c2972 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u14 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v5 := by
      rcases c2967 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v32 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u19 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u20 : v15 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u13 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u21 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u20 a
      · exact absurd n1 a
      · exact a
    have u22 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u18
    have u23 : v3 := by
      rcases c1574 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd u22 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c26 with a|a|a
    · exact absurd u10 a
    · exact absurd u23 a
    · exact absurd u22 a
  have c2979 : v49 ∨ ¬v17 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ ¬v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : v11 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u4 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
    have u5 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n0
    have u7 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd n1 a
    have u18 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n0
    have u19 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact a
    have u20 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n4
    have u21 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n0
    have u24 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
    rcases c2955 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u13
  have c2980 : v5 ∨ ¬v1 ∨ ¬v7 ∨ v9 ∨ v12 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : v17 := by
      rcases c96 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
    have u5 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u6 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u7 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
    have u12 : v34 := by
      rcases c2955 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u5
      · exact a
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
    have u13 : v23 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    rcases c1423 with a|a|a|a
    · exact absurd u12 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd u13 a
  have c2981 : v21 ∨ v15 ∨ ¬v17 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v11 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u3 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u14 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n5
    have u15 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u16 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u17 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u18 : v18 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
    have u19 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u18 a
    have u20 : ¬v28 := by
      rcases c2979 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u21 : ¬v7 := by
      rcases c2980 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u14 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a n8
    have u22 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a n8
    have u23 : ¬v40 := by
      rcases c2377 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a n8
    rcases c292 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a n8
  have c2982 : v7 ∨ v5 ∨ v6 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v41 := by
      rcases c2756 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u2 a
    rcases c292 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n9
  have c2983 : v26 ∨ v15 ∨ ¬v17 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v11 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
    have u3 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
    have u15 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n5
    have u16 : ¬v5 := by
      rcases c1839 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
    have u17 : v19 := by
      rcases c2981 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n2 a
    have u19 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u17 a
    have u20 : v25 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd u17 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u21 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a n3
    have u22 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v40 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u3
      · exact a
      · exact absurd a u12
      · exact absurd a n7
    have u25 : v7 := by
      rcases c2982 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n7
    have u26 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
    have u27 : v37 := by
      rcases c2620 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u12
    have u28 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u27 a
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u28
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd a u29
    · exact absurd a u2
  have c2984 : v21 ∨ ¬v17 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v11 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
    rcases c2983 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
  have c2985 : v22 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v21 := by
      rcases c2984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : v11 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v28 := by
      rcases c1197 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
    have u8 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
  have c2986 : v27 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v22 := by
      rcases c2985 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u2 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : v11 := by
      rcases c2961 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
    have u15 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n0
    have u16 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u17 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u14 a
      · exact a
    have u22 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u14 a
      · exact a
    have u23 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u22
      · exact a
      · exact absurd n1 a
    have u24 : ¬v21 := by
      rcases c1197 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u23
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u8
    have u25 : ¬v34 := by
      rcases c2015 with a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd u1 a
    have u26 : v30 := by
      rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd u1 a
      · exact a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n4
    have u27 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v42 := by
      rcases c2848 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n4
    have u31 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u32 : ¬v40 := by
      rcases c2976 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u31
      · exact a
      · exact absurd a u10
      · exact absurd a u9
    have u33 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u28
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u32
    have u34 : ¬v1 := by
      rcases c1839 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u35 : ¬v7 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a u22
      · exact absurd a u34
      · exact absurd a u18
      · exact absurd a u13
    rcases c2535 with a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u34
    · exact absurd a u2
    · exact absurd a u35
    · exact absurd a u23
    · exact absurd a u8
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd a n4
  exact ⟨c2940, c2942, c2947, c2949, c2952, c2955, c2961, c2962, c2964, c2969, c2970, c2976, c2985, c2986⟩
