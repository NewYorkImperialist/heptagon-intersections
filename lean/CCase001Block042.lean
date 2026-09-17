import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2100-2149 of the 2915-step refutation of ccase001: 127 core clauses and 92 earlier-derived ones give 11 more. -/
theorem CCase001_block042
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c86 : ¬v16 ∨ ¬v17)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c96 : ¬v18 ∨ ¬v20)
    (c98 : ¬v19 ∨ ¬v20)
    (c100 : ¬v20 ∨ ¬v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
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
    (c145 : v29 ∨ v35 ∨ v33 ∨ v30 ∨ v34 ∨ v32 ∨ v31)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c171 : ¬v47 ∨ ¬v43)
    (c176 : ¬v47 ∨ ¬v44)
    (c180 : ¬v45 ∨ ¬v47)
    (c183 : ¬v46 ∨ ¬v47)
    (c186 : ¬v48 ∨ ¬v47)
    (c187 : ¬v49 ∨ ¬v47)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c205 : ¬v32 ∨ v39 ∨ v38 ∨ v5 ∨ v4 ∨ v25 ∨ v31 ∨ v26 ∨ v33 ∨ v34 ∨ v27 ∨ v3 ∨ v41 ∨ v46)
    (c214 : ¬v31 ∨ v38 ∨ v37 ∨ v25 ∨ v39 ∨ v32 ∨ v24 ∨ v30)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c233 : ¬v47 ∨ v36 ∨ v40 ∨ v11 ∨ v12 ∨ v41 ∨ v1 ∨ v4 ∨ v5 ∨ v13 ∨ v43 ∨ v46 ∨ v48 ∨ v49)
    (c234 : ¬v47 ∨ v12 ∨ v39 ∨ v6 ∨ v20 ∨ v38 ∨ v40 ∨ v5 ∨ v3 ∨ v18 ∨ v19 ∨ v45 ∨ v46 ∨ v48)
    (c239 : ¬v41 ∨ v42 ∨ v40 ∨ v35 ∨ v49 ∨ v34 ∨ v33 ∨ v48)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c268 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v41 ∨ v5 ∨ v4 ∨ v48)
    (c284 : v36 ∨ ¬v16 ∨ v37 ∨ v28 ∨ v23 ∨ v8 ∨ v14 ∨ v24 ∨ v17 ∨ v15 ∨ v21 ∨ v30 ∨ v9 ∨ v38)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c319 : v43 ∨ v15 ∨ v6 ∨ v8 ∨ v2 ∨ ¬v9 ∨ v3 ∨ v14 ∨ v10 ∨ v20 ∨ v16 ∨ v13 ∨ v44 ∨ v45)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c356 : ¬v34 ∨ v41 ∨ v27 ∨ v33 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c380 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v4 ∨ v39 ∨ v5 ∨ v48)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c394 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v8)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c434 : v36 ∨ ¬v30 ∨ v24 ∨ v31 ∨ v38 ∨ v23 ∨ v37 ∨ v29)
    (c485 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v30 ∨ v42 ∨ v35 ∨ v28)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c527 : v29 ∨ ¬v16 ∨ v30 ∨ v24 ∨ v9 ∨ v23 ∨ v27 ∨ v8 ∨ v20 ∨ v15 ∨ v21 ∨ v13 ∨ v17 ∨ v31)
    (c528 : ¬v47 ∨ v40 ∨ v39 ∨ v5 ∨ v46 ∨ v4 ∨ v41 ∨ v48)
    (c531 : v36 ∨ ¬v35 ∨ v42 ∨ v24 ∨ v21 ∨ v30 ∨ v38 ∨ v27 ∨ v20 ∨ v15 ∨ v34 ∨ v28 ∨ v29 ∨ v31)
    (c543 : v15 ∨ v9 ∨ v2 ∨ v24 ∨ v8 ∨ v3 ∨ v12 ∨ v19 ∨ v18 ∨ v17 ∨ v1 ∨ v23 ∨ ¬v16 ∨ v26)
    (c571 : v43 ∨ ¬v42 ∨ v35 ∨ v49 ∨ v34 ∨ v41 ∨ v36 ∨ v29)
    (c588 : ¬v33 ∨ v40 ∨ v39 ∨ v26 ∨ v34 ∨ v32 ∨ v25 ∨ v27)
    (c601 : v2 ∨ ¬v17 ∨ v4 ∨ v11 ∨ v24 ∨ v14 ∨ v10 ∨ v3 ∨ v15 ∨ v16 ∨ v21 ∨ v18 ∨ v23 ∨ v28)
    (c683 : ¬v19 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v27)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c746 : ¬v25 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c758 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26)
    (c968 : ¬v26 ∨ v3 ∨ v10 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45)
    (c969 : v25 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c983 : v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v38 ∨ v45)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1094 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1103 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c1109 : ¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1119 : ¬v10 ∨ v2 ∨ ¬v11 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1140 : v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1271 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1447 : ¬v31 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v39)
    (c1469 : ¬v17 ∨ v1 ∨ v8 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1482 : ¬v27 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v45 ∨ v49)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1648 : ¬v18 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1649 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14)
    (c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1690 : ¬v7 ∨ v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1707 : ¬v36 ∨ v29 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1744 : ¬v34 ∨ ¬v37 ∨ v43 ∨ v44)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c1935 : ¬v20 ∨ ¬v11 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2197 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2227 : ¬v19 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v10)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2278 : v16 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2349 : ¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2356 : ¬v17 ∨ v1 ∨ v2 ∨ v9 ∨ v14 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2382 : ¬v18 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2419 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v35)
    (c2425 : v47 ∨ v48 ∨ v49)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2443 : ¬v39 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2497 : ¬v21 ∨ v48 ∨ v49)
    (c2537 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2548 : ¬v20 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v48 ∨ v49)
    (c2579 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c2585 : v1 ∨ ¬v4 ∨ v8 ∨ v48 ∨ v49)
    (c2591 : ¬v4 ∨ v48 ∨ v49)
    (c2597 : ¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2604 : v31 ∨ v3 ∨ v10 ∨ ¬v16 ∨ v30 ∨ v33 ∨ v44 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2647 : ¬v22 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c2686 : v34 ∨ v7 ∨ v48 ∨ v49)
    (c2687 : v7 ∨ v48 ∨ v49)
    (c2689 : ¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2700 : v30 ∨ v2 ∨ v9 ∨ ¬v18 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2705 : ¬v14 ∨ v11 ∨ v48 ∨ v49)
    (c2706 : ¬v2 ∨ v14 ∨ v48 ∨ v49)
    (c2708 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2711 : v3 ∨ v9 ∨ v11 ∨ v48 ∨ v49)
    (c2712 : ¬v3 ∨ v11 ∨ v48 ∨ v49)
    (c2719 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c2725 : ¬v10 ∨ v11 ∨ v48 ∨ v49)
    (c2726 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v39 ∨ v45 ∨ v46)
    (c2729 : v32 ∨ ¬v1 ∨ v2 ∨ v3 ∨ v4 ∨ v6 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v14 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    : (v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46) ∧ (v11 ∨ v48 ∨ v49) ∧ (v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v11) ∧ (v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45) ∧ (¬v5 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v3 ∨ v14 ∨ v48 ∨ v49) ∧ (v33 ∨ v39 ∨ v48 ∨ v49) ∧ (¬v2 ∨ v3 ∨ v9 ∨ v48 ∨ v49) ∧ (v2 ∨ v9 ∨ ¬v33 ∨ v41 ∨ v48 ∨ v49) ∧ (v9 ∨ v39 ∨ v48 ∨ v49) := by
  have c2730 : ¬v1 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v10 := by
      rcases c2725 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v39 := by
      rcases c2443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u4 a
      · exact absurd a n2
    have u17 : v40 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n2
    have u18 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u14
    have u22 : ¬v34 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
    have u23 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u24 : v32 := by
      rcases c2729 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
    have u25 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v28 := by
      rcases c2537 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u27
    have u29 : ¬v16 := by
      rcases c2708 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u30 : v13 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u10
      · exact a
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a n2
    have u31 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd u30 a
      · exact absurd u15 a
      · exact a
    have u32 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u31
      · exact absurd u30 a
      · exact absurd a u5
    have u33 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u31
      · exact absurd u30 a
      · exact absurd a u5
    rcases c2436 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u29
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u13
  have c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u2 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u3
      · exact a
      · exact absurd a n8
    have u9 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v47 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u13 : ¬v49 := by
      rcases c187 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v48 := by
      rcases c186 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
    have u16 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u11
  have c2732 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v30 ∨ v32 ∨ v39 ∨ v41 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v49 := by
      rcases c187 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n10 a
    have u6 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u1
    have u7 : ¬v1 := by
      rcases c2730 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u1
    have u8 : v40 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n11
    have u9 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u11 : ¬v34 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u5
    have u15 : v31 := by
      rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u19 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u9
      · exact a
    have u20 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u19 a
      · exact absurd u6 a
      · exact a
    have u21 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u19 a
      · exact absurd u6 a
      · exact a
    have u22 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u20
      · exact a
    have u23 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n8
    have u24 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u4
      · exact a
      · exact absurd a u23
      · exact absurd a n8
    rcases c758 with a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u14
  have c2733 : ¬v5 ∨ v1 ∨ ¬v9 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v8 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n3
    have u6 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n3
    rcases c42 with a|a|a
    · exact absurd u5 a
    · exact absurd n2 a
    · exact absurd u6 a
  have c2734 : v32 ∨ v11 ∨ v30 ∨ v34 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v10 := by
      rcases c2725 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v1 := by
      rcases c2730 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v5 := by
      rcases c2733 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v41 := by
      rcases c2732 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd u6 a
      · exact absurd a n5
    have u12 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v31 := by
      rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
    have u16 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u15 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u16
    · exact absurd a n5
  have c2735 : v39 ∨ v11 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v10 := by
      rcases c2725 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v1 := by
      rcases c2730 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u16 : ¬v34 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u18 : v32 := by
      rcases c2734 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u24 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u25 : ¬v16 := by
      rcases c2604 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u26 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u22
    have u27 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u14
    have u28 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u20
    have u29 : v8 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u4
      · exact a
      · exact absurd u10 a
      · exact absurd a u25
    have u30 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u29 a
      · exact absurd u10 a
      · exact a
    have u31 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u29 a
      · exact absurd u10 a
      · exact a
    have u32 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a u31
      · exact absurd a u30
      · exact a
    have u33 : v6 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u30
      · exact a
      · exact absurd a u3
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u1
    have u34 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u7 a
    have u35 : ¬v28 := by
      rcases c2537 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u22
    have u36 : ¬v41 := by
      rcases c2579 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
    have u37 : v25 := by
      rcases c205 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u34
      · exact absurd a u6
      · exact a
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u36
      · exact absurd a u13
    have u38 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u37 a
    have u39 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u14
      · exact a
      · exact absurd a u38
      · exact absurd a u20
    have u40 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u39 a
      · exact a
    have u41 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u39 a
    rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u39 a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a u38
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u41
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a u40
    · exact absurd a u28
    · exact absurd a u35
  have c2736 : v8 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v10 := by
      rcases c2725 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v1 := by
      rcases c2730 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v14 := by
      rcases c2705 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
    have u13 : v16 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u6 a
      · exact a
    have u14 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u16 : v34 := by
      rcases c2708 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v37 := by
      rcases c1744 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    rcases c1445 with a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a u9
  have c2737 : ¬v39 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : v9 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v8 := by
      rcases c2736 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v13 := by
      rcases c42 with a|a|a
      · exact absurd u11 a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v12 := by
      rcases c41 with a|a|a
      · exact absurd u11 a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v14 := by
      rcases c43 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v1 := by
      rcases c2730 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : v6 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u12
      · exact a
      · exact absurd a u15
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u14
    have u17 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u6 a
    rcases c233 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n3
  have c2738 : v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v39 := by
      rcases c2737 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u7 : ¬v10 := by
      rcases c2725 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v30 := by
      rcases c2735 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v18 := by
      rcases c1823 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u4
    have u15 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v16 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v3 := by
      rcases c2712 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u19 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u20 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u17
      · exact a
      · exact absurd a u10
    rcases c113 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c2739 : ¬v8 ∨ v10 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u9
    have u17 : ¬v16 := by
      rcases c983 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u9
    have u18 : ¬v26 := by
      rcases c968 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u9
    have u19 : v30 := by
      rcases c145 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
    have u20 : ¬v39 := by
      rcases c2601 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u9
    have u22 : ¬v20 := by
      rcases c2548 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v28 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u21
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u24 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u25 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u3 a
    have u26 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u3 a
    have u27 : v15 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u26
      · exact a
      · exact absurd a u13
    have u28 : ¬v17 := by
      rcases c2356 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u29 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u27 a
      · exact a
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a u28
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u29
  have c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n5
    have u3 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    rcases c969 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2741 : v3 ∨ v8 ∨ v10 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u11 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v16 := by
      rcases c983 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u5 a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u9
    have u13 : v17 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v22 := by
      rcases c2419 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
    have u20 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u10
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n1
    have u21 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u3 a
    have u22 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u3 a
    have u23 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n9
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n6
    have u24 : v12 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u15
    rcases c70 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u5 a
  have c2742 : v10 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v8 := by
      rcases c2739 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v3 := by
      rcases c2741 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u2 a
    have u12 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u2 a
    have u13 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd u10 a
      · exact absurd u2 a
      · exact a
    have u14 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u8
    have u15 : v14 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u2 a
      · exact a
    rcases c60 with a|a|a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd u4 a
  have c2743 : ¬v3 ∨ ¬v7 ∨ ¬v10 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v13 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n3
    rcases c65 with a|a|a
    · exact absurd n2 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2744 : ¬v17 ∨ v1 ∨ v2 ∨ v9 ∨ v14 ∨ v29 ∨ v35 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v22 := by
      rcases c2356 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact a
    have u7 : v23 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a u3
    rcases c102 with a|a
    · exact absurd u5 a
    · exact absurd u7 a
  have c2745 : v16 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v30 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v17 := by
      rcases c2744 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v36 := by
      rcases c1707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v15 := by
      rcases c2278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u6 a
    have u8 : v22 := by
      rcases c1671 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u9 : v23 := by
      rcases c434 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n6 a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a u1
    rcases c102 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c2746 : v1 ∨ v3 ∨ v8 ∨ v9 ∨ v12 ∨ v14 ∨ ¬v30 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c2585 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v7 := by
      rcases c2686 with a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v5 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n10
    have u15 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u16 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v42 := by
      rcases c571 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u2
    have u18 : v40 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v17 := by
      rcases c2744 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u21 : v16 := by
      rcases c2745 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u22 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u21 a
    have u25 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u22
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u26 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u25 a
      · exact a
    rcases c543 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u27
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd u21 a
    · exact absurd a u24
  have c2747 : ¬v23 ∨ v6 ∨ v13 ∨ v14 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n4
    have u5 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u4 a
    rcases c520 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u5
  have c2748 : ¬v30 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v7 := by
      rcases c2686 with a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u11 : v10 := by
      rcases c2742 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u7 a
    have u18 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u7 a
    have u19 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u7 a
    have u20 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u7 a
    have u21 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u22 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u23 : ¬v3 := by
      rcases c2743 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u11 a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u24 : v1 := by
      rcases c2746 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u25 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u9 a
    have u26 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u9 a
    have u27 : ¬v23 := by
      rcases c2747 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u28 : v40 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a n3
    have u29 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : v24 := by
      rcases c434 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u1
    have u31 : v22 := by
      rcases c1033 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a u29
      · exact absurd a u22
    rcases c103 with a|a
    · exact absurd u31 a
    · exact absurd u30 a
  have c2749 : v13 ∨ v6 ∨ ¬v11 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v20 := by
      rcases c1935 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n6
  have c2750 : ¬v24 ∨ v2 ∨ v6 ∨ ¬v11 ∨ v30 ∨ v34 ∨ v41 ∨ v43 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v13 := by
      rcases c2749 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u7 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u8 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n3 a
    have u10 : v16 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c745 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u4
  have c2751 : ¬v13 ∨ v3 ∨ v6 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
    have u7 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u8 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u9 : v1 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n3
    have u10 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v17 := by
      rcases c1649 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n3
    have u12 : ¬v18 := by
      rcases c1648 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n3
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u12
  have c2752 : v3 ∨ v6 ∨ v14 ∨ v29 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v30 := by
      rcases c2748 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u12 : ¬v13 := by
      rcases c2751 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v1 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd u3 a
      · exact absurd a n9
      · exact absurd a n2
    have u14 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v24 := by
      rcases c2750 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n9
    have u16 : ¬v23 := by
      rcases c2747 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v31 := by
      rcases c1447 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v10 := by
      rcases c1119 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u19 : ¬v16 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u20 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u10
      · exact a
      · exact absurd a u15
      · exact absurd a u17
    have u21 : v9 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u22 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u21 a
      · exact absurd u4 a
      · exact a
    rcases c371 with a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd u4 a
    · exact absurd a u18
    · exact absurd a u2
    · exact absurd a u23
  have c2753 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    have u2 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u4 : v16 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd n0 a
      · exact a
    rcases c1599 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd n5 a
    · exact absurd a u3
  have c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u2 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v23 := by
      rcases c1447 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v25 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
    rcases c109 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2755 : v9 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v14 ∨ v21 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n18
    have u2 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v17 := by
      rcases c2356 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
    have u4 : v24 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n18
    have u5 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v13 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n17
      · exact a
      · exact absurd a u5
    have u8 : v8 := by
      rcases c745 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u5
    have u9 : v11 := by
      rcases c2708 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c49 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd u6 a
  have c2756 : v34 ∨ v3 ∨ v14 ∨ v29 ∨ v33 ∨ v38 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v6 := by
      rcases c2752 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v7 := by
      rcases c2686 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v30 := by
      rcases c2748 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u10 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : v40 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v9 := by
      rcases c2753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u7 a
    have u17 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
    have u18 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u19 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v10 := by
      rcases c2755 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n9
    have u21 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u7 a
    have u22 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v27 := by
      rcases c1482 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n9
    have u24 : v16 := by
      rcases c2197 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a u11
    have u25 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v22 := by
      rcases c2647 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
    rcases c1709 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u21
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n9
  have c2757 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v1 := by
      rcases c1690 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c14 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c2758 : v14 ∨ ¬v10 ∨ ¬v29 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u15 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u16 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u17 : ¬v5 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v40 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v23 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u10
    have u22 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u21 a
    rcases c485 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u22
  have c2760 : v3 ∨ v14 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v30 := by
      rcases c2748 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : v29 := by
      rcases c2756 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v10 := by
      rcases c2758 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v16 := by
      rcases c2604 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v26 := by
      rcases c968 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
    have u18 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u10
    have u19 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
    have u22 : v9 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u1
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u23 : v1 := by
      rcases c2753 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u6 a
    have u24 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u22 a
      · exact absurd u6 a
      · exact a
    have u25 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u5 a
    rcases c1017 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a n7
  have c2761 : ¬v9 ∨ v3 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v1 := by
      rcases c2753 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd u4 a
    have u6 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u7 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v19 := by
      rcases c2227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a u8
    have u11 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a u7
    have u12 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u2
      · exact a
    have u13 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u12 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd n0 a
    · exact absurd a u14
  have c2762 : v41 ∨ v3 ∨ v14 ∨ v33 ∨ v38 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v30 := by
      rcases c2748 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u13 : ¬v9 := by
      rcases c2761 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v34 := by
      rcases c2760 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u1
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u21 : ¬v18 := by
      rcases c2700 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u22 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u23 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u19 a
      · exact a
    have u26 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u19 a
      · exact a
    have u27 : v10 := by
      rcases c2604 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd u19 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u28 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a n3
    have u29 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u7
      · exact a
    have u30 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u6 a
    have u31 : v23 := by
      rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a u29
      · exact a
      · exact absurd a u30
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n4
    have u32 : ¬v5 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u30
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u33 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : v40 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n5
      · exact absurd a u32
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
    have u35 : v42 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u33
      · exact absurd a n3
      · exact a
      · exact absurd a u29
      · exact absurd a u18
      · exact absurd a u28
    rcases c165 with a|a
    · exact absurd u35 a
    · exact absurd u34 a
  have c2763 : ¬v3 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v2 := by
      rcases c2706 with a|a|a|a
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
    have u5 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u10 : ¬v6 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u12 : ¬v10 := by
      rcases c2743 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
    have u13 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u9
    have u14 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u5 a
    have u15 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u13 a
      · exact absurd u5 a
      · exact a
    rcases c394 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u14
  have c2764 : v14 ∨ v33 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v3 := by
      rcases c2763 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v30 := by
      rcases c2748 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : v38 := by
      rcases c2762 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v31 := by
      rcases c2547 with a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v5 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v8 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u6 a
    have u21 : ¬v9 := by
      rcases c40 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u7 a
    have u22 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u19 a
      · exact absurd u7 a
      · exact a
    have u23 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u7 a
    have u24 : ¬v10 := by
      rcases c44 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u7 a
    have u25 : v27 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd u7 a
      · exact absurd a u23
    have u27 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u25 a
      · exact a
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u11
  have c2765 : v2 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v30 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v11 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
    have u9 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
    have u10 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u11 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v19 := by
      rcases c683 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
    have u16 : ¬v20 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
    have u17 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u9
    have u18 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u4 a
    have u19 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u4 a
    have u20 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u3
      · exact a
    rcases c2382 with a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n10
  have c2766 : v3 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v30 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v2 := by
      rcases c2765 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v1 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a n1
    rcases c5 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd u2 a
  have c2767 : v41 ∨ v33 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v44 := by
      rcases c176 with a|a
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
    have u8 : v14 := by
      rcases c2764 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u4 a
    have u11 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u4 a
    have u12 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u4 a
    have u14 : ¬v30 := by
      rcases c2748 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u15 : v3 := by
      rcases c2766 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u3 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd u15 a
    · exact absurd a u5
    · exact absurd a u7
  have c2768 : ¬v3 ∨ v4 ∨ ¬v7 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v49 := by
      rcases c187 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
    have u7 : v14 := by
      rcases c2763 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
    have u8 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u5
  have c2769 : v39 ∨ v2 ∨ v9 ∨ v16 ∨ v30 ∨ v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v41 := by
      rcases c2767 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact a
    have u11 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u13 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v35 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v31 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n4
    have u17 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    rcases c2028 with a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a u16
  have c2770 : v2 ∨ v9 ∨ v33 ∨ v34 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v41 := by
      rcases c2767 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : v35 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n5
    have u12 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u16 : ¬v3 := by
      rcases c2768 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd u2 a
      · exact absurd a n5
    have u17 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u20 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u21 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
    have u22 : v16 := by
      rcases c2769 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : v10 := by
      rcases c2604 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u16
      · exact a
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u28 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
    have u29 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u5 a
    have u30 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u5 a
    have u31 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u28
      · exact a
      · exact absurd a n3
    have u32 : v28 := by
      rcases c531 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u11 a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u31
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a n3
      · exact a
      · exact absurd a u19
      · exact absurd a u20
    have u33 : v23 := by
      rcases c527 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n1
      · exact a
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd a u20
    rcases c112 with a|a
    · exact absurd u32 a
    · exact absurd u33 a
  have c2771 : ¬v2 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v14 := by
      rcases c2706 with a|a|a|a
      · exact absurd n0 a
      · exact a
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
    have u6 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v8 := by
      rcases c50 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v3 := by
      rcases c2768 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd u2 a
      · exact absurd a n1
    have u12 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    rcases c415 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd n0 a
    · exact absurd a u7
  have c2772 : v34 ∨ v33 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v41 := by
      rcases c2767 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v3 := by
      rcases c2768 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd u2 a
      · exact absurd a n3
    have u12 : ¬v2 := by
      rcases c2771 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v35 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
    have u14 : v9 := by
      rcases c2770 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u5 a
    have u16 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u5 a
    have u17 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u5 a
    have u18 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u14 a
      · exact absurd u5 a
      · exact a
    have u19 : ¬v19 := by
      rcases c2227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a u17
    have u20 : ¬v5 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v17 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u11
      · exact absurd a u17
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u22 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd u5 a
      · exact absurd a u17
      · exact absurd a u3
      · exact a
    rcases c91 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c2773 : ¬v9 ∨ v3 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u9 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v10 := by
      rcases c54 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u13 : ¬v5 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd u4 a
      · exact absurd a u9
    have u15 : ¬v2 := by
      rcases c2706 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v19 := by
      rcases c2227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a u11
    have u17 : v1 := by
      rcases c2753 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd u4 a
    have u18 : v18 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u2
      · exact a
    have u19 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u3 a
    have u20 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u18 a
      · exact a
    rcases c319 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u7
  have c2774 : v2 ∨ v33 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v3 := by
      rcases c2768 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd u1 a
      · exact absurd a n3
    have u11 : v34 := by
      rcases c2772 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v41 := by
      rcases c2767 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v9 := by
      rcases c2773 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v18 := by
      rcases c2700 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u19
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u21 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u19
      · exact a
      · exact absurd a u7
      · exact absurd a u6
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
      rcases c2604 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact a
      · exact absurd u21 a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u26 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u5
      · exact a
    have u27 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u4 a
    have u28 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u4 a
    have u29 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u4 a
    have u30 : ¬v22 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
    have u31 : ¬v5 := by
      rcases c2757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
    have u32 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u29
      · exact absurd a u22
      · exact absurd a u30
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
    have u33 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u3 a
    rcases c234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u28
    · exact absurd a n2
    · exact absurd a u33
    · exact absurd a u24
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u31
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n3
  have c2775 : v33 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v3 := by
      rcases c2768 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd u1 a
      · exact absurd a n2
    have u9 : v2 := by
      rcases c2774 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u3 a
    have u11 : v14 := by
      rcases c2706 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u4 a
    rcases c381 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd u9 a
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u5
  have c2776 : ¬v2 ∨ v3 ∨ v9 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v11 := by
      rcases c2711 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u8 : v10 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
    have u9 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
    rcases c44 with a|a|a
    · exact absurd u9 a
    · exact absurd u8 a
    · exact absurd u1 a
  have c2777 : v40 ∨ v9 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v33 := by
      rcases c2775 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u13 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u16 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u17 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
    have u18 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u19 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u20 : ¬v3 := by
      rcases c2768 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd u2 a
      · exact absurd a n3
    have u21 : ¬v2 := by
      rcases c2776 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u22 : v10 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n4
    have u23 : v16 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u21
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u24 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u5 a
    have u25 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u5 a
    have u26 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd u23 a
    have u29 : v23 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u13
    have u30 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
    have u31 : v25 := by
      rcases c588 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u28
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u30
    rcases c109 with a|a
    · exact absurd u31 a
    · exact absurd u29 a
  have c2778 : ¬v10 ∨ v15 ∨ v22 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v11 := by
      rcases c2738 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u9 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u10 : v6 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    rcases c15 with a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd u2 a
  have c2779 : v2 ∨ v9 ∨ ¬v33 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v4 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : v16 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u13 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u7
      · exact a
    have u18 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
    have u19 : ¬v22 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
    have u20 : ¬v10 := by
      rcases c2778 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : v3 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd u21 a
    · exact absurd a u8
    · exact absurd a u11
  have c2780 : v9 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v33 := by
      rcases c2775 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v7 := by
      rcases c2687 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v40 := by
      rcases c2777 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v2 := by
      rcases c2779 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v3 := by
      rcases c2776 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    rcases c19 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u2 a
  exact ⟨c2731, c2738, c2740, c2753, c2754, c2757, c2763, c2775, c2776, c2779, c2780⟩
