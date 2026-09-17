import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1750-1799 of the 2915-step refutation of ccase001: 136 core clauses and 93 earlier-derived ones give 10 more. -/
theorem CCase001_block035
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
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
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
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
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c170 : ¬v46 ∨ ¬v43)
    (c171 : ¬v47 ∨ ¬v43)
    (c175 : ¬v46 ∨ ¬v44)
    (c176 : ¬v47 ∨ ¬v44)
    (c179 : ¬v46 ∨ ¬v45)
    (c180 : ¬v45 ∨ ¬v47)
    (c183 : ¬v46 ∨ ¬v47)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c200 : v43 ∨ v12 ∨ v44 ∨ v5 ∨ v11 ∨ v19 ∨ v45 ∨ v2 ∨ v10 ∨ v1 ∨ v8 ∨ v16 ∨ v17 ∨ ¬v9)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c216 : ¬v21 ∨ v28 ∨ v8 ∨ v14 ∨ v20 ∨ v27 ∨ v13 ∨ v15)
    (c219 : ¬v46 ∨ v32 ∨ v3 ∨ v40 ∨ v4 ∨ v2 ∨ v39 ∨ v26 ∨ v37 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v47)
    (c243 : ¬v15 ∨ v29 ∨ v42 ∨ v21 ∨ v37 ∨ v13 ∨ v8 ∨ v16 ∨ v14 ∨ v22 ∨ v23 ∨ v20 ∨ v27 ∨ v36)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c283 : v7 ∨ ¬v6 ∨ v49 ∨ v48 ∨ v14 ∨ v12 ∨ v13 ∨ v5)
    (c292 : v22 ∨ ¬v15 ∨ v14 ∨ v11 ∨ v16 ∨ v21 ∨ v17 ∨ v2 ∨ v23 ∨ v18 ∨ v7 ∨ v1 ∨ v8 ∨ v25)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c332 : v11 ∨ v4 ∨ v45 ∨ v1 ∨ v14 ∨ v2 ∨ v10 ∨ v7 ∨ ¬v3 ∨ v18 ∨ v17 ∨ v44 ∨ v16 ∨ v49)
    (c342 : ¬v46 ∨ v36 ∨ v44 ∨ v1 ∨ v3 ∨ v4 ∨ v33 ∨ v32 ∨ v39 ∨ v40 ∨ v43 ∨ v31 ∨ v45 ∨ v47)
    (c369 : v22 ∨ ¬v21 ∨ v10 ∨ v16 ∨ v20 ∨ v14 ∨ v28 ∨ v13 ∨ v17 ∨ v6 ∨ v1 ∨ v15 ∨ v24 ∨ v7)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c378 : v29 ∨ ¬v22 ∨ v30 ∨ v21 ∨ v15 ∨ v9 ∨ v28 ∨ v23 ∨ v24 ∨ v8 ∨ v32 ∨ v25 ∨ v14 ∨ v18)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c393 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v21 ∨ v14 ∨ v13 ∨ v8 ∨ v34 ∨ v30 ∨ v28 ∨ v29 ∨ v37 ∨ v23)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c423 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v23 ∨ v35 ∨ v42 ∨ v30)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c478 : ¬v33 ∨ v40 ∨ v32 ∨ v41 ∨ v26 ∨ v25 ∨ v27 ∨ v34)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c485 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v30 ∨ v42 ∨ v35 ∨ v28)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c528 : ¬v47 ∨ v40 ∨ v39 ∨ v5 ∨ v46 ∨ v4 ∨ v41 ∨ v48)
    (c557 : ¬v8 ∨ v22 ∨ v14 ∨ v9 ∨ v3 ∨ v17 ∨ v2 ∨ v1 ∨ v15 ∨ v10 ∨ v30 ∨ v29 ∨ v21 ∨ v35)
    (c565 : v43 ∨ v29 ∨ v21 ∨ v34 ∨ v49 ∨ v23 ∨ v30 ∨ ¬v22 ∨ v36 ∨ v20 ∨ v44 ∨ v15 ∨ v28 ∨ v27)
    (c601 : v2 ∨ ¬v17 ∨ v4 ∨ v11 ∨ v24 ∨ v14 ∨ v10 ∨ v3 ∨ v15 ∨ v16 ∨ v21 ∨ v18 ∨ v23 ∨ v28)
    (c611 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c1000 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1058 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 ∨ v34)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1103 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1462 : ¬v35 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1540 : ¬v24 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1570 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1581 : ¬v25 ∨ v7 ∨ v13 ∨ v14 ∨ v36 ∨ v41 ∨ v42 ∨ v49)
    (c1587 : ¬v3 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22)
    (c1689 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c1690 : ¬v7 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1705 : ¬v21 ∨ v8 ∨ v14 ∨ v22 ∨ ¬v24)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1759 : v46 ∨ v1 ∨ v8 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v47 ∨ v48 ∨ v49)
    (c1760 : ¬v33 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v24)
    (c1791 : ¬v32 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v34 ∨ v39 ∨ v40 ∨ v41)
    (c1895 : ¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v27)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c1912 : ¬v7 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1952 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1977 : v33 ∨ v7 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v43 ∨ v48 ∨ v49)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2066 : v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2069 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2070 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2071 : v39 ∨ v3 ∨ v4 ∨ v5 ∨ v45 ∨ ¬v46 ∨ v47)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2091 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c2093 : ¬v37 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c2094 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2126 : ¬v20 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ ¬v10)
    (c2132 : v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48)
    (c2135 : v14 ∨ v6 ∨ v8 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c2150 : ¬v27 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c2152 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2159 : v34 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2172 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2177 : v21 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c2186 : ¬v2 ∨ v47 ∨ v48 ∨ v49)
    (c2207 : ¬v6 ∨ ¬v1 ∨ v8 ∨ ¬v9 ∨ v47 ∨ v48 ∨ v49)
    (c2213 : ¬v34 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v37 ∨ v44 ∨ v45 ∨ v47)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2235 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2241 : ¬v19 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v47 ∨ v48 ∨ v49)
    (c2243 : ¬v34 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2269 : v14 ∨ ¬v1 ∨ v47 ∨ v48 ∨ v49)
    (c2276 : ¬v1 ∨ v47 ∨ v48 ∨ v49)
    (c2296 : ¬v23 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2298 : v17 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2308 : v47 ∨ v5 ∨ v12 ∨ v19 ∨ ¬v29 ∨ v48 ∨ v49)
    (c2311 : ¬v5 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48)
    (c2324 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v44 ∨ v45)
    (c2329 : v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2347 : ¬v14 ∨ v47 ∨ v48 ∨ v49)
    (c2350 : ¬v22 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c2363 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c2369 : v8 ∨ v1 ∨ v2 ∨ ¬v3 ∨ v9 ∨ v14 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2377 : v10 ∨ v9 ∨ v32 ∨ v47 ∨ v48 ∨ v49)
    : (¬v18 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v14 ∨ v17 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v22 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21) ∧ (v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v48 ∨ v49) ∧ (¬v19 ∨ v1 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v35) ∧ (v47 ∨ v48 ∨ v49) ∧ (v13 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48 ∨ v49) := by
  have c2378 : v7 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v18 ∨ v21 ∨ v29 ∨ v32 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n2
    have u3 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v30 := by
      rcases c378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u2 a
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n6
    have u8 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u9
  have c2379 : ¬v7 ∨ v1 ∨ ¬v3 ∨ ¬v10 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n4
    have u3 : v8 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n4
    rcases c46 with a|a|a
    · exact absurd u3 a
    · exact absurd u2 a
    · exact absurd n3 a
  have c2380 : ¬v8 ∨ ¬v3 ∨ v9 ∨ ¬v10 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v6 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v7 := by
      rcases c2379 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v20 := by
      rcases c2126 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
    have u10 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
    have u11 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u10 a
      · exact a
    rcases c2177 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2381 : ¬v3 ∨ v9 ∨ v17 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v10 := by
      rcases c2377 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v7 := by
      rcases c2379 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v8 := by
      rcases c2380 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v16 := by
      rcases c2369 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v29 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u20
  have c2382 : ¬v18 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
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
    rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2383 : v7 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v15 ∨ v17 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v16 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u3 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v29 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u10 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
  have c2384 : v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v14 ∨ v17 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v15 := by
      rcases c2383 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v22 := by
      rcases c1671 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u5 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
    have u6 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u9
  have c2385 : v7 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v14 ∨ v17 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v8 := by
      rcases c2384 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
    have u3 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u1 a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u2 a
      · exact a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd n5 a
  have c2386 : ¬v8 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v7 ∨ v9 ∨ ¬v10 ∨ v14 ∨ v17 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact a
    have u3 : v6 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a n10
      · exact absurd a n7
    have u4 : v4 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u2
    rcases c34 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n4 a
  have c2387 : ¬v15 ∨ v5 ∨ v9 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u9 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
    have u10 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u11 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c2235 with a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n5
  have c2388 : v17 ∨ v9 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v10 := by
      rcases c2377 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v3 := by
      rcases c2381 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v7 := by
      rcases c2385 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v8 := by
      rcases c2386 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v4 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u15 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a n3
    have u16 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd u3 a
      · exact absurd a n3
    have u17 : v11 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
    have u18 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v15 := by
      rcases c2387 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v16 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u23
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u25 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd u24 a
    have u29 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u28
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a u25
      · exact absurd a u21
    have u30 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a n3
    have u31 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u30
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u32 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u29 a
      · exact a
    have u34 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u29 a
    have u35 : v25 := by
      rcases c478 with a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u28
      · exact a
      · exact absurd a u31
      · exact absurd a u30
    have u36 : v23 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u32
      · exact absurd a u33
      · exact absurd a n2
      · exact absurd a u30
      · exact absurd a u34
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u8
    rcases c109 with a|a
    · exact absurd u35 a
    · exact absurd u36 a
  have c2389 : ¬v7 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v16 ∨ v18 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u7
    have u9 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v4 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n9
    have u13 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v12 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v17 := by
      rcases c2388 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd n3 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n3 a
    have u18 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u15 a
      · exact a
    rcases c524 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd u14 a
  have c2390 : v7 ∨ v1 ∨ v8 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u6 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    rcases c856 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u2
  have c2391 : v32 ∨ v9 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v17 := by
      rcases c2388 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v10 := by
      rcases c2377 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v8 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n1
    have u15 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
    have u16 : ¬v7 := by
      rcases c2389 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c2390 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
  have c2392 : v3 ∨ v1 ∨ v2 ∨ ¬v7 ∨ ¬v8 ∨ v9 ∨ v14 ∨ v15 ∨ v17 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v10 := by
      rcases c2386 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c557 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n9
    · exact absurd a n13
  have c2393 : v9 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v32 := by
      rcases c2391 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v16 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
    have u15 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u13 a
      · exact a
    have u21 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
    have u22 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u15
    have u23 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u11
    have u24 : ¬v22 := by
      rcases c2350 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
    have u25 : v8 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u4
      · exact a
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
    have u26 : v3 := by
      rcases c2392 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd u22 a
      · exact absurd u25 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u27 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd u26 a
      · exact absurd u22 a
      · exact a
    have u28 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u22 a
    have u29 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n3
      · exact a
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd u22 a
      · exact absurd a n2
      · exact absurd a u1
    have u30 : v12 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u1
      · exact a
      · exact absurd a u28
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd u29 a
    rcases c51 with a|a|a
    · exact absurd u25 a
    · exact absurd u29 a
    · exact absurd u30 a
  have c2394 : ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c2311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v6 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u4
    have u9 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
    have u10 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u11 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n5
    have u12 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n5
    have u13 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u6
    have u17 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u18 : ¬v29 := by
      rcases c2308 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u17
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a u17
      · exact absurd a u15
    have u20 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u6
    have u26 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
    have u27 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u25 a
    have u31 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u25 a
      · exact a
    have u32 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
    have u33 : v24 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u25 a
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u27
      · exact absurd a u32
      · exact absurd a u26
    have u34 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u31
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u35 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u33 a
      · exact a
    rcases c478 with a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u35
    · exact absurd a u34
    · exact absurd a u22
  have c2395 : v7 ∨ v3 ∨ v10 ∨ v11 ∨ v13 ∨ v15 ∨ v16 ∨ ¬v17 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v6 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v8 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n2
    have u17 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u23 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u24 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u16 a
      · exact absurd u5 a
      · exact a
    have u25 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u14
    have u26 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a n9
    have u28 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n10
    have u29 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u23
    have u30 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u20
    have u31 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u9 a
      · exact absurd u26 a
      · exact a
    have u32 : v24 := by
      rcases c1249 with a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u29
      · exact a
      · exact absurd a u30
    have u33 : v42 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u28
      · exact absurd a u17
      · exact a
      · exact absurd a n10
    have u34 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u33 a
      · exact a
    rcases c342 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u28
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u31
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u34
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a n8
  have c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c2363 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
  have c2397 : v12 ∨ v3 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v30 ∨ v32 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v7 := by
      rcases c2394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v29 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n14
    have u14 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n14
    have u15 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n14
    have u16 : v31 := by
      rcases c2363 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    have u19 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a u9
    have u20 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a n11
    have u21 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n11
    have u22 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u21 a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
    have u24 : v39 := by
      rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u4
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n12
    have u25 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : v23 := by
      rcases c1952 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u25
    have u27 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u26 a
    rcases c1570 with a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u28
    · exact absurd a u19
    · exact absurd a u27
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n14
  have c2398 : v32 ∨ v3 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v7 := by
      rcases c2394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v30 := by
      rcases c2397 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n13
    have u16 : v5 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a u9
    have u18 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u14
    have u19 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n13
    have u20 : ¬v24 := by
      rcases c1540 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n13
    have u21 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
    have u22 : v38 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u13
    have u23 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u21 a
      · exact absurd u16 a
      · exact a
    have u24 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u22 a
      · exact a
    rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u4
    · exact absurd a u26
    · exact absurd a u18
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n11
  have c2399 : v16 ∨ v3 ∨ ¬v8 ∨ v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v7 := by
      rcases c2394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v17 := by
      rcases c2395 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v21 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v32 := by
      rcases c2398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n6
    have u28 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u24
    have u29 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u15
    have u30 : ¬v25 := by
      rcases c1581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n6
    have u31 : v38 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u28
      · exact absurd a u24
    have u32 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u31 a
      · exact a
    rcases c1791 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u21
    · exact absurd a u28
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u24
    · exact absurd a u14
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u16
  have c2400 : v15 ∨ v3 ∨ ¬v8 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v7 := by
      rcases c2394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v16 := by
      rcases c2399 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact a
    have u18 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
  have c2401 : v3 ∨ ¬v8 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v7 := by
      rcases c2394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v15 := by
      rcases c2400 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u20 : v6 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u22 : v5 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u20 a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact a
    have u23 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u24 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u20 a
      · exact absurd u22 a
      · exact a
    have u25 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u21
      · exact a
      · exact absurd a u23
    have u26 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd u2 a
      · exact absurd a n2
    have u27 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : v29 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u27
      · exact absurd u25 a
      · exact absurd a u19
      · exact absurd a u21
    rcases c2324 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u26
    · exact absurd a u11
    · exact absurd a u10
  have c2402 : v11 ∨ ¬v3 ∨ v10 ∨ v12 ∨ v13 ∨ v16 ∨ v17 ∨ ¬v20 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v7 := by
      rcases c2394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v6 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v4 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n11
    have u15 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n8
      · exact a
      · exact absurd a u13
    have u16 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1895 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u19
  have c2403 : ¬v19 ∨ ¬v8 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u4 : v3 := by
      rcases c2401 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v6 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v7 := by
      rcases c2394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : v4 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n4
    have u19 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u18 a
    rcases c2241 with a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd n1 a
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2404 : v20 ∨ ¬v3 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c2394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v6 := by
      rcases c1587 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v21 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v4 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n9
    have u15 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
    have u19 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u18 a
    rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u9 a
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u1
  have c2405 : ¬v8 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c39 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c40 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v19 := by
      rcases c2403 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : v3 := by
      rcases c2401 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v7 := by
      rcases c2394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u15 : v20 := by
      rcases c2404 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v35 := by
      rcases c2402 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd u15 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
    have u24 : v4 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n3
    have u25 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u24 a
    have u26 : v40 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u12
      · exact a
    have u27 : v41 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    rcases c164 with a|a
    · exact absurd u26 a
    · exact absurd u27 a
  have c2406 : v49 ∨ v6 ∨ v7 ∨ v13 ∨ v16 ∨ v19 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n0
    have u9 : v21 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v34 := by
      rcases c2135 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u13 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
    have u17 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
    rcases c2091 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd u17 a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n0
  have c2407 : v19 ∨ v6 ∨ v7 ∨ v12 ∨ v16 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v13 := by
      rcases c2406 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v21 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n1
    have u14 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u13 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u2 a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u11
  have c2408 : v16 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v6 := by
      rcases c2407 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v14 := by
      rcases c2347 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v1 := by
      rcases c2207 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v3 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n0
    have u14 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u1 a
    have u15 : ¬v4 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u1 a
    have u16 : v17 := by
      rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
    have u17 : ¬v37 := by
      rcases c2093 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u3 a
      · exact absurd a n5
    have u18 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v34 := by
      rcases c2213 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u13 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u21 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    rcases c2159 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a n7
  have c2409 : v34 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v37 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c2159 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2410 : ¬v15 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v11 ∨ v14 ∨ v16 ∨ v21 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u1
    have u5 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u4 a
      · exact a
    rcases c292 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u6
  have c2411 : v7 ∨ v3 ∨ v4 ∨ v16 ∨ v19 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n6
    have u9 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v1 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u9
    have u11 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v10 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n3
    have u13 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u1 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u12 a
    have u16 : v15 := by
      rcases c2409 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v35 := by
      rcases c2410 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u13
    have u27 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n8
    have u28 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u25
    have u29 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u23
    have u30 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u22
    have u31 : v22 := by
      rcases c292 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u28
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u30
    have u32 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : v42 := by
      rcases c393 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd u20 a
      · exact a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u32
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u28
    have u34 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u33 a
      · exact a
    rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a u34
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u35
    · exact absurd a u26
    · exact absurd a u8
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n6
  have c2412 : ¬v22 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ ¬v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n5 a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
  have c2413 : v12 ∨ v7 ∨ v16 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v1 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u7
    have u9 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v13 := by
      rcases c2408 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v6 := by
      rcases c2406 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v5 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u10
      · exact a
    have u13 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u11 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n4
    have u16 : v21 := by
      rcases c2411 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd u16 a
    have u20 : ¬v24 := by
      rcases c1705 with a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u19
      · exact a
    have u21 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u19
      · exact a
    have u22 : ¬v23 := by
      rcases c2296 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
    have u23 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
    have u24 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u23 a
    have u29 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : v36 := by
      rcases c423 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u26
    have u31 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u30 a
    rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u28
    · exact absurd a u13
    · exact absurd a u32
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u31
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n4
  have c2414 : v16 ∨ v7 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v1 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u8
    have u10 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v12 := by
      rcases c2413 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u11 a
    have u15 : v3 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n0
    have u16 : v6 := by
      rcases c2406 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    have u18 : ¬v4 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    have u19 : v18 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u17
      · exact a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd u11 a
    have u20 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u19 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u9
  have c2415 : v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u2 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
  have c2416 : ¬v16 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v27 := by
      rcases c1977 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u12 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u13 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u11 a
      · exact a
    rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u10
  have c2417 : v7 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v1 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u7
    have u9 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u11 : v19 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v37 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    rcases c2249 with a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u15
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
  have c2418 : ¬v19 ∨ v1 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v26 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n0 a
    have u5 : ¬v23 := by
      rcases c2296 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c423 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a u8
  have c2419 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    rcases c304 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n1
  have c2420 : v16 ∨ v15 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v7 := by
      rcases c2417 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v4 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v6 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd u2 a
      · exact absurd a u5
    have u12 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
    have u14 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a n3
    have u15 : v10 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n0
    have u16 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u1 a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u15 a
    have u23 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u25 : ¬v19 := by
      rcases c2418 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a n5
    have u26 : ¬v29 := by
      rcases c2308 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u25
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u27 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a n5
    rcases c2419 with a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u26
    · exact absurd a u23
  have c2421 : ¬v22 ∨ v15 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v16 := by
      rcases c2420 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v7 := by
      rcases c2417 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v6 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u14
      · exact a
      · exact absurd u8 a
      · exact absurd a u12
    have u18 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v4 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u17 a
    have u21 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd u13 a
      · exact absurd a n3
    have u22 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u24
    have u28 : ¬v31 := by
      rcases c1952 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u23
    have u29 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u28
    have u30 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u29 a
    have u31 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u26
    have u32 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u31 a
    rcases c478 with a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u26
    · exact absurd a u32
    · exact absurd a u25
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u27
  have c2422 : v15 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v22 := by
      rcases c2421 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v16 := by
      rcases c2420 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v7 := by
      rcases c2417 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : v6 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd u11 a
      · exact absurd a u2
    have u13 : ¬v4 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    have u16 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n2
    have u17 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v29 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u1
    have u21 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v28 := by
      rcases c485 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd u20 a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u22
      · exact a
    rcases c1421 with a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd u23 a
  have c2423 : v22 ∨ v3 ∨ v4 ∨ v5 ∨ v8 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v21 ∨ v27 ∨ v29 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd n12 a
      · exact a
    have u6 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd n12 a
      · exact absurd a n13
    have u7 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v23 := by
      rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u9
    have u12 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v33 := by
      rcases c1760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u13
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a n13
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u10
  have c2424 : v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v15 := by
      rcases c2422 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v7 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v6 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u5
      · exact a
      · exact absurd u11 a
      · exact absurd a u4
    have u15 : ¬v4 := by
      rcases c1912 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u14 a
    have u18 : v10 := by
      rcases c1689 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd u1 a
      · exact a
    have u19 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u1 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v29 := by
      rcases c2308 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u23 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u12 a
      · exact a
    have u24 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u10
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n2
    have u25 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd u12 a
      · exact absurd a n1
    have u26 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u29 : v22 := by
      rcases c2423 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd u12 a
      · exact absurd a n1
    have u30 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u30
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u27
    have u33 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u32 a
    rcases c478 with a|a|a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u27
    · exact absurd a u33
    · exact absurd a u26
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u28
    · exact absurd a u24
  have c2425 : v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v9 := by
      rcases c2393 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v21 := by
      rcases c2424 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u4 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v8 := by
      rcases c2405 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v14 := by
      rcases c2329 with a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u11 : v7 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v1 := by
      rcases c2269 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u13 : v10 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u1
      · exact absurd a u12
    have u14 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u2 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd u3 a
    have u18 : ¬v5 := by
      rcases c2311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n1
    have u19 : ¬v24 := by
      rcases c1705 with a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u17
      · exact a
    have u20 : v28 := by
      rcases c1095 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u17
      · exact a
    have u21 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v46 := by
      rcases c1759 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u24 : ¬v29 := by
      rcases c2308 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u25 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u9
    have u27 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u27
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u30
    · exact absurd a u6
    · exact absurd a u29
  have c2427 : v8 ∨ ¬v4 ∨ ¬v6 ∨ v7 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v9 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n9
    have u10 : v10 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a n5
    have u11 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n2 a
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a u2
  have c2428 : v13 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n17
      · exact absurd a n14
    have u2 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u11 : ¬v38 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u10
      · exact a
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v7 := by
      rcases c611 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v4 := by
      rcases c2427 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n18
      · exact absurd a n19
    have u14 : v11 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u13
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u8
    have u15 : v5 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n16
      · exact absurd a n15
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n17
      · exact absurd a n18
    have u16 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u1 a
    have u17 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u1 a
    have u18 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u16
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a u9
    have u19 : v9 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u17
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    rcases c54 with a|a|a
    · exact absurd u19 a
    · exact absurd u18 a
    · exact absurd u14 a
  exact ⟨c2382, c2384, c2396, c2412, c2415, c2416, c2418, c2419, c2425, c2428⟩
