import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2150-2199 of the 2915-step refutation of ccase001: 144 core clauses and 94 earlier-derived ones give 17 more. -/
theorem CCase001_block043
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
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
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c99 : ¬v21 ∨ ¬v19)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
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
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c153 : ¬v39 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c159 : ¬v41 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c171 : ¬v47 ∨ ¬v43)
    (c172 : ¬v48 ∨ ¬v43)
    (c176 : ¬v47 ∨ ¬v44)
    (c177 : ¬v48 ∨ ¬v44)
    (c180 : ¬v45 ∨ ¬v47)
    (c181 : ¬v48 ∨ ¬v45)
    (c183 : ¬v46 ∨ ¬v47)
    (c184 : ¬v48 ∨ ¬v46)
    (c186 : ¬v48 ∨ ¬v47)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c221 : v43 ∨ v36 ∨ v41 ∨ v37 ∨ v20 ∨ v35 ∨ v21 ∨ v34 ∨ v30 ∨ v44 ∨ v28 ∨ v15 ∨ ¬v42 ∨ v49)
    (c223 : ¬v48 ∨ v41 ∨ v47 ∨ v49 ∨ v42 ∨ v7 ∨ v5 ∨ v6)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c237 : ¬v39 ∨ v32 ∨ v45 ∨ v33 ∨ v47 ∨ v40 ∨ v46 ∨ v38)
    (c260 : ¬v39 ∨ v32 ∨ v5 ∨ v3 ∨ v46 ∨ v45 ∨ v35 ∨ v40 ∨ v38 ∨ v41 ∨ v42 ∨ v4 ∨ v33 ∨ v49)
    (c274 : ¬v5 ∨ v6 ∨ v13 ∨ v11 ∨ v12 ∨ v4 ∨ v46 ∨ v47)
    (c278 : ¬v40 ∨ v33 ∨ v41 ∨ v47 ∨ v34 ∨ v32 ∨ v46 ∨ v39)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c306 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v47 ∨ v7 ∨ v5 ∨ v6)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c378 : v29 ∨ ¬v22 ∨ v30 ∨ v21 ∨ v15 ∨ v9 ∨ v28 ∨ v23 ∨ v24 ∨ v8 ∨ v32 ∨ v25 ∨ v14 ∨ v18)
    (c394 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v8)
    (c411 : v6 ∨ v4 ∨ v13 ∨ v46 ∨ v12 ∨ v34 ∨ v47 ∨ ¬v5 ∨ v32 ∨ v33 ∨ v14 ∨ v40 ∨ v7 ∨ v49)
    (c414 : v18 ∨ ¬v25 ∨ v47 ∨ v32 ∨ v45 ∨ v39 ∨ v23 ∨ v16 ∨ v30 ∨ v26 ∨ v24 ∨ v33 ∨ v46 ∨ v17)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c436 : v43 ∨ v29 ∨ v45 ∨ ¬v30 ∨ v40 ∨ v32 ∨ v37 ∨ v26 ∨ v33 ∨ v44 ∨ v31 ∨ v24 ∨ v36 ∨ v23)
    (c437 : ¬v39 ∨ v32 ∨ v45 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c485 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v30 ∨ v42 ∨ v35 ∨ v28)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c507 : ¬v33 ∨ v40 ∨ v35 ∨ v4 ∨ v39 ∨ v26 ∨ v5 ∨ v32 ∨ v34 ∨ v28 ∨ v42 ∨ v27 ∨ v6 ∨ v47)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c527 : v29 ∨ ¬v16 ∨ v30 ∨ v24 ∨ v9 ∨ v23 ∨ v27 ∨ v8 ∨ v20 ∨ v15 ∨ v21 ∨ v13 ∨ v17 ∨ v31)
    (c547 : ¬v48 ∨ v34 ∨ v33 ∨ v40 ∨ v2 ∨ v37 ∨ v7 ∨ v6 ∨ v41 ∨ v44 ∨ v43 ∨ v35 ∨ v47 ∨ v49)
    (c548 : ¬v21 ∨ v28 ∨ v19 ∨ v8 ∨ v25 ∨ v11 ∨ v18 ∨ v15 ∨ v6 ∨ v20 ∨ v1 ∨ v27 ∨ v7 ∨ v14)
    (c571 : v43 ∨ ¬v42 ∨ v35 ∨ v49 ∨ v34 ∨ v41 ∨ v36 ∨ v29)
    (c572 : ¬v48 ∨ v6 ∨ v13 ∨ v42 ∨ v47 ∨ v43 ∨ v36 ∨ v19 ∨ v20 ∨ v5 ∨ v1 ∨ v21 ∨ v41 ∨ v49)
    (c588 : ¬v33 ∨ v40 ∨ v39 ∨ v26 ∨ v34 ∨ v32 ∨ v25 ∨ v27)
    (c683 : ¬v19 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v27)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1054 : v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1064 : ¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1094 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1109 : ¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1140 : v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1271 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1300 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v35)
    (c1349 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1375 : v29 ∨ ¬v19 ∨ ¬v22)
    (c1391 : ¬v8 ∨ v1 ∨ v2 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v21)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1638 : ¬v18 ∨ v1 ∨ v8 ∨ v22 ∨ v36 ∨ v40 ∨ v42 ∨ v43)
    (c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22)
    (c1678 : ¬v8 ∨ v1 ∨ v2 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13)
    (c1690 : ¬v7 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1692 : ¬v5 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1741 : ¬v35 ∨ ¬v39 ∨ v46 ∨ v47)
    (c1760 : ¬v33 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2013 : ¬v27 ∨ v9 ∨ v10 ∨ ¬v16)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2216 : ¬v32 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v40 ∨ v47)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2299 : v13 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v15 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2306 : ¬v22 ∨ v2 ∨ v8 ∨ v9 ∨ v11 ∨ ¬v16 ∨ v43 ∨ v44 ∨ v45)
    (c2335 : ¬v25 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v17)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2382 : ¬v18 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2412 : ¬v22 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21)
    (c2425 : v47 ∨ v48 ∨ v49)
    (c2442 : ¬v3 ∨ ¬v1 ∨ v8 ∨ ¬v10 ∨ v43 ∨ v44 ∨ v49)
    (c2443 : ¬v39 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48)
    (c2466 : v29 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2497 : ¬v21 ∨ v48 ∨ v49)
    (c2507 : ¬v20 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2517 : ¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2585 : v1 ∨ ¬v4 ∨ v8 ∨ v48 ∨ v49)
    (c2591 : ¬v4 ∨ v48 ∨ v49)
    (c2597 : ¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2687 : v7 ∨ v48 ∨ v49)
    (c2689 : ¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2691 : v31 ∨ v4 ∨ v11 ∨ v18 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2711 : v3 ∨ v9 ∨ v11 ∨ v48 ∨ v49)
    (c2719 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c2738 : v11 ∨ v48 ∨ v49)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2757 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c2763 : ¬v3 ∨ v14 ∨ v48 ∨ v49)
    (c2775 : v33 ∨ v39 ∨ v48 ∨ v49)
    (c2776 : ¬v2 ∨ v3 ∨ v9 ∨ v48 ∨ v49)
    (c2779 : v2 ∨ v9 ∨ ¬v33 ∨ v41 ∨ v48 ∨ v49)
    (c2780 : v9 ∨ v39 ∨ v48 ∨ v49)
    : (v48 ∨ v49) ∧ (¬v39 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v19 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v49) ∧ (v16 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v30 ∨ v49) ∧ (¬v7 ∨ v1 ∨ ¬v3 ∨ v8 ∨ v13 ∨ v14 ∨ v49) ∧ (¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47) ∧ (¬v40 ∨ v1 ∨ v5 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v49) ∧ (¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40) ∧ (v16 ∨ v2 ∨ v5 ∨ v9 ∨ v12 ∨ v13 ∨ v30 ∨ v49) ∧ (¬v12 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v44 ∨ v45 ∨ v46) ∧ (v2 ∨ ¬v3 ∨ v9 ∨ v49) ∧ (¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v33 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (v18 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v32 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47) ∧ (¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49) ∧ (¬v33 ∨ v1 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v11 ∨ v49) ∧ (¬v18 ∨ v1 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v32 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v46) := by
  have c2781 : v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v9 := by
      rcases c2780 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
    have u11 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
    have u14 : ¬v5 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
    have u15 : v33 := by
      rcases c2775 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u16 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v3 := by
      rcases c2763 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
    have u20 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd a u11
    have u21 : v17 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u21 a
      · exact a
    rcases c371 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd u5 a
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u23
  have c2782 : ¬v9 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v39 := by
      rcases c2781 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    have u8 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    have u11 : ¬v5 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
    have u12 : v6 := by
      rcases c2443 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u11
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
    have u13 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u12 a
    have u14 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u3 a
    have u15 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u3 a
    have u16 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a u8
    rcases c1911 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd a u16
  have c2783 : v31 ∨ v3 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v9 := by
      rcases c2782 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v39 := by
      rcases c2780 with a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v11 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v2 := by
      rcases c2776 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u12 : ¬v30 := by
      rcases c2601 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v33 := by
      rcases c2779 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
    have u17 : v32 := by
      rcases c437 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u16
    have u18 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v16 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u22 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v10 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u26 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u15
      · exact a
    have u27 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u20
    have u28 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u9 a
    have u29 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u9 a
    have u30 : ¬v22 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u20
    have u31 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u18
    have u32 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd a u30
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
    rcases c15 with a|a|a
    · exact absurd u32 a
    · exact absurd u31 a
    · exact absurd u2 a
  have c2784 : v14 ∨ v3 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v31 := by
      rcases c2783 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v9 := by
      rcases c2782 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : v39 := by
      rcases c2780 with a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : v11 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v2 := by
      rcases c2776 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u14 a
      · exact a
    have u22 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u23 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u24 : v5 := by
      rcases c260 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n3
    have u25 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u4 a
    have u26 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u4 a
    have u27 : v8 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u25
      · exact absurd u24 a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
    have u28 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u27 a
      · exact absurd u15 a
      · exact a
    have u29 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u15 a
    have u30 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u15 a
    have u31 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n2
    have u32 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u30
      · exact absurd u15 a
      · exact absurd a u29
    have u33 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u31 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u32
    · exact absurd a u33
  have c2785 : v3 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v9 := by
      rcases c2782 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u5 : v39 := by
      rcases c2780 with a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v31 := by
      rcases c2783 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v2 := by
      rcases c2776 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
    have u16 : v14 := by
      rcases c2784 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u18 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u19 : v11 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u20 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u19 a
    have u21 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u19 a
    have u22 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u19 a
    have u23 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd u19 a
      · exact absurd a u21
    have u25 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u5 a
      · exact a
    have u26 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u24
      · exact a
    have u27 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u26 a
    have u31 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u26 a
    have u32 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u29
    have u33 : ¬v20 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u32
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u30
    have u34 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u33
      · exact a
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n1
    have u35 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u3 a
    have u36 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u3 a
    have u37 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u32
      · exact absurd a n0
      · exact absurd a u35
      · exact absurd u19 a
      · exact absurd a u22
      · exact absurd a u2
      · exact a
    rcases c1638 with a|a|a|a|a|a|a|a
    · exact absurd u37 a
    · exact absurd a u36
    · exact absurd a u20
    · exact absurd a u31
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u18
  have c2786 : v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u4 : ¬v9 := by
      rcases c2782 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u5 : v3 := by
      rcases c2785 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u6 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u3 a
    have u7 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd u5 a
      · exact absurd u3 a
      · exact a
    have u8 : v39 := by
      rcases c2780 with a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c2443 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u1 a
    · exact absurd a n0
  have c2787 : ¬v39 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    rcases c237 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
  have c2788 : ¬v19 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    rcases c1375 with a|a|a
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd u8 a
  have c2789 : v16 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v15 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
    have u10 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    rcases c2367 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
  have c2790 : ¬v7 ∨ v1 ∨ ¬v3 ∨ v8 ∨ v13 ∨ v14 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u3 : v43 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n3
    rcases c172 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c2791 : v35 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ ¬v10 ∨ ¬v11 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u3 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n6 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u5 : v16 := by
      rcases c2789 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact a
    have u14 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u13
      · exact a
    have u15 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v34 := by
      rcases c221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd u14 a
      · exact absurd a n8
    have u18 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a n0
  have c2792 : ¬v10 ∨ v2 ∨ ¬v3 ∨ v9 ∨ ¬v11 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v1 := by
      rcases c2442 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u8 : ¬v19 := by
      rcases c2788 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
    have u9 : v16 := by
      rcases c2789 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v7 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
    have u11 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd u9 a
    have u16 : v35 := by
      rcases c2791 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u17
    have u23 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u19
    have u24 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u25 : v23 := by
      rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a n3
      · exact a
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u21
    rcases c102 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2793 : ¬v35 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n9
    have u5 : ¬v19 := by
      rcases c2788 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u12 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    have u13 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
    have u14 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u16 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : ¬v25 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u18 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : v21 := by
      rcases c378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u13
    have u21 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u9
      · exact a
      · exact absurd a u19
    rcases c90 with a|a
    · exact absurd u21 a
    · exact absurd u20 a
  have c2794 : v10 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v29 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u7 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u8 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u13 : v16 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u14 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v30 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u16 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u20 : v3 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u3
    have u21 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u20 a
      · exact absurd a u4
      · exact absurd a u3
    have u22 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u20 a
      · exact absurd u21 a
      · exact a
    have u23 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u8
      · exact a
    have u24 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u23 a
    rcases c571 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u23 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd a u6
    · exact absurd a n7
  have c2795 : v49 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v15 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
    have u7 : ¬v35 := by
      rcases c2793 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u8 : v29 := by
      rcases c2794 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u7
      · exact absurd a n0
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v16 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u11 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u11
      · exact a
    have u13 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
      · exact a
    have u14 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u13 a
    rcases c221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a n9
    · exact absurd u13 a
    · exact absurd a n0
  have c2796 : v14 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n5
      · exact a
      · exact absurd a n9
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v15 := by
      rcases c2795 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n8
    have u6 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v22 := by
      rcases c1671 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
    have u8 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    rcases c102 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c2797 : v8 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v14 := by
      rcases c2796 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v48 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n10
    have u3 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n8 a
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
    have u7 : v21 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd u1 a
      · exact a
    have u8 : v15 := by
      rcases c2299 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd u1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    rcases c85 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c2798 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    rcases c278 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
  have c2799 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2798 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c2800 : ¬v11 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
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
    have u7 : ¬v10 := by
      rcases c2792 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
    have u11 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    have u13 : v8 := by
      rcases c2797 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n0 a
    have u15 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n0 a
    have u16 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd u13 a
      · exact absurd a n3
      · exact a
    have u17 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a u14
    have u18 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u20 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u22 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u2
    rcases c1285 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u2
  have c2801 : ¬v15 ∨ v2 ∨ ¬v3 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
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
    have u11 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u12 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v4 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u15 a
      · exact absurd n2 a
      · exact a
    have u17 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u15 a
    have u18 : v12 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u17
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u6
    have u19 : v13 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd u18 a
      · exact absurd a u17
    rcases c51 with a|a|a
    · exact absurd n3 a
    · exact absurd u19 a
    · exact absurd u18 a
  have c2803 : ¬v3 ∨ v1 ∨ v2 ∨ ¬v8 ∨ v9 ∨ v16 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c2800 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v15 := by
      rcases c2801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
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
    have u7 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v17 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n6
    have u12 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v10 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u9
    have u14 : v14 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n4
    rcases c47 with a|a|a
    · exact absurd n3 a
    · exact absurd u14 a
    · exact absurd u13 a
  have c2804 : ¬v40 ∨ v1 ∨ v5 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    rcases c572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n8
  have c2805 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    rcases c988 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2806 : v49 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v8 ∨ v9 ∨ ¬v14 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd n4 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n4 a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n6 a
    have u5 : v16 := by
      rcases c2803 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n0
    have u7 : ¬v15 := by
      rcases c2801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
    have u8 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd u5 a
    have u9 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u18 : ¬v25 := by
      rcases c2335 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd u5 a
      · exact absurd a u11
    have u19 : ¬v5 := by
      rcases c1692 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u15
    have u20 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u17
      · exact absurd a u16
    have u21 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n3 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u20 a
      · exact absurd n3 a
      · exact a
    have u23 : ¬v40 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
    have u24 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u14
    have u25 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u22
    have u26 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u23
    have u29 : v33 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u28
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u14
    have u30 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u29 a
    have u33 : v26 := by
      rcases c588 with a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u23
      · exact absurd a u26
      · exact a
      · exact absurd a u24
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd a u8
    have u34 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u30
      · exact absurd a u28
    have u35 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u31
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact a
    have u36 : ¬v22 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u35
      · exact absurd a u32
      · exact absurd a n7
      · exact absurd a u31
    have u37 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u33 a
      · exact a
    rcases c817 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u36
    · exact absurd a u37
    · exact absurd a u34
  have c2807 : ¬v8 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v11 := by
      rcases c2800 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v15 := by
      rcases c2801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u1
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
    have u8 : ¬v14 := by
      rcases c2806 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u9 : v7 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u3
    have u10 : ¬v4 := by
      rcases c28 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u9 a
    have u11 : v10 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
    have u12 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u11 a
    have u14 : v16 := by
      rcases c2803 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n3 a
      · exact absurd u9 a
      · exact a
    have u21 : ¬v5 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
    have u22 : ¬v40 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n6
    have u23 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u4
    have u24 : ¬v32 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u4
    have u25 : v33 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u24
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u4
    have u26 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v39 := by
      rcases c1064 with a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u28 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u26
      · exact absurd a u24
    rcases c1071 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u28
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u5
  have c2808 : v49 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v15 ∨ ¬v16 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v11 := by
      rcases c2800 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v8 := by
      rcases c2807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n0
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
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v22 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd n6 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
    have u14 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact a
    have u19 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v4 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n3 a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u20 a
      · exact absurd n3 a
      · exact a
    have u23 : v41 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u22
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n0
    have u24 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u23 a
      · exact a
    rcases c485 with a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd u13 a
    · exact absurd a n7
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a u18
  have c2809 : v15 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c2807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v16 := by
      rcases c2808 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n5
    have u8 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact a
    have u9 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1709 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n6
  have c2810 : v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c2800 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
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
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v8 := by
      rcases c2807 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v19 := by
      rcases c2788 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n5
    have u11 : v15 := by
      rcases c2809 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u12
      · exact a
    have u15 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u16 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u3
    have u21 : v4 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u22 : v14 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u9
      · exact a
    have u23 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n2 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u21 a
      · exact absurd n2 a
      · exact a
    have u25 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u21 a
    have u26 : v13 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u9
      · exact a
      · exact absurd u22 a
      · exact absurd a u13
    have u27 : v12 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u25
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u3
    rcases c73 with a|a|a
    · exact absurd u27 a
    · exact absurd u22 a
    · exact absurd u26 a
  have c2811 : v16 ∨ v2 ∨ v5 ∨ v9 ∨ v12 ∨ v13 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
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
    have u7 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u8 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u11 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
    have u12 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
    rcases c683 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u14
  have c2812 : v30 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
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
    have u7 : ¬v11 := by
      rcases c2800 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u8 : v1 := by
      rcases c2810 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u9 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u12 : v10 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
    have u13 : v8 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd u8 a
    have u14 : ¬v15 := by
      rcases c2801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
    have u15 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v5 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
    have u19 : v16 := by
      rcases c2811 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n4
    have u20 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u24 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u21
      · exact a
    have u25 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u24
      · exact a
    have u26 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u25 a
      · exact a
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u26
    · exact absurd a n4
    · exact absurd a u27
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a u11
  have c2813 : ¬v1 ∨ v2 ∨ ¬v3 ∨ ¬v12 ∨ v18 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
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
    have u6 : v11 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u8 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n3 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd n2 a
    · exact absurd a u5
    · exact absurd a u4
  have c2814 : ¬v11 ∨ v1 ∨ v2 ∨ v9 ∨ ¬v12 ∨ v15 ∨ v29 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
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
    have u11 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u12 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n8
    have u13 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v21 := by
      rcases c2412 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u17
      · exact a
    have u19 : v30 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u20 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u25 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u26 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u6
    have u27 : v3 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u8
    have u28 : v37 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd u19 a
      · exact absurd a u26
      · exact absurd a u21
      · exact a
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u15
    have u29 : ¬v7 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u27 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
    have u30 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u28 a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u29
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a u14
    · exact absurd a u30
  have c2815 : v5 ∨ v2 ∨ ¬v3 ∨ v9 ∨ ¬v16 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v30 := by
      rcases c2812 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
    have u2 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u8 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u13 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u14 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u7 a
      · exact a
    have u18 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
    have u19 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
    have u20 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact a
    have u21 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u19
    have u22 : ¬v1 := by
      rcases c2813 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u21 a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n5
    have u23 : ¬v11 := by
      rcases c2814 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u21 a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n5
    have u24 : v4 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u25 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n2 a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u24 a
      · exact absurd n2 a
      · exact a
    have u27 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a u26
    have u28 : v13 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd u21 a
      · exact absurd a n0
    have u29 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u28 a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u25
    · exact absurd a u30
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u20
    · exact absurd a u29
  have c2816 : ¬v16 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v30 := by
      rcases c2812 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
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
    have u9 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
    have u14 : v5 := by
      rcases c2815 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
    have u15 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u14 a
      · exact absurd n2 a
      · exact a
    have u17 : v11 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u15
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u5
    have u18 : v10 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u5
      · exact a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u17 a
    have u23 : ¬v1 := by
      rcases c2442 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u22
      · exact absurd u18 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u24 : ¬v7 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u23
      · exact a
      · exact absurd a u19
      · exact absurd a u22
    rcases c411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd u14 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd a n4
  have c2817 : ¬v10 ∨ v1 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v29 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u8 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v21 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n3
    rcases c2412 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd u11 a
  have c2818 : v15 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ ¬v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u2 : ¬v16 := by
      rcases c2816 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u3 : v30 := by
      rcases c2812 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u12 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v10 := by
      rcases c2817 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n6
    have u16 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v12 := by
      rcases c2814 with a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n6
    have u19 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u4
    have u20 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v8 := by
      rcases c2788 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    rcases c1391 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u20
  have c2819 : ¬v5 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ ¬v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v16 := by
      rcases c2816 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
    have u11 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u13 : v10 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n5 a
    have u16 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n5 a
    have u17 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n5 a
    have u18 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n5 a
    have u19 : ¬v7 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n6
    rcases c411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd n0 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a n6
  have c2820 : ¬v11 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u2 : ¬v16 := by
      rcases c2816 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v30 := by
      rcases c2812 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u12 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v5 := by
      rcases c2819 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
    have u15 : v15 := by
      rcases c2818 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
    have u16 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v12 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u4
    have u19 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n0 a
    have u20 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n0 a
    have u21 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n0 a
    have u22 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n0 a
    have u23 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd u15 a
    have u24 : v4 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u6
    have u25 : ¬v7 := by
      rcases c2790 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n5
    have u26 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u24 a
      · exact absurd n3 a
      · exact a
    have u27 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u23
      · exact a
    have u28 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u26
    rcases c166 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c2821 : v8 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c2788 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v11 := by
      rcases c2820 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v16 := by
      rcases c2816 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v30 := by
      rcases c2812 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
    have u12 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u14 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u17 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
    have u18 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u20 : v4 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
    have u22 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n3 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u20 a
      · exact absurd n3 a
      · exact a
    have u24 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u26 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u23
    have u27 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u17
    have u28 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u25
      · exact a
      · exact absurd a u11
      · exact absurd a u15
    have u29 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : v13 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u25
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd u27 a
      · exact absurd a u24
    have u32 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u14
      · exact absurd a u30
      · exact absurd a u19
    have u33 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u31 a
    have u34 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u33
      · exact a
      · exact absurd a u15
      · exact absurd a u32
      · exact absurd a u29
    have u35 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u34 a
    rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd a u32
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a u35
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a n1
    · exact absurd a u28
    · exact absurd a u22
    · exact absurd a u33
  have c2822 : ¬v12 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u4 : v4 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n2
    have u5 : v7 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    rcases c28 with a|a|a
    · exact absurd n3 a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2823 : ¬v4 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v8 ∨ v11 ∨ v12 ∨ ¬v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n7 a
    have u7 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n7 a
    have u8 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u10 : ¬v13 := by
      rcases c1678 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact a
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n8
    have u18 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u19 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u11
    have u20 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u21 : v26 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd u19 a
    have u22 : ¬v22 := by
      rcases c1375 with a|a|a
      · exact absurd a u4
      · exact absurd u19 a
      · exact a
    have u23 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u21 a
      · exact a
    rcases c1033 with a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u18
  have c2824 : v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v30 := by
      rcases c2812 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
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
    have u6 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v11 := by
      rcases c2820 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v16 := by
      rcases c2816 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v8 := by
      rcases c2821 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v15 := by
      rcases c2801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
    have u11 : ¬v12 := by
      rcases c2822 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : ¬v4 := by
      rcases c2823 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd u1 a
      · exact absurd a n4
    have u13 : v10 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u3
      · exact a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u4
    have u14 : v18 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a u3
    have u15 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u14 a
      · exact a
    rcases c488 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n3
  have c2825 : v2 ∨ ¬v3 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
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
    have u7 : v30 := by
      rcases c2812 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
    have u14 : v1 := by
      rcases c2824 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u18 : v8 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd u14 a
    have u19 : v10 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u3
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
    have u20 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v5 := by
      rcases c411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n3
    have u25 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u2
    have u26 : v18 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u23
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c95 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c2826 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    rcases c414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n2
  have c2827 : v33 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v40 := by
      rcases c2799 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v39 := by
      rcases c2787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n10
    have u5 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n9
    have u8 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u5
      · exact a
      · exact absurd a u3
    rcases c2826 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2828 : v18 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v32 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n0
      · exact a
      · exact absurd a n8
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    rcases c507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n12
  have c2829 : ¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    rcases c223 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
  have c2830 : ¬v33 ∨ v1 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u8 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v39 := by
      rcases c1064 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
    have u17 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u10
    have u19 : v18 := by
      rcases c2828 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v22 := by
      rcases c1371 with a|a|a
      · exact absurd a u6
      · exact absurd u19 a
      · exact a
    have u26 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
    have u27 : ¬v23 := by
      rcases c1760 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u25
      · exact a
      · exact absurd a u26
    have u28 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact a
    have u29 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n5
      · exact a
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u28
      · exact absurd a u17
    have u30 : v8 := by
      rcases c1638 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n1
      · exact a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u13
    have u31 : v26 := by
      rcases c507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u28
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u9
    have u32 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u29 a
    have u33 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u31 a
    rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u32
    · exact absurd a u24
    · exact absurd a u20
    · exact absurd u19 a
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u33
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2831 : ¬v18 ∨ v1 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v32 ∨ v36 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c1349 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u1
    have u3 : v13 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u1
    have u4 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    have u5 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n6 a
    rcases c1638 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  exact ⟨c2786, c2787, c2788, c2789, c2790, c2798, c2804, c2805, c2811, c2822, c2825, c2826, c2827, c2828, c2829, c2830, c2831⟩
