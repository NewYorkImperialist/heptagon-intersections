import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2300-2349 of the 2934-step refutation of ccase002: 118 core clauses and 71 earlier-derived ones give 9 more. -/
theorem CCase002_block046
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
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
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c96 : v15 ∨ v21 ∨ v17 ∨ v20 ∨ v19 ∨ v16)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
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
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c148 : ¬v42 ∨ ¬v36)
    (c156 : ¬v41 ∨ ¬v38)
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
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c220 : ¬v42 ∨ v35 ∨ v34 ∨ v43 ∨ v49 ∨ v41 ∨ v14 ∨ v13 ∨ v8 ∨ v47 ∨ v7 ∨ v36 ∨ v40 ∨ v33)
    (c233 : ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v15 ∨ v34 ∨ v27 ∨ v22)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c262 : v13 ∨ ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v4 ∨ v12 ∨ v11)
    (c278 : v21 ∨ v13 ∨ v1 ∨ v20 ∨ v6 ∨ ¬v14 ∨ v8 ∨ v7)
    (c279 : v15 ∨ v34 ∨ v19 ∨ ¬v13 ∨ v27 ∨ v35 ∨ v7 ∨ v1 ∨ v12 ∨ v20 ∨ v8 ∨ v14 ∨ v33 ∨ v6)
    (c283 : v21 ∨ v6 ∨ v14 ∨ v20 ∨ v19 ∨ ¬v13 ∨ v7 ∨ v12)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c298 : ¬v28 ∨ v35 ∨ v14 ∨ v34 ∨ v18 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v25 ∨ v27 ∨ v32 ∨ v21 ∨ v15)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c335 : ¬v23 ∨ v43 ∨ v35 ∨ v24 ∨ v37 ∨ v15 ∨ v22 ∨ v28 ∨ v31 ∨ v30 ∨ v21 ∨ v16 ∨ v44 ∨ v45)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c438 : ¬v40 ∨ v34 ∨ v12 ∨ v47 ∨ v39 ∨ v5 ∨ v11 ∨ v13 ∨ v41 ∨ v33 ∨ v42 ∨ v46 ∨ v35 ∨ v49)
    (c480 : ¬v8 ∨ v15 ∨ v21 ∨ v7 ∨ v2 ∨ v9 ∨ v14 ∨ v1)
    (c486 : ¬v48 ∨ v41 ∨ v40 ∨ v47 ∨ v49 ∨ v5 ∨ v42 ∨ v6)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c669 : ¬v17 ∨ ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c828 : v24 ∨ v9 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1275 : ¬v25 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1337 : ¬v3 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1375 : ¬v40 ∨ v4 ∨ v5 ∨ v6 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47)
    (c1446 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v16)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1796 : ¬v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1813 : ¬v4 ∨ ¬v1 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v49)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1833 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1844 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1865 : v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17)
    (c1988 : ¬v23 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v26 ∨ v30 ∨ v31 ∨ v33)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2021 : ¬v29 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c2152 : ¬v37 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2181 : ¬v19 ∨ v16 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26)
    (c2198 : ¬v16 ∨ v1 ∨ v8 ∨ ¬v17 ∨ ¬v27 ∨ v43 ∨ v49)
    (c2262 : ¬v38 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v47)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2338 : ¬v6 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45)
    (c2366 : ¬v2 ∨ v3 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v43 ∨ v44 ∨ v45)
    (c2372 : ¬v21 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c2373 : v16 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v43 ∨ v44 ∨ v45)
    (c2381 : ¬v19 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v17 ∨ v23)
    (c2407 : ¬v25 ∨ v16 ∨ ¬v17 ∨ v18 ∨ ¬v21)
    (c2491 : v8 ∨ ¬v6 ∨ v15 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2521 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c2579 : ¬v4 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2580 : ¬v2 ∨ v9 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2581 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2585 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2620 : v37 ∨ v2 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v44)
    (c2693 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v43 ∨ v49)
    (c2697 : ¬v15 ∨ v10 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24 ∨ v26)
    (c2708 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v20 ∨ v27 ∨ v28)
    (c2710 : ¬v15 ∨ v8 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v26 ∨ v27)
    (c2720 : ¬v17 ∨ v10 ∨ v13 ∨ ¬v20 ∨ v23)
    (c2760 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2786 : ¬v19 ∨ ¬v15 ∨ v22 ∨ v25 ∨ v26 ∨ v27)
    (c2790 : v48 ∨ v49)
    (c2793 : v32 ∨ ¬v6 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2821 : ¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v45 ∨ v46 ∨ v47)
    (c2865 : v9 ∨ ¬v6 ∨ v16 ∨ v23 ∨ ¬v29 ∨ v43 ∨ v44 ∨ v45)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2877 : v31 ∨ ¬v6 ∨ ¬v11 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2884 : v27 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v28 ∨ v49)
    (c2885 : ¬v31 ∨ ¬v6 ∨ v11 ∨ v20 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v45 ∨ v46 ∨ v47)
    (c2886 : v11 ∨ ¬v6 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v38 ∨ v44 ∨ v45)
    : (v19 ∨ v20 ∨ ¬v27 ∨ ¬v32) ∧ (v28 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v49) ∧ (¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v43 ∨ v44 ∨ v45) ∧ (v11 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v49) ∧ (¬v6 ∨ v20 ∨ v26 ∨ v49) ∧ (¬v2 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v49) ∧ (¬v29 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49) ∧ (¬v21 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49) ∧ (v39 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ ¬v32 ∨ v49) := by
  have c2887 : v19 ∨ v20 ∨ ¬v27 ∨ ¬v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n2 a
      · exact a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n0
  have c2888 : v19 ∨ ¬v6 ∨ v11 ∨ v20 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c2884 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c2887 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
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
    have u13 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v31 := by
      rcases c2885 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : v17 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u16 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
    have u17 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
    have u18 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u13 a
    have u19 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : v34 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u18
      · exact a
    have u21 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u24 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u25 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v2 := by
      rcases c2585 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u28 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
    have u29 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd n1 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd u27 a
    · exact absurd a u25
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c2889 : ¬v8 ∨ ¬v6 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
      · exact absurd a n6
      · exact absurd a n7
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n4
  have c2890 : v11 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v27 := by
      rcases c2884 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
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
    have u12 : v19 := by
      rcases c2888 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v31 := by
      rcases c2885 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v16 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
    have u16 : ¬v17 := by
      rcases c2181 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u15
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
    have u17 : ¬v8 := by
      rcases c2889 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
    have u18 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u19 : ¬v21 := by
      rcases c2886 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd u12 a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v15 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u3
    have u21 : ¬v34 := by
      rcases c2693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a n5
    have u22 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u23 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u22 a
      · exact a
    rcases c205 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a u24
    · exact absurd a n3
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a n4
    · exact absurd a u19
  have c2891 : ¬v17 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u6 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v1 := by
      rcases c1833 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u10 : ¬v16 := by
      rcases c2198 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n5 a
      · exact absurd a u8
      · exact absurd a n6
    have u11 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
    have u12 : ¬v29 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
    rcases c2491 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n6
  have c2892 : v28 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
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
    have u5 : v11 := by
      rcases c2890 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u6 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v27 := by
      rcases c2884 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u11 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v17 := by
      rcases c2891 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd u10 a
      · exact absurd a n4
    have u13 : v31 := by
      rcases c2877 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u14 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1757 with a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd u10 a
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u14
  have c2893 : ¬v11 ∨ ¬v6 ∨ v17 ∨ v20 ∨ ¬v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v31 := by
      rcases c2877 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : v21 := by
      rcases c898 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
    have u20 : v15 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u21 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u22 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u23 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    have u24 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    have u26 : ¬v37 := by
      rcases c2581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u27 : v2 := by
      rcases c2620 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u11
    rcases c2580 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u5
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2894 : ¬v31 ∨ ¬v6 ∨ v11 ∨ v17 ∨ v20 ∨ v26 ∨ ¬v28 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : v21 := by
      rcases c898 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
    have u8 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v19 := by
      rcases c90 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd u8 a
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n5
  have c2895 : v19 ∨ ¬v6 ∨ v17 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v28 := by
      rcases c2892 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v11 := by
      rcases c2893 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n5
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
    have u13 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u14 : ¬v31 := by
      rcases c2894 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u16 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v8 := by
      rcases c2889 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u23 : v21 := by
      rcases c898 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
    have u24 : v15 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u25 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u26 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
    have u27 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n1 a
    have u29 : v10 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd u26 a
      · exact a
    have u30 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u18
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u28
    rcases c42 with a|a
    · exact absurd u30 a
    · exact absurd u29 a
  have c2896 : v17 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v28 := by
      rcases c2892 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
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
    have u12 : v19 := by
      rcases c2895 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v15 := by
      rcases c2786 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
    have u14 : ¬v11 := by
      rcases c2893 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n4
    have u15 : ¬v31 := by
      rcases c2894 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : ¬v8 := by
      rcases c2889 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
    have u18 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u3
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u19 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v21 := by
      rcases c2021 with a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
    have u21 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd n1 a
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c90 with a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u12 a
  have c2897 : v8 ∨ ¬v6 ∨ ¬v17 ∨ v21 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v15 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u5 : v10 := by
      rcases c2710 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n2 a
    have u7 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1865 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd u4 a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
  have c2898 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c2598 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2899 : v21 ∨ v2 ∨ ¬v8 ∨ v16 ∨ ¬v17 ∨ v20 ∨ ¬v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v22 := by
      rcases c105 with a|a
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
    have u5 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u8 : v18 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
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
    have u12 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u8 a
    have u13 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u14 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n7
      · exact a
    have u15 : v37 := by
      rcases c2620 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u10
    have u16 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u14 a
      · exact a
    rcases c2581 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2900 : v11 ∨ ¬v6 ∨ v20 ∨ v21 ∨ v26 ∨ v29 ∨ v38 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c2892 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
    have u2 : v17 := by
      rcases c2896 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u3 a
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
    have u13 : v8 := by
      rcases c2897 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n7
    have u14 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v3 := by
      rcases c2338 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v2 := by
      rcases c2898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u18 : v16 := by
      rcases c2899 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd u13 a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n7
    have u19 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd u18 a
      · exact absurd u2 a
      · exact a
    have u20 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u2 a
    have u21 : v32 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : v35 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n5
      · exact a
    rcases c139 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c2901 : v29 ∨ ¬v6 ∨ v11 ∨ v20 ∨ v26 ∨ v38 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v28 := by
      rcases c2892 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : v17 := by
      rcases c2896 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v21 := by
      rcases c2900 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u11 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u9 a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u13 : v8 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    rcases c1369 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u12
    · exact absurd u2 a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u6
  have c2902 : ¬v29 ∨ ¬v6 ∨ v11 ∨ ¬v17 ∨ ¬v28 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v18 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u1
    rcases c2793 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2903 : v11 ∨ ¬v6 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v17 := by
      rcases c2896 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v28 := by
      rcases c2892 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u2 a
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
    have u9 : ¬v29 := by
      rcases c2902 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : v38 := by
      rcases c2901 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u11 : v31 := by
      rcases c2869 with a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v18 := by
      rcases c2793 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c669 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd u15 a
    · exact absurd u2 a
    · exact absurd a u14
    · exact absurd a u13
  have c2904 : ¬v6 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v11 := by
      rcases c2903 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v28 := by
      rcases c2892 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u2 a
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
    have u13 : v17 := by
      rcases c2896 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd u13 a
    have u15 : v29 := by
      rcases c2491 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n3
    have u16 : v21 := by
      rcases c2021 with a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
    have u17 : v16 := by
      rcases c2865 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd u15 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    rcases c76 with a|a|a
    · exact absurd u17 a
    · exact absurd u16 a
    · exact absurd u13 a
  have c2905 : ¬v28 ∨ v8 ∨ v10 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v18 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v15 := by
      rcases c2697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n5 a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
    have u9 : ¬v20 := by
      rcases c2720 with a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u1
    have u10 : v16 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
    have u11 : v21 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
    rcases c76 with a|a|a
    · exact absurd u10 a
    · exact absurd u11 a
    · exact absurd n5 a
  have c2906 : ¬v7 ∨ v6 ∨ ¬v11 ∨ ¬v17 ∨ v18 ∨ v30 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v1 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u12
    have u17 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u18 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u19 : ¬v3 := by
      rcases c1844 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u20 : v19 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
    have u21 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u20 a
    have u22 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u20 a
    have u23 : v23 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u14
    have u24 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u23 a
    rcases c594 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd u20 a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u24
  have c2907 : ¬v42 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v33 ∨ v34 ∨ v35 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n0 a
      · exact a
    rcases c220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
  have c2908 : v7 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v49 := by
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
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v42 := by
      rcases c2907 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a u4
  have c2909 : ¬v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v28 := by
      rcases c2905 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v21 := by
      rcases c2708 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u7
    have u9 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u10 : ¬v6 := by
      rcases c2892 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n10
    have u11 : ¬v15 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
    have u12 : v7 := by
      rcases c2908 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : v18 := by
      rcases c2906 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
    have u18 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
    have u20 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u21 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u22 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n1 a
    have u23 : ¬v22 := by
      rcases c2373 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u8
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u24 : v23 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u19
    rcases c1988 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
  have c2910 : ¬v23 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    rcases c335 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n12
  have c2911 : ¬v23 ∨ v15 ∨ v16 ∨ v21 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2910 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2912 : v6 ∨ ¬v2 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v7 := by
      rcases c2908 with a|a|a|a|a|a|a|a|a|a
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
    have u2 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u3 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u4
  have c2913 : ¬v2 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n12
    have u2 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v14 := by
      rcases c2912 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v7 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a n4
    rcases c887 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u6 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u2
  have c2914 : v8 ∨ v6 ∨ v9 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n9 a
    have u6 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n9 a
    have u7 : v17 := by
      rcases c96 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
    have u8 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n10
    have u9 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
    have u10 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v11 := by
      rcases c2909 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u15 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v23 := by
      rcases c2911 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : v2 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v13 := by
      rcases c2913 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u20 : v3 := by
      rcases c2366 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u21 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v7 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd u19 a
      · exact a
      · exact absurd a u21
    rcases c1337 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd u24 a
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u10
  have c2915 : v6 ∨ v8 ∨ ¬v17 ∨ ¬v18 ∨ v20 ∨ v21 ∨ v28 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : ¬v19 := by
      rcases c83 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n7 a
    have u8 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n7 a
    have u10 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u11 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
    have u12 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v11 := by
      rcases c2909 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u18 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u19 : v9 := by
      rcases c2914 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
    have u20 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v7 := by
      rcases c2908 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u24 : v1 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd u23 a
      · exact absurd a u21
      · exact a
      · exact absurd a n1
      · exact absurd a u16
    have u25 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n8
    have u26 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u12
      · exact a
    have u27 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u26 a
    rcases c438 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u25
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u27
    · exact absurd a u4
    · exact absurd a u28
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a n8
  have c2916 : ¬v17 ∨ v8 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v6 := by
      rcases c2892 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n15
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n15
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
    have u9 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v7 := by
      rcases c2908 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v1 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd u10 a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a u8
    have u12 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n15
    have u13 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a n11
    have u14 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v19 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u16 a
    have u18 : v12 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd u16 a
      · exact absurd a n6
      · exact absurd a n8
    have u19 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u18 a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a n2
  have c2917 : v21 ∨ v8 ∨ v11 ∨ v13 ∨ ¬v17 ∨ v18 ∨ v20 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v27 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v6 := by
      rcases c2892 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n14
    have u3 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n14
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
    have u9 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v14 := by
      rcases c2916 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
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
    have u11 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v19 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v25 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n10
    have u16 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n14
    have u17 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
    rcases c278 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a u17
  have c2918 : ¬v19 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ ¬v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    have u2 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    have u3 : v23 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
    have u4 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u2
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
    rcases c599 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n5 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u5
  have c2919 : v20 ∨ v8 ∨ ¬v17 ∨ v21 ∨ v26 ∨ v28 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v6 := by
      rcases c2892 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
    have u8 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n7
    have u9 : ¬v11 := by
      rcases c2909 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v27 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n3
    have u15 : ¬v18 := by
      rcases c2915 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u16 : v13 := by
      rcases c2917 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd n2 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u17 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v19 := by
      rcases c2918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd n2 a
    have u22 : v7 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd u16 a
      · exact a
      · exact absurd a u18
    have u23 : ¬v25 := by
      rcases c1275 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u24 : ¬v4 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u5
  have c2920 : ¬v13 ∨ v1 ∨ ¬v4 ∨ v6 ∨ v15 ∨ v19 ∨ v20 ∨ v33 ∨ v34 ∨ v35 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v7 := by
      rcases c2760 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v27 := by
      rcases c279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd n0 a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n3
    have u8 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u7 a
      · exact a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n5
  have c2921 : v28 ∨ v8 ∨ ¬v17 ∨ v20 ∨ v26 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c2892 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n6
    have u9 : ¬v11 := by
      rcases c2909 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    have u10 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u18 : v21 := by
      rcases c2919 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n6
    have u19 : ¬v19 := by
      rcases c87 with a|a|a
      · exact absurd n2 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u18 a
      · exact absurd n2 a
      · exact a
    have u21 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n2 a
    have u22 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n2 a
    have u23 : ¬v25 := by
      rcases c2407 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd n2 a
      · exact absurd a u20
      · exact absurd u18 a
    have u24 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u6
    have u25 : ¬v1 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u26 : ¬v27 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u19
    have u27 : ¬v13 := by
      rcases c2920 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u24 a
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
    have u28 : v14 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u26
      · exact a
      · exact absurd a u22
      · exact absurd a u27
    have u29 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v2 := by
      rcases c2579 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u29
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u32 : v24 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd n2 a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u30
      · exact a
      · exact absurd a u29
    have u33 : v23 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u29
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u31
    rcases c106 with a|a
    · exact absurd u33 a
    · exact absurd u32 a
  have c2922 : ¬v14 ∨ ¬v17 ∨ v20 ∨ v26 ∨ ¬v28 ∨ ¬v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n5 a
    have u10 : ¬v21 := by
      rcases c2372 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u7
    have u11 : ¬v18 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a u8
    have u12 : v15 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
    rcases c2697 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n3
  have c2923 : v10 ∨ v8 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ ¬v28 ∨ ¬v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v18 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n6 a
      · exact absurd a u5
      · exact absurd a u4
    have u7 : ¬v15 := by
      rcases c2697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
    have u8 : v16 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u9 : v21 := by
      rcases c2021 with a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd n6 a
    rcases c76 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd n3 a
  have c2924 : v8 ∨ ¬v17 ∨ v20 ∨ v26 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : v28 := by
      rcases c2921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
    have u8 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u9 : ¬v11 := by
      rcases c2909 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
    have u10 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v18 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u3
    have u16 : ¬v14 := by
      rcases c2922 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd n4 a
    have u17 : v10 := by
      rcases c2923 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd n4 a
    have u18 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u8 a
    have u19 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u8 a
      · exact a
    have u20 : ¬v45 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u8 a
    have u21 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u8 a
      · exact a
    have u22 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u8 a
      · exact a
    have u23 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u12
    have u24 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u17 a
    have u25 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u17 a
      · exact a
    have u26 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
    have u27 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
    have u28 : ¬v37 := by
      rcases c2152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
    have u29 : ¬v40 := by
      rcases c2821 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
    have u30 : v16 := by
      rcases c828 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u24
      · exact a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u29
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
    have u31 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd n1 a
    have u32 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd n1 a
    rcases c298 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u31
    · exact absurd a u32
  have c2925 : v41 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ ¬v40 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n9 a
    rcases c438 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a n12
  have c2926 : v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v49 := by
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
    have u4 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u2
      · exact a
    have u5 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u4 a
    rcases c2925 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n10
  have c2927 : v21 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v11 ∨ ¬v17 ∨ ¬v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n8
    have u5 : v15 := by
      rcases c480 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
    have u6 : ¬v45 := by
      rcases c177 with a|a
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
    have u9 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n6 a
    have u10 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd u5 a
      · exact absurd n6 a
      · exact a
    have u11 : v23 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u11 a
      · exact a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd n6 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a u2
  have c2928 : ¬v29 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n4
    have u6 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u10 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : v8 := by
      rcases c2924 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
    have u12 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v11 := by
      rcases c38 with a|a
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
      rcases c2918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd n1 a
    have u18 : v5 := by
      rcases c2926 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n4
    have u19 : v4 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u15
      · exact absurd a u14
    have u20 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u22 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u23 : v21 := by
      rcases c2927 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n4
    have u24 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd n1 a
    have u25 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd n1 a
    rcases c1446 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a u24
  have c2929 : v9 ∨ v10 ∨ v11 ∨ v14 ∨ ¬v17 ∨ v20 ∨ ¬v21 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n6 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n4 a
    have u3 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n4 a
    have u4 : ¬v25 := by
      rcases c2407 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd n6 a
    have u5 : v24 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    have u6 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1262 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd n6 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n7
  have c2930 : ¬v10 ∨ ¬v17 ∨ v20 ∨ ¬v21 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u4 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u5 : v22 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a u1
    have u6 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u5 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
  have c2931 : v28 ∨ v11 ∨ v14 ∨ ¬v17 ∨ v20 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n5 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u4 : ¬v25 := by
      rcases c2407 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd n5 a
    have u5 : ¬v10 := by
      rcases c2930 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
    have u6 : v9 := by
      rcases c2929 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
    have u7 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v22 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u1
      · exact a
      · exact absurd a u8
    have u10 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u4
  have c2932 : ¬v41 ∨ v4 ∨ v11 ∨ v19 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v32 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a n9
    have u4 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
    have u5 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u3 a
      · exact a
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u2
  have c2933 : v39 ∨ v4 ∨ v11 ∨ v19 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v38 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v32 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u3 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u2 a
      · exact a
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n9
  have c2934 : ¬v28 ∨ v11 ∨ ¬v17 ∨ ¬v21 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u7 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v19 := by
      rcases c87 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u10 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u11 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u12 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u5
    have u14 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n5
    have u15 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n5
    have u21 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u13
      · exact a
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u3
    have u22 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n5
    have u23 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n5
    have u24 : ¬v38 := by
      rcases c2262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u15
    have u25 : ¬v41 := by
      rcases c2932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u16
    have u26 : v39 := by
      rcases c2933 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u16
    have u27 : ¬v40 := by
      rcases c158 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u26 a
    rcases c486 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u15
    · exact absurd a n5
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a u14
  have c2935 : ¬v21 ∨ v11 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v19 := by
      rcases c87 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u5 : ¬v29 := by
      rcases c2928 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v6 := by
      rcases c2904 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v48 := by
      rcases c2790 with a|a
      · exact a
      · exact absurd a n5
    have u8 : ¬v47 := by
      rcases c182 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v46 := by
      rcases c180 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v44 := by
      rcases c173 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u13 : ¬v25 := by
      rcases c2407 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd n0 a
    have u14 : ¬v28 := by
      rcases c2934 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n5
    have u15 : v14 := by
      rcases c2931 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n0 a
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v24 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u18
      · exact a
      · exact absurd a u17
    have u21 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v1 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u16
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u21
    have u23 : ¬v5 := by
      rcases c2521 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u24 : ¬v4 := by
      rcases c1813 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u25 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u2
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u26 : v40 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u8
      · exact a
    have u27 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : v34 := by
      rcases c1375 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u25
      · exact a
      · exact absurd a u12
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
    have u31 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u29
      · exact absurd a u13
      · exact a
    rcases c138 with a|a
    · exact absurd u30 a
    · exact absurd u31 a
  have c2936 : v39 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ ¬v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n7 a
    rcases c2926 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n8
  exact ⟨c2887, c2892, c2898, c2903, c2904, c2913, c2928, c2935, c2936⟩
