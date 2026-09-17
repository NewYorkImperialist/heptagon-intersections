import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2200-2249 of the 2915-step refutation of ccase001: 125 core clauses and 80 earlier-derived ones give 16 more. -/
theorem CCase001_block044
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
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
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c95 : ¬v18 ∨ ¬v19)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c102 : ¬v22 ∨ ¬v23)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
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
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c166 : ¬v41 ∨ ¬v42)
    (c172 : ¬v48 ∨ ¬v43)
    (c177 : ¬v48 ∨ ¬v44)
    (c181 : ¬v48 ∨ ¬v45)
    (c184 : ¬v48 ∨ ¬v46)
    (c186 : ¬v48 ∨ ¬v47)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c214 : ¬v31 ∨ v38 ∨ v37 ∨ v25 ∨ v39 ∨ v32 ∨ v24 ∨ v30)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c274 : ¬v5 ∨ v6 ∨ v13 ∨ v11 ∨ v12 ∨ v4 ∨ v46 ∨ v47)
    (c305 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v42 ∨ v47 ∨ v7 ∨ v6)
    (c306 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v47 ∨ v7 ∨ v5 ∨ v6)
    (c368 : v21 ∨ v10 ∨ v46 ∨ v14 ∨ v47 ∨ v7 ∨ v12 ∨ v13 ∨ v45 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v3 ∨ v18)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c393 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v21 ∨ v14 ∨ v13 ∨ v8 ∨ v34 ∨ v30 ∨ v28 ∨ v29 ∨ v37 ∨ v23)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c431 : v15 ∨ v12 ∨ v17 ∨ v1 ∨ v46 ∨ v4 ∨ v8 ∨ ¬v11 ∨ v9 ∨ v10 ∨ v18 ∨ v45 ∨ v5 ∨ v47)
    (c435 : ¬v19 ∨ v13 ∨ v18 ∨ v20 ∨ v26 ∨ v25 ∨ v12 ∨ v27)
    (c485 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v30 ∨ v42 ∨ v35 ∨ v28)
    (c523 : ¬v26 ∨ v19 ∨ v30 ∨ v20 ∨ v25 ∨ v33 ∨ v23 ∨ v16 ∨ v12 ∨ v27 ∨ v13 ∨ v24 ∨ v11 ∨ v32)
    (c544 : ¬v48 ∨ v6 ∨ v12 ∨ v38 ∨ v7 ∨ v3 ∨ v45 ∨ v41 ∨ v40 ∨ v14 ∨ v13 ∨ v46 ∨ v47 ∨ v49)
    (c547 : ¬v48 ∨ v34 ∨ v33 ∨ v40 ∨ v2 ∨ v37 ∨ v7 ∨ v6 ∨ v41 ∨ v44 ∨ v43 ∨ v35 ∨ v47 ∨ v49)
    (c571 : v43 ∨ ¬v42 ∨ v35 ∨ v49 ∨ v34 ∨ v41 ∨ v36 ∨ v29)
    (c588 : ¬v33 ∨ v40 ∨ v39 ∨ v26 ∨ v34 ∨ v32 ∨ v25 ∨ v27)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c683 : ¬v19 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v27)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1054 : v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1064 : ¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1109 : ¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1171 : ¬v10 ∨ ¬v11 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1447 : ¬v31 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v39)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1570 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c1638 : ¬v18 ∨ v1 ∨ v8 ∨ v22 ∨ v36 ∨ v40 ∨ v42 ∨ v43)
    (c1670 : ¬v5 ∨ v1 ∨ ¬v3 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v22 ∨ v36 ∨ v38 ∨ v43 ∨ v45 ∨ v46)
    (c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1935 : ¬v20 ∨ ¬v11 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2099 : ¬v15 ∨ v8 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v28)
    (c2182 : v21 ∨ ¬v2 ∨ v6 ∨ v7 ∨ ¬v11 ∨ ¬v14 ∨ v20)
    (c2184 : ¬v21 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v43 ∨ v44 ∨ v45)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2326 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v29 ∨ v32 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2349 : ¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2412 : ¬v22 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2488 : ¬v27 ∨ v1 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v21)
    (c2496 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2517 : ¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2589 : ¬v18 ∨ v11 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c2598 : ¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2604 : v31 ∨ v3 ∨ v10 ∨ ¬v16 ∨ v30 ∨ v33 ∨ v44 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2636 : ¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2691 : v31 ∨ v4 ∨ v11 ∨ v18 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2700 : v30 ∨ v2 ∨ v9 ∨ ¬v18 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2708 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2726 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v39 ∨ v45 ∨ v46)
    (c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45)
    (c2786 : v48 ∨ v49)
    (c2787 : ¬v39 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c2805 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c2825 : v2 ∨ ¬v3 ∨ v9 ∨ v49)
    (c2826 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2827 : v33 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2829 : ¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49)
    (c2830 : ¬v33 ∨ v1 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v11 ∨ v49)
    (c2831 : ¬v18 ∨ v1 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v32 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v46)
    : (v8 ∨ v1 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v49) ∧ (¬v12 ∨ v7 ∨ ¬v8 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v35 ∨ v1 ∨ v5 ∨ v8 ∨ v12 ∨ v22 ∨ v40 ∨ v49) ∧ (v30 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v35 ∨ v36 ∨ v37 ∨ v42) ∧ (¬v22 ∨ v7 ∨ v8 ∨ ¬v11 ∨ v13 ∨ v14 ∨ v36 ∨ v37 ∨ v42 ∨ v49) ∧ (¬v29 ∨ v22 ∨ v36 ∨ v37 ∨ v42) ∧ (¬v3 ∨ v9 ∨ v49) ∧ (¬v5 ∨ ¬v1 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47) ∧ (v33 ∨ ¬v1 ∨ v3 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v14 ∨ v32 ∨ v40 ∨ v49) ∧ (¬v30 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v36 ∨ v37 ∨ v38 ∨ v45) ∧ (¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39) ∧ (v9 ∨ v7 ∨ ¬v8 ∨ v22 ∨ v27 ∨ v35 ∨ v40 ∨ v42 ∨ v49) ∧ (¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45) ∧ (v35 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ ¬v42 ∨ v49) ∧ (v16 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ ¬v26 ∨ v30 ∨ v32 ∨ v33) ∧ (v9 ∨ v7 ∨ ¬v8 ∨ v14 ∨ v22 ∨ v27 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v49) := by
  have c2832 : v32 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v11 ∨ v33 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v12 := by
      rcases c2827 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v18 := by
      rcases c2831 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
    have u3 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n20
    have u4 : v31 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1447 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c2833 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    rcases c2099 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
  have c2834 : ¬v12 ∨ v7 ∨ ¬v8 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c1570 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2835 : ¬v32 ∨ v1 ∨ v5 ∨ v7 ∨ v9 ∨ v11 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v25 := by
      rcases c2805 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u6 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : v8 := by
      rcases c2833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n10
    have u14 : ¬v12 := by
      rcases c2834 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u2
      · exact a
      · exact absurd a n8
    have u16 : v13 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd u15 a
    have u17 : v14 := by
      rcases c2517 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a n4
      · exact a
    rcases c53 with a|a|a
    · exact absurd u13 a
    · exact absurd u16 a
    · exact absurd u17 a
  have c2836 : v32 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v11 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v34 := by
      rcases c2832 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
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
      · exact absurd a n20
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v18 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n19
    have u6 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a u2
      · exact absurd u5 a
      · exact a
    have u12 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
    have u13 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
    have u14 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u11
      · exact a
    have u15 : v14 := by
      rcases c408 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd u14 a
    have u16 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
    have u17 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a n20
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n14
    have u18 : v25 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c117 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c2837 : v11 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
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
    have u8 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v32 := by
      rcases c2835 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n8
    have u15 : ¬v33 := by
      rcases c2830 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    rcases c2836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2838 : ¬v8 ∨ ¬v3 ∨ v9 ∨ v32 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u2 : v2 := by
      rcases c2825 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u5 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u6 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u9 : v11 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n5
    have u10 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
    have u11 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact a
    have u14 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
    have u15 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u11
    have u16 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v34 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u3
    have u18 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u10
    have u19 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u18 a
    rcases c1570 with a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a n5
  have c2839 : v12 ∨ v1 ∨ ¬v2 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v11 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v14 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n14
    have u3 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n7 a
    have u4 : v21 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd u1 a
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
    rcases c2184 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd n7 a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2840 : ¬v13 ∨ v1 ∨ ¬v3 ∨ v4 ∨ ¬v11 ∨ v22 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u3 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u5 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u6 : ¬v18 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v15 := by
      rcases c1671 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n5
    have u8 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a u3
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v5 := by
      rcases c1670 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n13
    have u14 : v17 := by
      rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a n13
    rcases c92 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c2841 : v8 ∨ v1 ∨ ¬v2 ∨ v6 ∨ v7 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v13 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v27 := by
      rcases c2839 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v29 := by
      rcases c2833 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n10
      · exact a
      · exact absurd a n16
    rcases c485 with a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a n15
    · exact absurd a n11
    · exact absurd a n10
  have c2842 : ¬v35 ∨ v1 ∨ v5 ∨ v8 ∨ v12 ∨ v22 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u6
    have u10 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    rcases c83 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c2843 : v22 ∨ ¬v3 ∨ v8 ∨ v9 ∨ v12 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v2 := by
      rcases c2825 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
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
    have u12 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : v11 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n6
    have u14 : ¬v35 := by
      rcases c2842 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n6
    have u15 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u6
    have u16 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v13 := by
      rcases c2840 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u21 : v28 := by
      rcases c2841 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n6
    have u22 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n5
      · exact a
      · exact absurd a u8
    rcases c683 with a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u24
  have c2844 : v12 ∨ ¬v3 ∨ v8 ∨ v9 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v2 := by
      rcases c2825 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
    have u2 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : v22 := by
      rcases c2843 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u6 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u8 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
    have u10 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : v11 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
    have u17 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n4
      · exact a
      · exact absurd a u9
    have u18 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v10 := by
      rcases c1171 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
    rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd u16 a
    · exact absurd a n3
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a u13
  have c2845 : v30 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v35 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n9 a
    rcases c393 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n9 a
    · exact absurd a n12
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n5
  have c2846 : ¬v22 ∨ v7 ∨ v8 ∨ ¬v11 ∨ v13 ∨ v14 ∨ v36 ∨ v37 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
    have u6 : ¬v21 := by
      rcases c2412 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact a
    have u7 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a n8
    have u8 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    rcases c2845 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd u7 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2847 : ¬v29 ∨ v22 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v23 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u1
    have u4 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    rcases c485 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u4
  have c2848 : v33 ∨ ¬v3 ∨ v9 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v2 := by
      rcases c2825 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
    have u2 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : v11 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n4
    have u13 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u6
    have u14 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v8 := by
      rcases c2838 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u18 : v12 := by
      rcases c2844 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
    have u19 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u12 a
    have u20 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u12 a
    have u21 : ¬v22 := by
      rcases c2846 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd u12 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
    have u22 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
    have u23 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u17
      · exact a
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    rcases c1671 with a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u21
  have c2849 : v22 ∨ v1 ∨ ¬v2 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v11 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u5 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v14 := by
      rcases c1671 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
    rcases c2182 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n7 a
    · exact absurd u7 a
    · exact absurd a u5
  have c2850 : ¬v22 ∨ v32 ∨ ¬v33 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u4 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n2 a
      · exact a
    rcases c588 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
  have c2851 : v27 ∨ v7 ∨ v13 ∨ v14 ∨ v22 ∨ v32 ∨ ¬v33 ∨ v39 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : v28 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u3 a
      · exact a
    rcases c588 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n0
  have c2852 : v32 ∨ ¬v3 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v2 := by
      rcases c2825 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u7 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u8 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
    have u10 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
    have u11 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v33 := by
      rcases c2848 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u14 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v11 := by
      rcases c2837 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v22 := by
      rcases c2850 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u9
    have u18 : v8 := by
      rcases c2849 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a n3
    have u19 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u18 a
      · exact absurd u16 a
      · exact a
    have u22 : v27 := by
      rcases c2851 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n3
    have u23 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u20
      · exact a
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u12
    have u25 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u24 a
    rcases c2488 with a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd u24 a
  have c2853 : ¬v3 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v2 := by
      rcases c2825 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u5 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    have u6 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u8 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
    have u9 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u10 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v32 := by
      rcases c2852 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u14 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v25 := by
      rcases c2805 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u8
    have u18 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u17 a
    have u24 : v8 := by
      rcases c2833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a n2
    have u25 : ¬v12 := by
      rcases c2834 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u24 a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n2
    have u26 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u15
      · exact a
      · exact absurd a u8
    have u27 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : v14 := by
      rcases c2517 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd u24 a
      · exact absurd a n1
      · exact a
    have u30 : ¬v11 := by
      rcases c2182 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd u29 a
      · exact absurd a u28
    have u31 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u29 a
    rcases c2223 with a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u30
    · exact absurd a u25
    · exact absurd a u31
    · exact absurd u26 a
  have c2854 : ¬v32 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v16 := by
      rcases c2604 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v2 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u9 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n9
    have u10 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    have u11 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a u2
      · exact a
      · exact absurd a n7
    rcases c2223 with a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd u11 a
  have c2855 : ¬v5 ∨ ¬v1 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c274 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n7
  have c2857 : v33 ∨ ¬v1 ∨ v3 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v14 ∨ v32 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
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
    have u7 : ¬v4 := by
      rcases c2496 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
    have u8 : ¬v39 := by
      rcases c2787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u9 : ¬v5 := by
      rcases c2855 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
    have u10 : v34 := by
      rcases c2827 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u11 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
    rcases c2726 with a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u3
  have c2858 : ¬v1 ∨ v3 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v14 ∨ v32 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v33 := by
      rcases c2857 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v4 := by
      rcases c2496 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v39 := by
      rcases c1064 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u6
  have c2859 : v30 ∨ v1 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v16 ∨ v26 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v2 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n14
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n13
    have u3 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n8
      · exact a
    have u4 : ¬v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1254 with a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n15
  have c2860 : v4 ∨ v1 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v16 ∨ v26 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v30 := by
      rcases c2859 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v18 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n14
    have u5 : v17 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c91 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2861 : v4 ∨ v1 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v32 ∨ v33 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v2 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n12
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n11
    have u2 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v16 := by
      rcases c2708 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n13
    rcases c2860 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c2862 : ¬v30 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v36 ∨ v37 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v23 := by
      rcases c1033 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u3
      · exact absurd a u1
    rcases c2077 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
  have c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v23 := by
      rcases c1447 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    rcases c214 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
  have c2864 : v9 ∨ v7 ∨ ¬v8 ∨ ¬v14 ∨ v22 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v32 := by
      rcases c2854 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v1 := by
      rcases c2858 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n7
    have u14 : ¬v2 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
    have u15 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u16 : ¬v39 := by
      rcases c2787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : v4 := by
      rcases c2861 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u19 : v41 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u18
    have u20 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v30 := by
      rcases c2862 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u9
    have u24 : ¬v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u25 : v17 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u9
    rcases c2077 with a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u24
  have c2865 : ¬v4 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v32 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v14 := by
      rcases c2864 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
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
    have u9 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd n0 a
    have u11 : v41 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u9
    have u12 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n0 a
    have u13 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u10 a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
    have u19 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u20 : ¬v30 := by
      rcases c2862 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
    have u21 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n9
    have u22 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : ¬v25 := by
      rcases c2826 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u26 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u22
      · exact a
    have u27 : v24 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u23
      · exact a
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c108 with a|a
    · exact absurd u26 a
    · exact absurd u27 a
  have c2866 : v40 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v32 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
    have u2 : ¬v14 := by
      rcases c2864 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
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
    have u9 : ¬v4 := by
      rcases c2865 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n8
      · exact a
      · exact absurd a n9
    have u12 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
    have u17 : v39 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n7
      · exact a
      · exact absurd a u5
    have u18 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c2787 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n7
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2867 : v35 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n9
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
    have u7 : ¬v14 := by
      rcases c2864 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v32 := by
      rcases c2866 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v16 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u17 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
    have u18 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u17
    have u19 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd u18 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
    have u20 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u22 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u23 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a n0
      · exact a
      · exact absurd a n8
    rcases c1755 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a n6
    · exact absurd u23 a
    · exact absurd a u9
    · exact absurd a n0
  have c2868 : v9 ∨ v7 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ ¬v28 ∨ ¬v32 ∨ v35 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u5 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u11 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a n8
    have u12 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n9
    have u18 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u19 : v39 := by
      rcases c2805 with a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u8
      · exact absurd a u18
      · exact a
      · exact absurd a n9
    have u20 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u2
    have u21 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v6 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n10
    have u23 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u22 a
      · exact absurd u17 a
      · exact a
    have u24 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u22 a
    have u25 : v16 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u24
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u26 : v11 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd u20 a
      · exact a
    have u27 : v8 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u7
    rcases c44 with a|a|a
    · exact absurd u27 a
    · exact absurd u20 a
    · exact absurd u26 a
  have c2869 : v18 ∨ v3 ∨ v7 ∨ ¬v8 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v14 ∨ v19 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v39 := by
      rcases c2787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v2 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u1
    have u5 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n13
    have u6 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    have u7 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
    have u8 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u7 a
      · exact a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd n5 a
  have c2870 : v27 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v22 ∨ v35 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v10 := by
      rcases c2867 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u10 : v28 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact a
    have u15 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
    have u16 : ¬v32 := by
      rcases c2868 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd u10 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u17 : v33 := by
      rcases c2869 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u18 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v39 := by
      rcases c1064 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c588 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n7
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a n0
  have c2871 : v9 ∨ v7 ∨ ¬v8 ∨ v22 ∨ v27 ∨ v35 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
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
    have u8 : v11 := by
      rcases c2870 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u13 : v28 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
    have u19 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u15
    have u20 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n4
    have u22 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n6
    have u23 : ¬v32 := by
      rcases c2868 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd u13 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u24 : ¬v39 := by
      rcases c2787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u25 : v38 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a u24
      · exact absurd a u5
    have u26 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v31 := by
      rcases c2547 with a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u28 : v6 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u26
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n1
      · exact a
    have u29 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u28 a
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2872 : ¬v11 ∨ v2 ∨ v3 ∨ ¬v6 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd n5 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n9
      · exact a
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n11
    have u5 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd n3 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u7 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u2
    have u8 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
    have u9 : v18 := by
      rcases c368 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n2
      · exact a
    rcases c82 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c2873 : v3 ∨ v2 ∨ ¬v6 ∨ v7 ∨ ¬v8 ∨ v9 ∨ ¬v11 ∨ v14 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v19 := by
      rcases c2872 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd n4 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : v25 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a n9
    rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c2874 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
    rcases c4 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
  have c2875 : v39 ∨ v7 ∨ ¬v8 ∨ v9 ∨ ¬v11 ∨ v14 ∨ v27 ∨ v33 ∨ v38 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n11
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v6 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u12 : ¬v2 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v26 := by
      rcases c2873 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u13 a
    rcases c1595 with a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a u8
  have c2876 : v35 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n10 a
      · exact a
    have u6 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n11
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v34 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u12 : v31 := by
      rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v29 := by
      rcases c571 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n10 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u4
      · exact a
    rcases c125 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2877 : v10 ∨ v2 ∨ v7 ∨ v9 ∨ v11 ∨ v22 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n11
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
    have u13 : ¬v30 := by
      rcases c2862 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
    have u14 : v4 := by
      rcases c2876 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n10 a
      · exact absurd a n11
    have u15 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v34 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n11
    have u17 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u18 : v17 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    rcases c86 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c2878 : v40 ∨ v7 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v22 ∨ v32 ∨ v33 ∨ v35 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n11
    have u2 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v2 := by
      rcases c2877 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd n10 a
      · exact absurd a n11
    have u9 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u6
    have u10 : ¬v6 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u10
  have c2879 : v16 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ ¬v26 ∨ v30 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n6 a
      · exact a
    rcases c523 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n8
  have c2880 : v11 ∨ ¬v2 ∨ ¬v6 ∨ v7 ∨ ¬v8 ∨ v9 ∨ ¬v10 ∨ v14 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v1 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v4 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
    have u6 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n11
    have u7 : v34 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n14
    have u8 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v18 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n13
    have u12 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u11 a
    rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd u11 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c2881 : ¬v26 ∨ v2 ∨ v9 ∨ v22 ∨ v32 ∨ v33 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
    have u10 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u11
      · exact a
      · exact absurd a u1
    have u14 : ¬v18 := by
      rcases c2700 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u13 a
      · exact a
    rcases c1443 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a n5
  have c2882 : v9 ∨ v7 ∨ ¬v8 ∨ v14 ∨ v22 ∨ v27 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v42 := by
      rcases c2871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v11 := by
      rcases c2875 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n10
    have u11 : v10 := by
      rcases c2878 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n10
    have u12 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u11 a
    have u14 : v6 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u15 : ¬v2 := by
      rcases c2880 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v26 := by
      rcases c2881 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n10
    have u17 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact a
    have u18 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a n9
    have u19 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u14 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u14 a
    have u21 : v17 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u10
    have u22 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
    rcases c81 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  exact ⟨c2833, c2834, c2842, c2845, c2846, c2847, c2853, c2855, c2857, c2862, c2863, c2871, c2874, c2876, c2879, c2882⟩
