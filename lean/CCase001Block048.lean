import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2400-2449 of the 2915-step refutation of ccase001: 125 core clauses and 77 earlier-derived ones give 13 more. -/
theorem CCase001_block048
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
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
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c107 : ¬v22 ∨ ¬v28)
    (c109 : ¬v25 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c119 : ¬v28 ∨ ¬v25)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c126 : ¬v32 ∨ ¬v29)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c172 : ¬v48 ∨ ¬v43)
    (c177 : ¬v48 ∨ ¬v44)
    (c181 : ¬v48 ∨ ¬v45)
    (c184 : ¬v48 ∨ ¬v46)
    (c186 : ¬v48 ∨ ¬v47)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c221 : v43 ∨ v36 ∨ v41 ∨ v37 ∨ v20 ∨ v35 ∨ v21 ∨ v34 ∨ v30 ∨ v44 ∨ v28 ∨ v15 ∨ ¬v42 ∨ v49)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c274 : ¬v5 ∨ v6 ∨ v13 ∨ v11 ∨ v12 ∨ v4 ∨ v46 ∨ v47)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c305 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v42 ∨ v47 ∨ v7 ∨ v6)
    (c306 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v47 ∨ v7 ∨ v5 ∨ v6)
    (c311 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v35 ∨ v28 ∨ v33 ∨ v40)
    (c351 : v29 ∨ v21 ∨ v16 ∨ v1 ∨ v30 ∨ v10 ∨ v8 ∨ v2 ∨ v7 ∨ v14 ∨ v23 ∨ ¬v9 ∨ v17 ∨ v31)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c422 : ¬v28 ∨ v35 ∨ v20 ∨ v7 ∨ v29 ∨ v6 ∨ v1 ∨ v14 ∨ v16 ∨ v21 ∨ v30 ∨ v22 ∨ v23 ∨ v27)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c489 : ¬v40 ∨ v33 ∨ v46 ∨ v12 ∨ v47 ∨ v11 ∨ v13 ∨ v5 ∨ v35 ∨ v39 ∨ v42 ∨ v34 ∨ v41 ∨ v49)
    (c494 : v36 ∨ ¬v35 ∨ v1 ∨ v42 ∨ v28 ∨ v6 ∨ v7 ∨ v29 ∨ v33 ∨ v34 ∨ v26 ∨ v27 ∨ v40 ∨ v49)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c547 : ¬v48 ∨ v34 ∨ v33 ∨ v40 ∨ v2 ∨ v37 ∨ v7 ∨ v6 ∨ v41 ∨ v44 ∨ v43 ∨ v35 ∨ v47 ∨ v49)
    (c561 : ¬v48 ∨ v41 ∨ v7 ∨ v36 ∨ v28 ∨ v40 ∨ v47 ∨ v34 ∨ v1 ∨ v26 ∨ v27 ∨ v43 ∨ v6 ∨ v49)
    (c591 : v22 ∨ ¬v21 ∨ v28 ∨ v13 ∨ v14 ∨ v27 ∨ v20 ∨ v15)
    (c601 : v2 ∨ ¬v17 ∨ v4 ∨ v11 ∨ v24 ∨ v14 ∨ v10 ∨ v3 ∨ v15 ∨ v16 ∨ v21 ∨ v18 ∨ v23 ∨ v28)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c709 : v11 ∨ ¬v6 ∨ v10 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c758 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1140 : v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1146 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1295 : ¬v25 ∨ ¬v30 ∨ v37 ∨ v38)
    (c1332 : ¬v19 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1540 : ¬v24 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1581 : ¬v25 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1638 : ¬v18 ∨ v1 ∨ v8 ∨ v22 ∨ v36 ∨ v40 ∨ v42 ∨ v43)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1811 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v9 ∨ v20)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1895 : ¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v27)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2196 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v16 ∨ v19 ∨ v26 ∨ ¬v30 ∨ v33 ∨ v37 ∨ v38 ∨ v45)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2227 : ¬v19 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c2243 : ¬v34 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2295 : v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2488 : ¬v27 ∨ v1 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v21)
    (c2530 : v8 ∨ v1 ∨ ¬v4 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v21)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2597 : ¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2689 : ¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2708 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45)
    (c2786 : v48 ∨ v49)
    (c2798 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47)
    (c2804 : ¬v40 ∨ v1 ∨ v5 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v49)
    (c2805 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c2826 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2828 : v18 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v32 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47)
    (c2829 : ¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49)
    (c2842 : ¬v35 ∨ v1 ∨ v5 ∨ v8 ∨ v12 ∨ v22 ∨ v40 ∨ v49)
    (c2846 : ¬v22 ∨ v7 ∨ v8 ∨ ¬v11 ∨ v13 ∨ v14 ∨ v36 ∨ v37 ∨ v42 ∨ v49)
    (c2855 : ¬v5 ∨ ¬v1 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2883 : ¬v33 ∨ ¬v42 ∨ v49)
    (c2884 : ¬v32 ∨ ¬v42 ∨ v49)
    (c2925 : ¬v28 ∨ ¬v16 ∨ v35)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2978 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45)
    (c2979 : ¬v38 ∨ v5 ∨ v6 ∨ v49)
    (c2988 : ¬v37 ∨ v5 ∨ v6 ∨ v49)
    (c3006 : v9 ∨ v49)
    (c3019 : v11 ∨ v3 ∨ v4 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v18 ∨ v19 ∨ v37 ∨ v49)
    (c3020 : ¬v5 ∨ ¬v2 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c3021 : ¬v37 ∨ v4 ∨ v11 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3024 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47)
    (c3038 : v3 ∨ ¬v2 ∨ v10 ∨ v49)
    : (¬v2 ∨ v10 ∨ v49) ∧ (¬v17 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v21 ∨ v23 ∨ v24 ∨ v28) ∧ (v18 ∨ v4 ∨ v11 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v40 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v19 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v42 ∨ v49) ∧ (¬v42 ∨ v1 ∨ v6 ∨ v7 ∨ v34 ∨ v35 ∨ v43 ∨ v46 ∨ v49) ∧ (¬v18 ∨ v10 ∨ v11 ∨ v49) ∧ (¬v42 ∨ v10 ∨ v11 ∨ v49) ∧ (¬v14 ∨ v1 ∨ ¬v4 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v21) ∧ (v3 ∨ v10 ∨ v11 ∨ v49) ∧ (¬v9 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v16 ∨ v17 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35) := by
  have c3040 : v34 ∨ v4 ∨ v5 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v19 ∨ v32 ∨ v39 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n13
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v33 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u2
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u11 : v3 := by
      rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
    have u12 : v2 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact a
    have u13 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    have u14 : v18 := by
      rcases c2828 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
    have u15 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a n12
  have c3041 : v14 ∨ v4 ∨ v5 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v34 ∨ v39 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n13
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v32 := by
      rcases c3040 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n11
    have u11 : v25 := by
      rcases c2805 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    rcases c117 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c3042 : v19 ∨ ¬v2 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v3 := by
      rcases c3038 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
    have u9 : ¬v12 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact a
      · exact absurd a n0
    have u10 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
    have u11 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v34 := by
      rcases c3041 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n7
    have u14 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u8
    have u17 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact a
      · exact absurd a u12
    rcases c121 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c3043 : v21 ∨ ¬v2 ∨ v10 ∨ v11 ∨ v14 ∨ v19 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v3 := by
      rcases c3038 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u7 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v38 := by
      rcases c2979 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
    have u13 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
    have u14 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
    have u15 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v13 := by
      rcases c3042 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u18 : v20 := by
      rcases c1811 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u3 a
      · exact a
    have u19 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u9
    have u21 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u22 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u20 a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u16
  have c3044 : v14 ∨ ¬v2 ∨ v10 ∨ v11 ∨ v19 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v3 := by
      rcases c3038 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u7 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u8 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v38 := by
      rcases c2979 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n5
    have u12 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n5
    have u13 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
    have u14 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v21 := by
      rcases c3043 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a u17
    have u20 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u10
    have u21 : ¬v27 := by
      rcases c2488 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd u15 a
    have u22 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u20 a
    rcases c591 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd u15 a
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u16
  have c3045 : v11 ∨ ¬v2 ∨ v10 ∨ v19 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v3 := by
      rcases c3038 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u7 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u8 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v38 := by
      rcases c2979 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
    have u15 : ¬v37 := by
      rcases c2988 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
    have u16 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
    have u17 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
    have u18 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v14 := by
      rcases c3044 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u3 a
    have u22 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u20 a
    have u23 : v21 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd u20 a
      · exact a
    have u24 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u27 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u10
    have u28 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v29 := by
      rcases c1146 with a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u15
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u24
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u21
  have c3046 : v19 ∨ ¬v2 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v3 := by
      rcases c3038 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u7 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u8 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v37 := by
      rcases c2988 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
    have u12 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
    have u13 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
    have u14 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v11 := by
      rcases c3045 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u17 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u3 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u3 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u16 a
    have u20 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u16 a
    have u21 : ¬v22 := by
      rcases c2846 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n3
    have u22 : ¬v35 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a n3
    have u23 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u10
    have u24 : v17 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u23
      · exact a
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a u5
    have u25 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u27
      · exact a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a u15
  have c3047 : ¬v11 ∨ v1 ∨ v4 ∨ v5 ∨ v7 ∨ v10 ∨ v13 ∨ v15 ∨ v36 ∨ v37 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u5 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u6 : ¬v22 := by
      rcases c2846 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a u6
      · exact absurd a u4
    have u8 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v23 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd u7 a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u8
    have u11 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n10
  have c3048 : ¬v2 ∨ v10 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n2
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v3 := by
      rcases c3038 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u7 a
    have u9 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    have u10 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    have u11 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    have u12 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v37 := by
      rcases c2988 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n2
    have u14 : v19 := by
      rcases c3046 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a u18
    have u20 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
    have u21 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u10
    have u22 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v11 := by
      rcases c3047 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a n2
    have u25 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u26 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact a
    have u27 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u23
    have u28 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u2 a
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd u27 a
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u28
    · exact absurd a u12
    · exact absurd a u17
  have c3049 : ¬v19 ∨ v4 ∨ v7 ∨ v10 ∨ v11 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u6 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n6
    have u7 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v8 := by
      rcases c2227 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u11
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
    have u14 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact a
    have u15 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u6 a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a n5
  have c3050 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ v7 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v37 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c3049 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
    have u3 : v18 := by
      rcases c3019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n11
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n10
  have c3051 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ v7 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c3049 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v37 := by
      rcases c3050 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v30 := by
      rcases c2249 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v34 := by
      rcases c1744 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a u3
  have c3052 : v11 ∨ v3 ∨ v4 ∨ v5 ∨ v7 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c3049 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v40 := by
      rcases c3051 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
    have u11 : v18 := by
      rcases c3019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n10
    rcases c758 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u10
  have c3053 : v14 ∨ v3 ∨ v4 ∨ v7 ∨ v10 ∨ v11 ∨ v13 ∨ ¬v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd n7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v32 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u5
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a u14
    have u17 : v23 := by
      rcases c1249 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u10
      · exact absurd a u11
    rcases c1062 with a|a|a|a|a
    · exact absurd u16 a
    · exact absurd u17 a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u14
  have c3054 : v40 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : ¬v18 := by
      rcases c758 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c709 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c3055 : v15 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v16 ∨ ¬v17 ∨ v21 ∨ v23 ∨ v24 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n8 a
      · exact a
    rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n8 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n12
  have c3056 : v15 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ ¬v17 ∨ v21 ∨ v23 ∨ v24 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n7 a
    rcases c3055 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd n7 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c3057 : ¬v17 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v21 ∨ v23 ∨ v24 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    rcases c3056 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c3058 : v11 ∨ v4 ∨ ¬v6 ∨ v7 ∨ v10 ∨ v12 ∨ v14 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c3049 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n12
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n12
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
    have u10 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
    have u12 : v25 := by
      rcases c3054 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v30 := by
      rcases c1295 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v17 := by
      rcases c3057 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    rcases c2754 with a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u6
  have c3059 : v20 ∨ v4 ∨ ¬v6 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n14
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n14
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u8 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : v38 := by
      rcases c3058 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v31 := by
      rcases c2547 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u11 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u13
      · exact a
      · exact absurd a n13
    rcases c1421 with a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd u15 a
  have c3060 : v14 ∨ v3 ∨ v4 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v37 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : v5 := by
      rcases c3052 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v6 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
    have u12 : ¬v40 := by
      rcases c3053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v39 := by
      rcases c3059 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n8
      · exact a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v32 := by
      rcases c2941 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u15 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u16
      · exact a
      · exact absurd a n9
    have u18 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u17 a
    rcases c1755 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd u17 a
    · exact absurd a u7
    · exact absurd a u16
  have c3061 : v11 ∨ v3 ∨ v4 ∨ v7 ∨ ¬v8 ∨ v10 ∨ v14 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd n4 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd n4 a
      · exact absurd u2 a
      · exact a
    have u9 : v37 := by
      rcases c3060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v30 := by
      rcases c2249 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u11 : v18 := by
      rcases c3021 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u11 a
    rcases c2740 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c3062 : v14 ∨ v4 ∨ v7 ∨ v10 ∨ v11 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
    have u9 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v8 := by
      rcases c3061 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v1 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
    have u12 : v16 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u3 a
      · exact a
    have u13 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u14
      · exact a
      · exact absurd a n5
    rcases c2925 with a|a|a
    · exact absurd u15 a
    · exact absurd u12 a
    · exact absurd a u14
  have c3063 : v18 ∨ v4 ∨ v11 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v32 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v38 := by
      rcases c2805 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    rcases c2547 with a|a|a|a|a
    · exact absurd a u2
    · exact absurd u3 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c3064 : ¬v18 ∨ v2 ∨ v4 ∨ ¬v9 ∨ v11 ∨ ¬v14 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n3 a
    have u5 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact a
    have u6 : v3 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a u2
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n1
  have c3065 : v7 ∨ v4 ∨ v10 ∨ v11 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u2 : ¬v19 := by
      rcases c3049 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v14 := by
      rcases c3062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u5 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u6 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
    have u7 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd u3 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u1
    have u15 : ¬v18 := by
      rcases c3064 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v37 := by
      rcases c3021 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u17 : v5 := by
      rcases c3019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n5
    have u18 : ¬v1 := by
      rcases c2855 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u19 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd u3 a
      · exact a
    rcases c1911 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a u19
  have c3066 : ¬v5 ∨ v4 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c274 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n7
  have c3067 : v18 ∨ v3 ∨ v4 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v5 := by
      rcases c3066 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v37 := by
      rcases c3021 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u10 : v19 := by
      rcases c3019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a n8
    have u11 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v26 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u10 a
    have u14 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    rcases c1275 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u3
  have c3068 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n1
    have u3 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c2708 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c3069 : v12 ∨ v4 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v18 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
    have u10 : ¬v37 := by
      rcases c3021 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u15 : v13 := by
      rcases c3067 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n6
    have u16 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u15 a
    have u17 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact a
    have u18 : v1 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a u13
    have u19 : ¬v19 := by
      rcases c2227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a n3
    have u20 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n2 a
    have u21 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n2 a
    rcases c421 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd u15 a
  have c3070 : v18 ∨ v4 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
    have u10 : ¬v37 := by
      rcases c3021 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u14 : v12 := by
      rcases c3069 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u15 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u14 a
    have u16 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u14 a
    have u17 : v1 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd u3 a
      · exact absurd a u12
    have u18 : ¬v19 := by
      rcases c2227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd u3 a
      · exact absurd a n3
    have u19 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n2 a
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd u14 a
  have c3071 : ¬v40 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    rcases c489 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n11
  have c3072 : v42 ∨ v4 ∨ v10 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
    have u10 : v7 := by
      rcases c3065 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u11 : v18 := by
      rcases c3070 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u17 : v8 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u1
      · exact a
      · exact absurd u3 a
      · exact absurd a u14
    have u18 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u17 a
      · exact absurd u3 a
      · exact a
    have u20 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u17 a
      · exact absurd u3 a
      · exact a
    have u21 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u22 : ¬v5 := by
      rcases c3066 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u4
    have u23 : ¬v40 := by
      rcases c3071 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u24 : v32 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u20
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u4
    have u25 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u23
    have u26 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u28
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u27
    · exact absurd a u26
  have c3073 : ¬v19 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n5
    have u5 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
    rcases c2826 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c3074 : v30 ∨ v15 ∨ v20 ∨ v21 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ ¬v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    rcases c221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n9 a
    · exact absurd a n12
  have c3075 : v18 ∨ v4 ∨ v11 ∨ v20 ∨ v21 ∨ v34 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v32 := by
      rcases c2884 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u6 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u8
    have u13 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c3074 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n7
  have c3076 : v4 ∨ v10 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v42 := by
      rcases c3072 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v32 := by
      rcases c2884 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
    have u10 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v19 := by
      rcases c3073 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u2
    have u18 : ¬v34 := by
      rcases c3024 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u20 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
    have u21 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u23 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u24 : v18 := by
      rcases c3075 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u1 a
      · exact absurd a n3
    have u25 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v30 := by
      rcases c2196 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u20
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
    have u27 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    rcases c3074 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u27
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n3
  have c3077 : v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
    rcases c1421 with a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u1 a
  have c3078 : ¬v3 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u6 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n10
    have u7 : ¬v13 := by
      rcases c1811 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd u6 a
      · exact absurd a n8
    have u8 : ¬v40 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v8 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u6 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
    have u11 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n2
    have u12 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u10 a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v35 := by
      rcases c3077 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a n10
    have u16 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u15 a
      · exact a
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u9
  have c3079 : ¬v42 ∨ v1 ∨ v6 ∨ v7 ∨ v34 ∨ v35 ∨ v43 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u6 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n8
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v5 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n2
    have u10 : v2 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n8
    have u11 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u12 : v10 := by
      rcases c3048 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n8
    have u13 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u6 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u12 a
    rcases c3020 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd u10 a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a n7
    · exact absurd a u7
  have c3080 : ¬v18 ∨ v10 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v4 := by
      rcases c3076 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u9 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v3 := by
      rcases c3078 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
    have u18 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd u7 a
    have u19 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u20 : v8 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u10
      · exact a
      · exact absurd u9 a
      · exact absurd a u3
    have u21 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u7 a
    have u22 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u18 a
      · exact absurd u7 a
      · exact a
    have u23 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact a
    have u24 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u9 a
    have u25 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd u20 a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u26 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u23
      · exact a
    rcases c3079 with a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a n3
  have c3081 : ¬v3 ∨ ¬v4 ∨ v6 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
  have c3082 : v35 ∨ v10 ∨ v11 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v4 := by
      rcases c3076 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u2 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v32 := by
      rcases c2884 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
    have u7 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
    have u8 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u9 : ¬v18 := by
      rcases c3080 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u10 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v3 := by
      rcases c3081 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
    have u18 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd u1 a
    have u19 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u18 a
      · exact absurd u1 a
      · exact a
    have u20 : v34 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n4
    have u21 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v17 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
    have u25 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
    have u30 : ¬v25 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u26
      · exact a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u31 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u7
    have u32 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u28
      · exact a
    have u33 : v24 := by
      rcases c1249 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u29
      · exact a
      · exact absurd a u30
    have u34 : v27 := by
      rcases c311 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u2
      · exact absurd a u31
      · exact a
      · exact absurd a n0
      · exact absurd a u32
      · exact absurd a u7
      · exact absurd a u3
    rcases c115 with a|a
    · exact absurd u34 a
    · exact absurd u33 a
  have c3083 : ¬v42 ∨ v10 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v32 := by
      rcases c2884 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    have u6 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u8 : ¬v18 := by
      rcases c3080 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v4 := by
      rcases c3076 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v35 := by
      rcases c3082 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
    have u17 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v3 := by
      rcases c3081 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
    have u22 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd u9 a
    have u23 : v17 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u21
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u24 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u9 a
    have u25 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u22 a
      · exact absurd u9 a
      · exact a
    have u26 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u23 a
      · exact a
    have u29 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
    have u30 : ¬v25 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u8
      · exact absurd a u27
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u31 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u18
    have u32 : v24 := by
      rcases c1249 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u29
      · exact a
      · exact absurd a u30
    have u33 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u31
      · exact a
      · exact absurd a u18
    have u34 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u32 a
    rcases c561 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u1
    · exact absurd a u25
    · exact absurd a u3
    · exact absurd a u34
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a u24
    · exact absurd a u31
    · exact absurd a u33
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n3
  have c3084 : ¬v35 ∨ v3 ∨ v10 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v4 := by
      rcases c3076 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u9 : ¬v18 := by
      rcases c3080 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v42 := by
      rcases c3083 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd u7 a
    have u18 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v17 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u20 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u21 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u7 a
    have u22 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u17 a
      · exact absurd u7 a
      · exact a
    have u23 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
    have u24 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u19 a
      · exact a
    have u26 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u19 a
      · exact a
    have u27 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
    have u28 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
    have u29 : ¬v25 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u25
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u30 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u31 : v24 := by
      rcases c1249 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u27
      · exact a
      · exact absurd a u29
    have u32 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u30
      · exact a
      · exact absurd a u2
    have u33 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u31 a
    rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd n0 a
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u33
    · exact absurd a u16
    · exact absurd a u22
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd a u23
    · exact absurd a n4
  have c3085 : ¬v14 ∨ v1 ∨ ¬v4 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v12 := by
      rcases c62 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    rcases c2530 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n6
  have c3086 : ¬v28 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v38 ∨ v39 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v30 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u1
      · exact a
    rcases c130 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c3087 : ¬v21 ∨ v1 ∨ v3 ∨ v6 ∨ v7 ∨ v10 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u8 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n7
    have u9 : v8 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u8 a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n1
    have u10 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u19 : ¬v27 := by
      rcases c2488 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd n0 a
    have u20 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u21 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u10
    have u23 : v41 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n7
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n3
    have u24 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v28 := by
      rcases c3086 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u12
    have u27 : v22 := by
      rcases c591 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u1
    have u28 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u28
      · exact a
    rcases c2863 with a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u28
    · exact absurd a u17
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u20
  have c3088 : v3 ∨ v10 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v9 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v18 := by
      rcases c3080 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v42 := by
      rcases c3083 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v2 := by
      rcases c3048 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v35 := by
      rcases c3084 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : v4 := by
      rcases c3076 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd u12 a
    have u14 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u12 a
    have u16 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u13 a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v21 := by
      rcases c3087 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
    have u18 : ¬v14 := by
      rcases c3085 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u12 a
      · exact absurd a u16
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u17
    have u19 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u11
      · exact a
      · exact absurd a u4
    have u20 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v16 := by
      rcases c2925 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u11
    have u24 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
    have u25 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u26 : ¬v29 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u8
    have u27 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u28 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u29 : v31 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u26
      · exact a
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u30 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd a u7
      · exact absurd a u6
    have u33 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u34 : v41 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u30
      · exact absurd a u27
      · exact absurd a u32
      · exact absurd a u5
      · exact absurd a u33
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n3
    have u35 : v38 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u31
      · exact absurd a u33
      · exact a
      · exact absurd a u28
      · exact absurd a u8
    rcases c159 with a|a
    · exact absurd u34 a
    · exact absurd u35 a
  have c3089 : ¬v9 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v16 ∨ v17 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v14 := by
      rcases c3085 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n10
    have u2 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n11 a
    have u7 : ¬v19 := by
      rcases c1332 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n15
    have u8 : v8 := by
      rcases c351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n14
    have u9 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v20 := by
      rcases c1895 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    rcases c422 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n11 a
    · exact absurd a n15
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a n12
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
  exact ⟨c3048, c3057, c3063, c3068, c3071, c3073, c3077, c3079, c3080, c3083, c3085, c3088, c3089⟩
