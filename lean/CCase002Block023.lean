import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1150-1199 of the 2934-step refutation of ccase002: 109 core clauses and 55 earlier-derived ones give 19 more. -/
theorem CCase002_block023
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
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
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
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
    (c125 : ¬v33 ∨ ¬v29)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v33)
    (c143 : ¬v37 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c165 : ¬v45 ∨ ¬v43)
    (c170 : ¬v45 ∨ ¬v44)
    (c177 : ¬v45 ∨ ¬v48)
    (c178 : ¬v49 ∨ ¬v45)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c194 : v36 ∨ v43 ∨ v24 ∨ v44 ∨ v16 ∨ v15 ∨ v29 ∨ v35 ∨ v28 ∨ v31 ∨ v17 ∨ v23 ∨ ¬v22 ∨ v49)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c233 : ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v15 ∨ v34 ∨ v27 ∨ v22)
    (c240 : v43 ∨ v6 ∨ v3 ∨ ¬v14 ∨ v7 ∨ v15 ∨ v17 ∨ v9 ∨ v13 ∨ v10 ∨ v21 ∨ v8 ∨ v48 ∨ v49)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c294 : v36 ∨ v43 ∨ v35 ∨ v16 ∨ v17 ∨ v44 ∨ v15 ∨ ¬v37 ∨ v23 ∨ v31 ∨ v42 ∨ v30 ∨ v38 ∨ v49)
    (c305 : ¬v24 ∨ v25 ∨ v3 ∨ v17 ∨ v19 ∨ v4 ∨ v2 ∨ v23 ∨ v16 ∨ v10 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c318 : ¬v27 ∨ v34 ∨ v19 ∨ v41 ∨ v49 ∨ v35 ∨ v20 ∨ v26 ∨ v28 ∨ v18 ∨ v32 ∨ v47 ∨ v48 ∨ v25)
    (c324 : ¬v45 ∨ v38 ∨ v6 ∨ v41 ∨ v9 ∨ v3 ∨ v39 ∨ v11 ∨ v10 ∨ v2 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c332 : v22 ∨ ¬v9 ∨ v24 ∨ v23 ∨ v2 ∨ v16 ∨ v5 ∨ v15 ∨ v8 ∨ v12 ∨ v11 ∨ v19 ∨ v10 ∨ v3)
    (c342 : v43 ∨ v44 ∨ ¬v1 ∨ v49 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c383 : ¬v39 ∨ v32 ∨ v5 ∨ v46 ∨ v37 ∨ v4 ∨ v29 ∨ v31 ∨ v38 ∨ v36 ∨ v40 ∨ v43 ∨ v3 ∨ v47)
    (c389 : v28 ∨ ¬v21 ∨ v23 ∨ v16 ∨ v14 ∨ v43 ∨ v20 ∨ v15 ∨ v13 ∨ v9 ∨ v7 ∨ v22 ∨ v48 ∨ v49)
    (c418 : v36 ∨ ¬v30 ∨ v37 ∨ v31 ∨ v24 ∨ v22 ∨ v23 ∨ v29)
    (c423 : v20 ∨ v6 ∨ v17 ∨ v19 ∨ ¬v13 ∨ v3 ∨ v12 ∨ v11 ∨ v10 ∨ v14 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c424 : v4 ∨ v6 ∨ v18 ∨ v11 ∨ v13 ∨ v19 ∨ v5 ∨ ¬v12)
    (c447 : ¬v45 ∨ v39 ∨ v2 ∨ v44 ∨ v3 ∨ v4 ∨ v38 ∨ v46)
    (c458 : v44 ∨ ¬v1 ∨ v49 ∨ v7 ∨ v8 ∨ v43 ∨ v2 ∨ v9)
    (c467 : v29 ∨ v43 ∨ v44 ∨ v35 ∨ v37 ∨ v42 ∨ v49 ∨ ¬v36)
    (c475 : v7 ∨ ¬v20 ∨ v27 ∨ v6 ∨ v21 ∨ v23 ∨ v13 ∨ v15 ∨ v19 ∨ v12 ∨ v9 ∨ v16 ∨ v5 ∨ v28)
    (c482 : v36 ∨ ¬v30 ∨ v24 ∨ v31 ∨ v23 ∨ v37 ∨ v16 ∨ v34 ∨ v27 ∨ v35 ∨ v15 ∨ v17 ∨ v29 ∨ v41)
    (c488 : ¬v28 ∨ v42 ∨ v48 ∨ v43 ∨ v16 ∨ v22 ∨ v34 ∨ v35 ∨ v15 ∨ v27 ∨ v21 ∨ v23 ∨ v30 ∨ v49)
    (c506 : ¬v33 ∨ v40 ∨ v26 ∨ v46 ∨ v41 ∨ v37 ∨ v23 ∨ v34 ∨ v32 ∨ v31 ∨ v30 ∨ v25 ∨ v47 ∨ v48)
    (c511 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v2 ∨ v44 ∨ v3 ∨ v4)
    (c520 : ¬v45 ∨ v38 ∨ v37 ∨ v3 ∨ v9 ∨ v4 ∨ v10 ∨ v7 ∨ v11 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v49)
    (c531 : ¬v37 ∨ v43 ∨ v31 ∨ v44 ∨ v30 ∨ v29 ∨ v36 ∨ v38)
    (c540 : ¬v31 ∨ v38 ∨ v25 ∨ v24 ∨ v37 ∨ v32 ∨ v23 ∨ v30)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c564 : v19 ∨ v5 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c767 : v12 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v19)
    (c798 : v14 ∨ ¬v9 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c843 : v23 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v29 ∨ v30)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c928 : v7 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c949 : v13 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18)
    (c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c969 : v24 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v32 ∨ v33)
    (c991 : v27 ∨ v6 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1005 : v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1094 : ¬v26 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1132 : ¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1143 : ¬v27 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1223 : v6 ∨ v13 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1310 : ¬v28 ∨ v15 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c1326 : v20 ∨ v7 ∨ v15 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1366 : ¬v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v27 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41)
    (c1377 : ¬v38 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1379 : ¬v33 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v25)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1387 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v18 ∨ v22 ∨ v28)
    (c1431 : ¬v37 ∨ ¬v27 ∨ ¬v33)
    (c1448 : ¬v32 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24)
    (c1477 : v34 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v28)
    (c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1570 : v39 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v33 ∨ v40)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1685 : v18 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1690 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v28 ∨ v29 ∨ v35)
    (c1696 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v16 ∨ v17)
    (c1702 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1703 : ¬v36 ∨ v2 ∨ v3 ∨ ¬v45 ∨ v46)
    (c1704 : v8 ∨ v2 ∨ v5 ∨ v6 ∨ v9 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    : (¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46) ∧ (v34 ∨ ¬v1 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37) ∧ (¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37) ∧ (v11 ∨ v2 ∨ v3 ∨ v6 ∨ v9 ∨ v10 ∨ ¬v37 ∨ v41 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v9 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49) ∧ (v46 ∨ ¬v1 ∨ v2 ∨ v15 ∨ v16 ∨ v23 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ v3 ∨ v6 ∨ v7 ∨ v10 ∨ v17 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32) ∧ (v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46) ∧ (¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19) ∧ (v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38) ∧ (v6 ∨ v3 ∨ v4 ∨ v5 ∨ v7 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v21 ∨ v23 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v39 ∨ v3 ∨ v4 ∨ v5 ∨ v29 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v40 ∨ v43 ∨ v46 ∨ v47) ∧ (¬v39 ∨ v3 ∨ v4 ∨ v5 ∨ v29 ∨ v31 ∨ v32 ∨ v36 ∨ v40 ∨ v43 ∨ v46 ∨ v47) ∧ (¬v39 ∨ v3 ∨ v4 ∨ v5 ∨ v29 ∨ v31 ∨ v32 ∨ v40 ∨ v43 ∨ v46 ∨ v47) ∧ (v20 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13 ∨ ¬v21 ∨ v32 ∨ v39 ∨ v46) := by
  have c1705 : ¬v13 ∨ v2 ∨ v5 ∨ v6 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1704 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1706 : v46 ∨ ¬v1 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v7 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a n0
    have u13 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u5
    have u14 : ¬v13 := by
      rcases c1705 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v33 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v37 := by
      rcases c1431 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u18 a
    have u23 : v40 := by
      rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n12
    have u24 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u10
    rcases c155 with a|a
    · exact absurd u23 a
    · exact absurd u24 a
  have c1708 : v20 ∨ ¬v1 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v28 := by
      rcases c1706 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n5
  have c1709 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v29 := by
      rcases c1310 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v30 := by
      rcases c488 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n12
    rcases c122 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1710 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1709 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1711 : v2 ∨ ¬v1 ∨ v7 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n6
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    rcases c458 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n1 a
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u3
  have c1712 : v30 ∨ v2 ∨ v3 ∨ v6 ∨ v15 ∨ v16 ∨ ¬v20 ∨ v23 ∨ v29 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ ¬v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v49 := by
      rcases c178 with a|a
      · exact a
      · exact absurd n13 a
    have u2 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd n13 a
      · exact a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n13 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a u1
    have u5 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n1
    have u6 : v17 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u3
    have u7 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : v1 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n6 a
    have u15 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd u6 a
      · exact absurd n6 a
      · exact a
    have u16 : v7 := by
      rcases c342 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u13 a
      · exact absurd a u1
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u10
    have u17 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a u1
    have u18 : ¬v22 := by
      rcases c843 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u19 : v24 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n2
    have u20 : ¬v28 := by
      rcases c1710 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a u1
    have u21 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u19 a
    rcases c1046 with a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd u6 a
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n14
  have c1713 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n4 a
      · exact a
    rcases c447 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
  have c1714 : ¬v1 ∨ v2 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v28 := by
      rcases c1710 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v7 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n12
    have u8 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n9
    have u13 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n9
    have u14 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u10
    have u15 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u5
    have u16 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v20 := by
      rcases c1708 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
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
    have u19 : v30 := by
      rcases c1712 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u18 a
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n11
    have u20 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v24 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u19 a
      · exact absurd a u13
      · exact absurd a u20
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
    have u24 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : v19 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n10
    have u28 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u27 a
    have u29 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u27 a
    rcases c962 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u7 a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u25
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a n9
  have c1715 : v34 ∨ ¬v1 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v28 := by
      rcases c1710 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v2 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
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
      · exact absurd a n11
    have u7 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u11 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u4
    have u12 : v20 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : v17 := by
      rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd u18 a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u18 a
    have u21 : v27 := by
      rcases c475 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u12 a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u5
    have u22 : v24 := by
      rcases c617 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd u18 a
      · exact absurd a u20
      · exact absurd a n6
      · exact a
    rcases c113 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1716 : v15 ∨ ¬v1 ∨ ¬v2 ∨ v16 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v3 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n12
    have u5 : v20 := by
      rcases c1326 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v17 := by
      rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
    have u11 : v18 := by
      rcases c617 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd u10 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c84 with a|a|a
    · exact absurd u11 a
    · exact absurd u5 a
    · exact absurd u10 a
  have c1717 : v34 ∨ ¬v1 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v22 := by
      rcases c1715 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v29 := by
      rcases c1690 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact a
      · exact absurd a n6
    have u13 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v2 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v7 := by
      rcases c1711 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
    have u18 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd u2 a
      · exact absurd a n7
    have u21 : v17 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u4
    have u22 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u16
    have u23 : v14 := by
      rcases c798 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a n3
      · exact absurd u21 a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n10
    rcases c46 with a|a
    · exact absurd u22 a
    · exact absurd u23 a
  have c1718 : v33 ∨ v6 ∨ ¬v7 ∨ ¬v17 ∨ ¬v21 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v19 := by
      rcases c87 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u2 : v13 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
    have u3 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c54 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c1719 : ¬v21 ∨ v2 ∨ v3 ∨ v4 ∨ v6 ∨ ¬v7 ∨ v15 ∨ v16 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v17 := by
      rcases c1718 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : v30 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n15
      · exact absurd a n19
    have u4 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
    have u5 : ¬v10 := by
      rcases c1696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u2
    have u6 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v24 := by
      rcases c482 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n18
    have u10 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v18 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u8
    have u12 : v19 := by
      rcases c305 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u1
    rcases c90 with a|a|a
    · exact absurd n0 a
    · exact absurd u11 a
    · exact absurd u12 a
  have c1720 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    rcases c418 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
  have c1721 : ¬v21 ∨ v2 ∨ v3 ∨ v4 ∨ v6 ∨ ¬v7 ∨ v15 ∨ v16 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n13
    have u6 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n13
    have u7 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v26 := by
      rcases c1719 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u7
    have u16 : ¬v30 := by
      rcases c1720 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
    have u17 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u16
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n1
    have u18 : v17 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u4
    have u19 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact absurd u18 a
      · exact a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n7
    · exact absurd u18 a
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a u12
  have c1722 : v34 ∨ v2 ∨ v3 ∨ v4 ∨ v6 ∨ ¬v7 ∨ v15 ∨ v16 ∨ ¬v21 ∨ v23 ∨ v28 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v27 := by
      rcases c1721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n12
    have u11 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n12
    have u12 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v29 := by
      rcases c1143 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a u11
    have u15 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v30 := by
      rcases c1720 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
    have u18 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
    have u19 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u17
      · exact a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n1
    have u20 : v17 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u9
    have u21 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u19 a
      · exact a
    rcases c798 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u19 a
    · exact absurd a n7
    · exact absurd u20 a
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u18
    · exact absurd a n11
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a n13
    · exact absurd a n15
  have c1723 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1720 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c1724 : v23 ∨ ¬v1 ∨ v2 ∨ v3 ∨ ¬v7 ∨ v15 ∨ v16 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
    have u3 : v21 := by
      rcases c1717 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a n9
    have u7 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n9
    have u9 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
    have u10 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v28 := by
      rcases c1722 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
    have u18 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u6
    have u19 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
    have u20 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v17 := by
      rcases c1004 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u22 : v20 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u20
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c88 with a|a|a
    · exact absurd u21 a
    · exact absurd u3 a
    · exact absurd u22 a
  have c1725 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    rcases c458 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n1 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
  have c1726 : v11 ∨ v2 ∨ v3 ∨ v6 ∨ v9 ∨ v10 ∨ ¬v37 ∨ v41 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n8 a
      · exact a
    rcases c324 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1727 : v16 ∨ ¬v1 ∨ v2 ∨ v3 ∨ v15 ∨ v23 ∨ v27 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v21 := by
      rcases c1717 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v7 := by
      rcases c1724 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n9
    have u8 : ¬v13 := by
      rcases c1725 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n12
    have u9 : ¬v6 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v20 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u10 a
    have u12 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u11
    have u14 : v8 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n12
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u13
    have u15 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v37 := by
      rcases c1726 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n2
    have u19 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u21
    have u23 : v22 := by
      rcases c1723 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u17
    have u24 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u23 a
      · exact a
    rcases c194 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u22
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a n8
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd u23 a
    · exact absurd a n12
  have c1728 : v24 ∨ ¬v1 ∨ v2 ∨ v3 ∨ v7 ∨ v9 ∨ v16 ∨ v22 ∨ v23 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n10
    have u5 : v8 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n13
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
    have u6 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v6 := by
      rcases c928 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v37 := by
      rcases c1726 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u9
      · exact a
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n2
    rcases c1723 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u11
  have c1729 : v2 ∨ ¬v1 ∨ v3 ∨ v15 ∨ v16 ∨ v23 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v27 := by
      rcases c1727 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n0
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
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v7 := by
      rcases c1724 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v9 := by
      rcases c1728 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u9 a
      · exact a
    rcases c342 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a n11
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u11
  have c1730 : ¬v9 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    rcases c342 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n1 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
  have c1731 : v9 ∨ v2 ∨ ¬v3 ∨ v7 ∨ v12 ∨ v13 ∨ v14 ∨ v15 ∨ v16 ∨ ¬v21 ∨ v23 ∨ ¬v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v20 := by
      rcases c389 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd n9 a
      · exact absurd u7 a
      · exact a
    have u9 : v33 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a u6
      · exact absurd a n1
    have u15 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n15
    have u16 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u14 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u16
  have c1732 : v17 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v18 ∨ v23 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n1
    have u2 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u4
    have u6 : ¬v36 := by
      rcases c467 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact a
    have u7 : v22 := by
      rcases c1723 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n8
    have u8 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    rcases c194 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd u7 a
    · exact absurd a n12
  have c1733 : ¬v30 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a u2
    have u4 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u3 a
    rcases c969 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u1
  have c1734 : v46 ∨ ¬v1 ∨ v2 ∨ v15 ∨ v16 ∨ v23 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v21 := by
      rcases c1717 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v3 := by
      rcases c1729 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v9 := by
      rcases c1730 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n10
    have u11 : v8 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u10
    have u12 : ¬v14 := by
      rcases c41 with a|a
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
    have u16 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v6 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n8
      · exact a
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a u13
    have u18 : ¬v27 := by
      rcases c1731 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n9
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n6
    have u20 : ¬v19 := by
      rcases c92 with a|a|a
      · exact absurd u1 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u19 a
    have u22 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u19 a
    have u23 : v37 := by
      rcases c1732 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n10
    have u24 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v30 := by
      rcases c1733 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a n0
    have u28 : v31 := by
      rcases c294 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u23 a
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a n10
    have u29 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : v24 := by
      rcases c1366 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n5
      · exact a
      · exact absurd a u18
      · exact absurd a u30
      · exact absurd a n6
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u2
    have u32 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u26
      · exact a
      · exact absurd a u29
    rcases c111 with a|a
    · exact absurd u31 a
    · exact absurd u32 a
  have c1735 : v39 ∨ v3 ∨ v4 ∨ v5 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v27 ∨ ¬v31 ∨ v34 ∨ v38 ∨ v41 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n0
      · exact a
      · exact absurd a u2
    have u5 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1366 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n12
  have c1736 : v5 ∨ v3 ∨ v4 ∨ v6 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v21 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v35 ∨ ¬v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n13 a
    have u2 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n13 a
      · exact a
    have u3 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n13 a
    have u4 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n13 a
    have u5 : ¬v40 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n13 a
    have u6 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n13 a
    have u7 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v31 := by
      rcases c294 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd n13 a
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n17
    have u11 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v18 := by
      rcases c1735 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u10 a
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n14
    have u14 : ¬v20 := by
      rcases c91 with a|a|a
      · exact absurd u13 a
      · exact absurd n7 a
      · exact a
    have u15 : ¬v19 := by
      rcases c90 with a|a|a
      · exact absurd n7 a
      · exact absurd u13 a
      · exact a
    have u16 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n11
    have u17 : ¬v26 := by
      rcases c1100 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n11
    have u18 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u16 a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a n15
    · exact absurd a u5
  have c1737 : v11 ∨ v3 ∨ v6 ∨ v7 ∨ v10 ∨ ¬v13 ∨ v17 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n5 a
    rcases c423 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n5 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1738 : ¬v13 ∨ v3 ∨ v6 ∨ v7 ∨ v10 ∨ v17 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1737 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1739 : v17 ∨ v3 ∨ v6 ∨ v7 ∨ ¬v18 ∨ ¬v21 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v20 := by
      rcases c91 with a|a|a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v19 := by
      rcases c90 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
    have u5 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u4 a
    rcases c1738 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c1379 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    rcases c969 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u2
  have c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n0
  have c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd n0 a
  have c1743 : v4 ∨ v3 ∨ v5 ∨ v6 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v30 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v12 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v32 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
    have u4 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v24 := by
      rcases c1448 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
    have u8 : v26 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n11
    have u9 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v38 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a u4
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v48 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact a
    have u12 : v45 := by
      rcases c1377 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    rcases c177 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c1744 : ¬v21 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v37 := by
      rcases c1736 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n0 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v18 := by
      rcases c1739 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n0 a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u7
    have u9 : ¬v10 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n8
    have u10 : v38 := by
      rcases c520 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n18
    have u11 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v19 := by
      rcases c1743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u13 a
    have u15 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n17
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n13
    have u16 : v26 := by
      rcases c991 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd u13 a
      · exact absurd a u14
      · exact a
      · exact absurd a n13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n17
    have u17 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u16 a
    rcases c1262 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd a n11
    · exact absurd a u18
  have c1745 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v32 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n5
      · exact a
    have u2 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v40 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
    rcases c1383 with a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1746 : v3 ∨ v4 ∨ v5 ∨ v7 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v45 := by
      rcases c1685 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v10 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v39 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u4 a
    rcases c520 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a n15
  have c1747 : v9 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v21 ∨ v23 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v27 := by
      rcases c1744 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v18 := by
      rcases c1746 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v19 := by
      rcases c90 with a|a|a
      · exact absurd n9 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v20 := by
      rcases c91 with a|a|a
      · exact absurd u9 a
      · exact absurd n9 a
      · exact a
    have u13 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
    rcases c389 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd n9 a
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n17
    · exact absurd a n18
  have c1748 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    rcases c540 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n4
  have c1749 : v20 ∨ v6 ∨ v15 ∨ ¬v21 ∨ ¬v24 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
    rcases c613 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c1750 : v20 ∨ v6 ∨ ¬v10 ∨ v14 ∨ v19 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n5
    have u5 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v33 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n4
    have u10 : v21 := by
      rcases c1477 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd u4 a
      · exact absurd a u7
    have u11 : ¬v18 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u9 a
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u8
  have c1751 : v6 ∨ v3 ∨ v4 ∨ v5 ∨ v7 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v21 ∨ v23 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v17 := by
      rcases c1747 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd u1 a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v19 := by
      rcases c87 with a|a|a
      · exact absurd u1 a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n8 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v24 := by
      rcases c1749 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd n8 a
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u5
    have u7 : ¬v10 := by
      rcases c1750 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : v11 := by
      rcases c287 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u7
      · exact a
    have u9 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u8 a
      · exact a
    rcases c767 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u8 a
    · exact absurd a u4
    · exact absurd a u3
  have c1752 : ¬v39 ∨ v3 ∨ v4 ∨ v5 ∨ v29 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v40 ∨ v43 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    rcases c383 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n12
  have c1753 : ¬v39 ∨ v3 ∨ v4 ∨ v5 ∨ v29 ∨ v31 ∨ v32 ∨ v36 ∨ v40 ∨ v43 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1752 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1754 : ¬v39 ∨ v3 ∨ v4 ∨ v5 ∨ v29 ∨ v31 ∨ v32 ∨ v40 ∨ v43 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1753 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1755 : v20 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13 ∨ ¬v21 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v19 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n0
    have u4 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u3 a
    have u5 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u3 a
    have u6 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n8
      · exact a
      · exact absurd a n7
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u6 a
      · exact a
    rcases c613 with a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd n6 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u9
  exact ⟨c1710, c1713, c1717, c1720, c1723, c1726, c1730, c1734, c1738, c1740, c1741, c1742, c1745, c1748, c1751, c1752, c1753, c1754, c1755⟩
