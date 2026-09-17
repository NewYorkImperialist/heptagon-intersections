import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1900-1949 of the 2915-step refutation of ccase001: 98 core clauses and 75 earlier-derived ones give 16 more. -/
theorem CCase001_block038
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c43 : ¬v8 ∨ ¬v14 ∨ ¬v9)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c74 : v11 ∨ v10 ∨ v12 ∨ v13 ∨ v8 ∨ v9)
    (c79 : v11 ∨ v10 ∨ v12 ∨ v14 ∨ v13 ∨ v8)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c96 : ¬v18 ∨ ¬v20)
    (c98 : ¬v19 ∨ ¬v20)
    (c100 : ¬v20 ∨ ¬v21)
    (c107 : ¬v22 ∨ ¬v28)
    (c111 : ¬v27 ∨ ¬v23)
    (c115 : ¬v27 ∨ ¬v24)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c150 : ¬v36 ∨ ¬v41)
    (c152 : ¬v38 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c158 : ¬v40 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c171 : ¬v47 ∨ ¬v43)
    (c176 : ¬v47 ∨ ¬v44)
    (c180 : ¬v45 ∨ ¬v47)
    (c181 : ¬v48 ∨ ¬v45)
    (c183 : ¬v46 ∨ ¬v47)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c203 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v48 ∨ v14)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c319 : v43 ∨ v15 ∨ v6 ∨ v8 ∨ v2 ∨ ¬v9 ∨ v3 ∨ v14 ∨ v10 ∨ v20 ∨ v16 ∨ v13 ∨ v44 ∨ v45)
    (c356 : ¬v34 ∨ v41 ∨ v27 ∨ v33 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c373 : v43 ∨ ¬v1 ∨ v2 ∨ v44 ∨ v49 ∨ v8 ∨ v7 ∨ v14)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c438 : v20 ∨ v12 ∨ v44 ∨ v5 ∨ v13 ∨ v9 ∨ v7 ∨ v19 ∨ v1 ∨ ¬v6 ∨ v21 ∨ v2 ∨ v48 ∨ v49)
    (c453 : ¬v47 ∨ v40 ∨ v6 ∨ v46 ∨ v5 ∨ v39 ∨ v41 ∨ v48)
    (c509 : v12 ∨ v10 ∨ v46 ∨ v3 ∨ v5 ∨ v45 ∨ v11 ∨ ¬v4)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c595 : ¬v47 ∨ v40 ∨ v39 ∨ v11 ∨ v6 ∨ v13 ∨ v2 ∨ v5 ∨ v37 ∨ v12 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c610 : ¬v41 ∨ v48 ∨ v34 ∨ v40 ∨ v49 ∨ v27 ∨ v19 ∨ v36 ∨ v42 ∨ v29 ∨ v33 ∨ v43 ∨ v21 ∨ v20)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1032 : v29 ∨ v22 ∨ v23 ∨ ¬v30 ∨ v36 ∨ v37 ∨ v38)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1109 : ¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1375 : v29 ∨ ¬v19 ∨ ¬v22)
    (c1391 : ¬v8 ∨ v1 ∨ v2 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v21)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1451 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1468 : ¬v3 ∨ ¬v2 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c1469 : ¬v17 ∨ v1 ∨ v8 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1480 : v3 ∨ v1 ∨ v8 ∨ v10 ∨ v30 ∨ ¬v35 ∨ v37 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1529 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1895 : ¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v27)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c1915 : ¬v4 ∨ ¬v1 ∨ v8 ∨ ¬v13 ∨ v43 ∨ v44 ∨ v49)
    (c1977 : v33 ∨ v7 ∨ v14 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v43 ∨ v48 ∨ v49)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2013 : ¬v27 ∨ v9 ∨ v10 ∨ ¬v16)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2124 : ¬v26 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v15 ∨ ¬v20)
    (c2152 : v14 ∨ v7 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49)
    (c2159 : v34 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2172 : ¬v20 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2186 : ¬v2 ∨ v47 ∨ v48 ∨ v49)
    (c2194 : v30 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2243 : ¬v34 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2295 : v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2299 : v13 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v15 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2349 : ¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2415 : v35 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c2416 : ¬v16 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2419 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v35)
    (c2425 : v47 ∨ v48 ∨ v49)
    (c2433 : ¬v39 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46)
    (c2435 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2449 : ¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49)
    (c2470 : ¬v6 ∨ ¬v4 ∨ v5 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2482 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2497 : ¬v21 ∨ v48 ∨ v49)
    (c2507 : ¬v20 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2510 : ¬v41 ∨ v1 ∨ v5 ∨ v6 ∨ v32 ∨ v33 ∨ v34 ∨ v48 ∨ v49)
    (c2514 : ¬v13 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49)
    (c2516 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49)
    (c2517 : ¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2528 : ¬v12 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49)
    : (v8 ∨ v1 ∨ ¬v4 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v21) ∧ (¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35) ∧ (v19 ∨ v1 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v20 ∨ v48 ∨ v49) ∧ (¬v41 ∨ v2 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48) ∧ (v34 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v21 ∨ v35 ∨ v41 ∨ v48) ∧ (v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v20 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49) ∧ (¬v7 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v1 ∨ v3 ∨ v8 ∨ v10 ∨ v48 ∨ v49) ∧ (v9 ∨ v2 ∨ ¬v4 ∨ v10 ∨ v13 ∨ v48 ∨ v49) ∧ (v10 ∨ ¬v4 ∨ v48 ∨ v49) ∧ (¬v13 ∨ ¬v4 ∨ v48 ∨ v49) ∧ (v9 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v48 ∨ v49) ∧ (¬v1 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v43 ∨ v48 ∨ v49) := by
  have c2529 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c509 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd n1 a
  have c2530 : v8 ∨ v1 ∨ ¬v4 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v9 := by
      rcases c74 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
    have u2 : v14 := by
      rcases c79 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u2 a
      · exact a
    have u4 : v6 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n8
    have u5 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    rcases c1911 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a u3
  have c2531 : ¬v5 ∨ ¬v4 ∨ ¬v8 ∨ v10 ∨ v13 ∨ ¬v15 ∨ v16 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u5 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u6 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u12 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u13 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u14 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u13
    have u15 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n9
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd a u11
  have c2532 : v48 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v14 ∨ v16 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
    have u2 : ¬v12 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
    have u3 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
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
    have u10 : ¬v7 := by
      rcases c2529 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
    have u11 : v5 := by
      rcases c509 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd n2 a
    have u12 : v8 := by
      rcases c2530 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
    have u13 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
    have u14 : ¬v15 := by
      rcases c2531 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd n2 a
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u15 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n8
    have u16 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v17 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u20 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u21 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v27 := by
      rcases c1977 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n8
    have u23 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a n7
      · exact a
      · exact absurd a u16
    have u24 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u23 a
    rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a n8
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n7
  have c2533 : v16 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v12 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
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
    have u10 : ¬v7 := by
      rcases c2529 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
    have u11 : v8 := by
      rcases c2530 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
    have u12 : v20 := by
      rcases c2532 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n8
    have u13 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v34 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u16 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    rcases c2159 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n8
  have c2534 : v6 ∨ v1 ∨ v5 ∨ v7 ∨ v10 ∨ v13 ∨ v14 ∨ v16 ∨ ¬v20 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v35 := by
      rcases c2159 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
    have u18 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u14
    have u19 : ¬v41 := by
      rcases c2510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n9
    have u21 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
    have u22 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
    have u23 : v27 := by
      rcases c1895 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u20
      · exact a
    have u24 : ¬v39 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u25 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v40 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a n10
    have u27 : v42 := by
      rcases c1529 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u19
      · exact a
    rcases c165 with a|a
    · exact absurd u27 a
    · exact absurd u26 a
  have c2535 : v12 ∨ v1 ∨ v5 ∨ v6 ∨ v7 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v16 ∨ ¬v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v34 := by
      rcases c2534 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n10 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u12 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u10
      · exact a
      · exact absurd a u12
    have u14 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u13 a
    rcases c1895 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n10 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u15
  have c2536 : ¬v35 ∨ v1 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u4 : ¬v41 := by
      rcases c2510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u1
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u6 a
      · exact a
    rcases c1977 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a n10
  have c2537 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v22 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    rcases c107 with a|a
    · exact absurd u1 a
    · exact absurd n0 a
  have c2538 : v19 ∨ v1 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ v20 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v35 := by
      rcases c2536 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    have u7 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n7
      · exact a
      · exact absurd a u4
    have u9 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a u7
    have u10 : v33 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v29 := by
      rcases c2537 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    rcases c127 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c2539 : v49 ∨ ¬v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v14 ∨ v16 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
    have u7 : ¬v12 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u9 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v20 := by
      rcases c2535 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u15 : v19 := by
      rcases c2538 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n0
    have u16 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v26 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u15 a
    have u18 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n0
    have u19 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u14
      · exact a
      · exact absurd a u21
    have u23 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u24 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u22 a
    rcases c595 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n7
  have c2540 : v16 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v12 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v3 := by
      rcases c2539 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u6 : v5 := by
      rcases c509 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd n1 a
    have u7 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    rcases c2533 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2541 : v14 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v12 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
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
    have u10 : ¬v7 := by
      rcases c2529 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u11 : v16 := by
      rcases c2540 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u17 : v3 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u18 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n1 a
    rcases c2538 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a n4
    · exact absurd a n5
  have c2542 : ¬v41 ∨ v2 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd n7 a
    rcases c595 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n8
  have c2543 : v34 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v21 ∨ v35 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v19 := by
      rcases c1433 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    rcases c2223 with a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u3 a
  have c2544 : v35 ∨ v2 ∨ v6 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v34 := by
      rcases c2543 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u8 a
    have u14 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u1
      · exact a
    have u15 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u7
    rcases c356 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n9
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u15
  have c2545 : v20 ∨ ¬v4 ∨ v5 ∨ v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v12 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v14 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v7 := by
      rcases c2529 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
    have u10 : v3 := by
      rcases c509 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd n1 a
    have u11 : v8 := by
      rcases c2530 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
    have u12 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u11 a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v41 := by
      rcases c2542 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd u6 a
      · exact absurd a n5
    have u16 : v35 := by
      rcases c2544 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u15
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
    have u19 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u17
    have u20 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v19 := by
      rcases c272 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u18
      · exact a
      · exact absurd a u20
      · exact absurd a u17
    rcases c2223 with a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd u22 a
  have c2546 : v5 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v20 := by
      rcases c2545 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v1 := by
      rcases c2516 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v14 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v12 := by
      rcases c2528 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v7 := by
      rcases c2529 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u15
    have u18 : v3 := by
      rcases c509 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd n1 a
    have u19 : v8 := by
      rcases c2530 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u6
    have u20 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u19 a
      · exact absurd u4 a
      · exact a
    have u23 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u24 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u25 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
    have u26 : ¬v41 := by
      rcases c2542 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd u7 a
      · exact absurd a n4
    have u27 : ¬v26 := by
      rcases c2124 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd u2 a
    have u28 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
    have u29 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u25
    have u30 : ¬v39 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u29
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
    have u31 : v40 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a n4
    have u32 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u31 a
      · exact a
    have u34 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u31 a
      · exact a
    have u35 : v30 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u34
      · exact absurd a u26
      · exact absurd a u32
      · exact absurd a u13
    have u36 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u35 a
    have u37 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u35 a
    have u38 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd a u36
      · exact absurd a u34
      · exact absurd a u33
    have u39 : ¬v22 := by
      rcases c2419 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u37
    have u40 : v27 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u27
      · exact a
      · exact absurd a u38
    have u41 : v23 := by
      rcases c1032 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u39
      · exact a
      · exact absurd u35 a
      · exact absurd a u28
      · exact absurd a u34
      · exact absurd a u33
    rcases c111 with a|a
    · exact absurd u40 a
    · exact absurd u41 a
  have c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n1 a
      · exact a
    rcases c2435 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2548 : ¬v20 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n8
    have u13 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u16 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
    have u17 : ¬v28 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u12
    have u19 : v27 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u16
      · exact a
      · exact absurd a u17
    have u20 : ¬v39 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u21 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u24 : v38 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u18
      · exact a
      · exact absurd a u20
      · exact absurd a u11
    have u25 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u23 a
    rcases c2547 with a|a|a|a|a
    · exact absurd a u25
    · exact absurd u24 a
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
  have c2549 : v35 ∨ v2 ∨ v3 ∨ v6 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v20 := by
      rcases c2548 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n10
    have u8 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v41 := by
      rcases c2544 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v34 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v17 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
    have u13 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    rcases c86 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c2550 : v11 ∨ ¬v4 ∨ v10 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v13 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v5 := by
      rcases c2546 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u9 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u10 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u13 : v14 := by
      rcases c2541 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u14 : v8 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd u13 a
      · exact absurd a u1
    have u15 : ¬v9 := by
      rcases c43 with a|a|a
      · exact absurd u14 a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u13 a
    have u17 : v35 := by
      rcases c2549 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v17 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u20 : ¬v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    rcases c2077 with a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u20
  have c2551 : v8 ∨ v3 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v20 ∨ ¬v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
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
    have u9 : v17 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u11 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u14 : v1 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u14 a
      · exact absurd n2 a
      · exact a
    have u16 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u14 a
      · exact absurd n2 a
      · exact a
    have u17 : ¬v13 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u14 a
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u18 : v9 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u19 : v14 := by
      rcases c319 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd u18 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u8
    rcases c298 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n5
    · exact absurd u19 a
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u4
  have c2552 : ¬v27 ∨ v2 ∨ v9 ∨ v10 ∨ ¬v35 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v16 := by
      rcases c2013 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v45 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u5 : ¬v48 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v47 := by
      rcases c180 with a|a
      · exact absurd u4 a
      · exact a
    rcases c2425 with a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n7
  have c2553 : v27 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v13 ∨ v20 ∨ ¬v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a u1
    have u8 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : v19 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n5
    have u15 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v22 := by
      rcases c1375 with a|a|a
      · exact absurd a u3
      · exact absurd u14 a
      · exact a
    have u19 : v3 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u20 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n1 a
    have u22 : v8 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    rcases c1391 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd u4 a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u6
  have c2554 : v2 ∨ ¬v4 ∨ v6 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ ¬v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c2552 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n7 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u9 : v20 := by
      rcases c2553 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
  have c2555 : ¬v20 ∨ v2 ∨ ¬v4 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v1 := by
      rcases c2449 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u4
  have c2556 : v49 ∨ v2 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v12 ∨ v13 ∨ ¬v35 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u9 : v9 := by
      rcases c2554 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n0
    have u10 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u3 a
    have u11 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u3 a
    have u12 : ¬v20 := by
      rcases c2555 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u13 : v3 := by
      rcases c2551 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n0
    have u14 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n2 a
    have u15 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n2 a
    have u16 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
    have u17 : v19 := by
      rcases c2538 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n0
    have u18 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n0
    have u19 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n0
    have u20 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u17 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u9 a
    · exact absurd a u19
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u14
  have c2557 : ¬v2 ∨ ¬v4 ∨ v10 ∨ ¬v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : v47 := by
      rcases c2186 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
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
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u11 : v9 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u6
    have u12 : v8 := by
      rcases c1480 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    rcases c40 with a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd u5 a
  have c2558 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c2470 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2559 : ¬v9 ∨ ¬v4 ∨ v10 ∨ v13 ∨ ¬v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v2 := by
      rcases c2557 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u4 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v6 := by
      rcases c2558 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    rcases c2556 with a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
  have c2560 : ¬v6 ∨ ¬v4 ∨ v10 ∨ ¬v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u16 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u17 : v17 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u18 : ¬v16 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u19 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v8 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    rcases c1391 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd u8 a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u9
  have c2561 : ¬v35 ∨ ¬v4 ∨ v10 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u13 : ¬v9 := by
      rcases c2559 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v6 := by
      rcases c2560 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v2 := by
      rcases c2557 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v27 := by
      rcases c2552 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u17 : v12 := by
      rcases c2556 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
    have u18 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u6 a
    have u19 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
    have u20 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u19
      · exact a
      · exact absurd a u2
    have u21 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v40 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v19 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u19
    have u24 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u24
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    rcases c2028 with a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u24
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u5
  have c2562 : ¬v7 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c261 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n3
  have c2563 : v14 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
    have u8 : ¬v7 := by
      rcases c2562 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v15 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a u6
    rcases c1430 with a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd u9 a
  have c2564 : ¬v34 ∨ v1 ∨ v3 ∨ v8 ∨ v10 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
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
    have u10 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u11 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u12 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
    rcases c1469 with a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n6
  have c2565 : v6 ∨ v2 ∨ ¬v4 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : ¬v35 := by
      rcases c2561 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v34 := by
      rcases c2564 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n9
    have u10 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n9
    have u12 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u3
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u5
  have c2566 : v9 ∨ v2 ∨ ¬v4 ∨ v6 ∨ v8 ∨ v10 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v35 := by
      rcases c2561 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v14 := by
      rcases c2563 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v7 := by
      rcases c2565 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n0
      · exact a
    rcases c1523 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd u4 a
    · exact absurd a u2
  have c2567 : v6 ∨ ¬v1 ∨ v2 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v35 := by
      rcases c2561 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v20 := by
      rcases c2548 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n10
    have u11 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v15 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a u11
    have u14 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
    have u17 : v41 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u6
      · exact a
      · exact absurd a u16
    rcases c2482 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a n9
    · exact absurd a n10
  have c2568 : v2 ∨ ¬v4 ∨ v6 ∨ v9 ∨ v10 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v35 := by
      rcases c2561 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v8 := by
      rcases c2566 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v1 := by
      rcases c2567 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v7 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a n6
      · exact absurd a u9
    have u13 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a n3
      · exact a
    have u14 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a u9
    have u15 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v34 := by
      rcases c2152 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u2
    have u19 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u20 : ¬v41 := by
      rcases c2482 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u17
  have c2569 : ¬v6 ∨ ¬v4 ∨ ¬v8 ∨ ¬v11 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v12 := by
      rcases c48 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    rcases c2558 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
  have c2570 : v9 ∨ v2 ∨ ¬v4 ∨ v10 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v35 := by
      rcases c2561 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v6 := by
      rcases c2568 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
    have u11 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v8 := by
      rcases c2569 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
    have u14 : v14 := by
      rcases c2563 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v15 := by
      rcases c2299 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u14 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n6
    have u16 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u1 a
    have u17 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u15 a
      · exact a
    rcases c438 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd u8 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
  have c2571 : v2 ∨ ¬v4 ∨ v10 ∨ v13 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v9 := by
      rcases c2570 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u5 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
    have u6 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v6 := by
      rcases c2558 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v7 := by
      rcases c2562 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v1 := by
      rcases c373 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u4
    have u13 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v3 := by
      rcases c1911 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u14
    have u16 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n1 a
    have u17 : v19 := by
      rcases c2538 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u17 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u1 a
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u12
  have c2572 : v13 ∨ ¬v4 ∨ v10 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v21 := by
      rcases c2497 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v2 := by
      rcases c2571 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u9 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u12 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u13 : v9 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u4
    have u14 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u1 a
    have u15 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u1 a
    have u16 : ¬v20 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u17 : v19 := by
      rcases c2538 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v35 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    rcases c2396 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
  have c2573 : v10 ∨ ¬v4 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c183 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v13 := by
      rcases c2572 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v11 := by
      rcases c2550 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u9 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u10 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u11 : v35 := by
      rcases c2563 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v1 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
    have u13 : ¬v7 := by
      rcases c2562 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    have u20 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u21 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
    have u22 : ¬v17 := by
      rcases c1469 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u23 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u5
    have u24 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
    rcases c16 with a|a|a
    · exact absurd n1 a
    · exact absurd u23 a
    · exact absurd u24 a
  have c2574 : ¬v13 ∨ ¬v4 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v10 := by
      rcases c2573 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u4 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u6 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
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
    have u10 : v35 := by
      rcases c2563 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v7 := by
      rcases c2562 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
    have u13 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u17 : ¬v1 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
    have u18 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
    have u20 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u19
    have u21 : ¬v3 := by
      rcases c1468 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u12
    rcases c415 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u21
    · exact absurd u20 a
    · exact absurd a u6
  have c2575 : v1 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c180 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c2562 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v16 := by
      rcases c2416 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v35 := by
      rcases c2563 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u12 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u13 : v3 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
    rcases c16 with a|a|a
    · exact absurd n1 a
    · exact absurd u13 a
    · exact absurd u12 a
  have c2576 : v9 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v1 := by
      rcases c2575 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2425 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c176 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c171 with a|a
      · exact absurd u2 a
      · exact a
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n3
  have c2577 : ¬v1 ∨ ¬v4 ∨ v7 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c373 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
  have c2578 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n11
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a n2
  exact ⟨c2530, c2537, c2538, c2542, c2543, c2547, c2548, c2558, c2562, c2564, c2570, c2573, c2574, c2576, c2577, c2578⟩
