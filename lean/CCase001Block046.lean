import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2300-2349 of the 2915-step refutation of ccase001: 131 core clauses and 97 earlier-derived ones give 16 more. -/
theorem CCase001_block046
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
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
    (c102 : ¬v22 ∨ ¬v23)
    (c104 : ¬v22 ∨ ¬v25)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c115 : ¬v27 ∨ ¬v24)
    (c118 : ¬v27 ∨ ¬v25)
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
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
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
    (c185 : ¬v49 ∨ ¬v46)
    (c186 : ¬v48 ∨ ¬v47)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c274 : ¬v5 ∨ v6 ∨ v13 ∨ v11 ∨ v12 ∨ v4 ∨ v46 ∨ v47)
    (c286 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ ¬v29 ∨ v14 ∨ v28 ∨ v30 ∨ v24 ∨ v15 ∨ v8 ∨ v31 ∨ v9 ∨ v38)
    (c302 : v21 ∨ v28 ∨ v18 ∨ v33 ∨ v34 ∨ v26 ∨ v32 ∨ v5 ∨ v20 ∨ v7 ∨ v6 ∨ v25 ∨ v13 ∨ ¬v27)
    (c306 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v47 ∨ v7 ∨ v5 ∨ v6)
    (c316 : ¬v33 ∨ v40 ∨ v37 ∨ v20 ∨ v39 ∨ v26 ∨ v32 ∨ v31 ∨ v23 ∨ v34 ∨ v19 ∨ v27 ∨ v18 ∨ v30)
    (c341 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v4 ∨ v18)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c371 : v12 ∨ v19 ∨ v3 ∨ v5 ∨ ¬v11 ∨ v10 ∨ v4 ∨ v18)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c394 : v43 ∨ v49 ∨ v13 ∨ v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v8)
    (c402 : v6 ∨ ¬v7 ∨ v34 ∨ v35 ∨ v5 ∨ v14 ∨ v13 ∨ v1 ∨ v12 ∨ v29 ∨ v42 ∨ v43 ∨ v47 ∨ v49)
    (c408 : v15 ∨ v21 ∨ v16 ∨ v1 ∨ v7 ∨ v14 ∨ v9 ∨ ¬v8)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c435 : ¬v19 ∨ v13 ∨ v18 ∨ v20 ∨ v26 ∨ v25 ∨ v12 ∨ v27)
    (c488 : ¬v8 ∨ v14 ∨ v2 ∨ v21 ∨ v16 ∨ v1 ∨ v15 ∨ v9)
    (c505 : v12 ∨ v9 ∨ v31 ∨ v16 ∨ v18 ∨ v32 ∨ v3 ∨ v25 ∨ v4 ∨ v2 ∨ v10 ∨ ¬v11 ∨ v33 ∨ v19)
    (c507 : ¬v33 ∨ v40 ∨ v35 ∨ v4 ∨ v39 ∨ v26 ∨ v5 ∨ v32 ∨ v34 ∨ v28 ∨ v42 ∨ v27 ∨ v6 ∨ v47)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c534 : ¬v48 ∨ v41 ∨ v37 ∨ v42 ∨ v13 ∨ v2 ∨ v14 ∨ v6 ∨ v12 ∨ v5 ∨ v43 ∨ v44 ∨ v47 ∨ v49)
    (c552 : ¬v48 ∨ v49 ∨ v5 ∨ v40 ∨ v42 ∨ v6 ∨ v47 ∨ v41)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c704 : v23 ∨ ¬v19 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c805 : v5 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c983 : v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v38 ∨ v45)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1054 : v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1056 : ¬v24 ∨ ¬v16 ∨ v19 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1064 : ¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1272 : ¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c1295 : ¬v25 ∨ ¬v30 ∨ v37 ∨ v38)
    (c1371 : v29 ∨ ¬v18 ∨ ¬v22)
    (c1375 : v29 ∨ ¬v19 ∨ ¬v22)
    (c1391 : ¬v8 ∨ v1 ∨ v2 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v21)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1567 : ¬v20 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1599 : ¬v16 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1621 : ¬v26 ∨ v8 ∨ v9 ∨ ¬v16)
    (c1630 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1741 : ¬v35 ∨ ¬v39 ∨ v46 ∨ v47)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2013 : ¬v27 ∨ v9 ∨ v10 ∨ ¬v16)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2083 : ¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2216 : ¬v32 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v18 ∨ v19 ∨ v21 ∨ v40 ∨ v47)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2335 : ¬v25 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v17)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2517 : ¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2589 : ¬v18 ∨ v11 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c2597 : ¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : ¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2636 : ¬v34 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c2689 : ¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2708 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2719 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2786 : v48 ∨ v49)
    (c2787 : ¬v39 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c2789 : v16 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v30 ∨ v49)
    (c2798 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47)
    (c2804 : ¬v40 ∨ v1 ∨ v5 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v49)
    (c2805 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c2811 : v16 ∨ v2 ∨ v5 ∨ v9 ∨ v12 ∨ v13 ∨ v30 ∨ v49)
    (c2826 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2827 : v33 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2828 : v18 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v32 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47)
    (c2829 : ¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49)
    (c2833 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v49)
    (c2845 : v30 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v35 ∨ v36 ∨ v37 ∨ v42)
    (c2847 : ¬v29 ∨ v22 ∨ v36 ∨ v37 ∨ v42)
    (c2853 : ¬v3 ∨ v9 ∨ v49)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2874 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45)
    (c2879 : v16 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v20 ∨ ¬v26 ∨ v30 ∨ v32 ∨ v33)
    (c2883 : ¬v33 ∨ ¬v42 ∨ v49)
    (c2884 : ¬v32 ∨ ¬v42 ∨ v49)
    (c2893 : ¬v28 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c2905 : v33 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v40 ∨ v47)
    (c2925 : ¬v28 ∨ ¬v16 ∨ v35)
    (c2928 : ¬v10 ∨ v2 ∨ v7 ∨ v9 ∨ ¬v11 ∨ v22 ∨ v29 ∨ v49)
    (c2929 : v35 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v49)
    (c2932 : v2 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v49)
    (c2933 : v11 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v9 ∨ ¬v10 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    : (¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v17 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14) ∧ (v16 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v4 ∨ ¬v2 ∨ v3 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47) ∧ (v7 ∨ v9 ∨ v22 ∨ v49) ∧ (¬v2 ∨ v9 ∨ v22 ∨ v49) ∧ (v1 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v22 ∨ v49) ∧ (¬v1 ∨ v2 ∨ v4 ∨ ¬v7 ∨ v12 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v49) ∧ (v12 ∨ v9 ∨ v22 ∨ v49) ∧ (¬v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45) ∧ (¬v38 ∨ v5 ∨ v6 ∨ v49) ∧ (¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v49) ∧ (¬v11 ∨ v1 ∨ v9 ∨ v10 ∨ v22 ∨ v32 ∨ v49) ∧ (v1 ∨ v5 ∨ v9 ∨ v10 ∨ v22 ∨ v49) ∧ (¬v17 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v38 ∨ v39 ∨ v40 ∨ v46) := by
  have c2934 : ¬v1 ∨ v7 ∨ v9 ∨ ¬v10 ∨ v22 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v35 := by
      rcases c2929 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v2 := by
      rcases c2932 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
    have u5 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u17 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u18 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
    have u19 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
    have u20 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n6
    have u21 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u12
    have u22 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
    have u23 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v11 := by
      rcases c2933 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u25 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u24 a
    have u29 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u13
    have u30 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u29 a
    have u33 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u29 a
    have u34 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u29 a
      · exact a
    have u35 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u29 a
    have u36 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u35
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u5
    have u37 : ¬v25 := by
      rcases c2826 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u35
      · exact absurd a u31
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u38 : v28 := by
      rcases c2845 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u33
      · exact absurd a u36
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u23
    have u39 : v26 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u26
      · exact absurd a u31
      · exact absurd a u34
      · exact a
      · exact absurd a u37
      · exact absurd a u25
      · exact absurd a n5
    rcases c121 with a|a
    · exact absurd u38 a
    · exact absurd u39 a
  have c2935 : ¬v10 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v35 := by
      rcases c2929 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v2 := by
      rcases c2932 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u5 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v1 := by
      rcases c2934 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd u2 a
      · exact a
    have u15 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u14 a
      · exact absurd n0 a
      · exact a
    have u16 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n0 a
    have u17 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n0 a
    have u18 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n0 a
    have u19 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u16
    have u20 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v39 := by
      rcases c1741 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
    have u23 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u22
    have u24 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u2 a
    have u25 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u23 a
      · exact absurd u2 a
      · exact a
    rcases c274 with a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd a u9
    · exact absurd a u8
  have c2936 : v27 ∨ v7 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
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
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c2935 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u9 : v2 := by
      rcases c2932 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u10 : ¬v6 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u6
    have u12 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u11 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n4
    have u15 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u10
    have u16 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u18
    have u22 : ¬v28 := by
      rcases c2893 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u5
    have u23 : v35 := by
      rcases c2929 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u24 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v17 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u2
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u28 : v11 := by
      rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u8
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u4
    have u29 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u26
    have u30 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u27 a
      · exact a
    have u32 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u27 a
      · exact a
    have u33 : v12 := by
      rcases c371 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd u28 a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u31
    have u34 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u28 a
    have u35 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u33 a
      · exact a
      · exact absurd u28 a
    have u36 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u33 a
      · exact a
      · exact absurd u28 a
    rcases c2845 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u34
    · exact absurd a u36
    · exact absurd a u35
    · exact absurd a u32
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd u23 a
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u18
  have c2937 : ¬v41 ∨ v3 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1595 with a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n7
  have c2938 : ¬v2 ∨ v7 ∨ v9 ∨ v10 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u3 : ¬v47 := by
      rcases c186 with a|a
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
    have u7 : ¬v6 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u5
    have u9 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n5
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u7
  have c2939 : v10 ∨ v7 ∨ v9 ∨ ¬v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c2013 with a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
    have u2 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u6 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u7 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
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
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v41 := by
      rcases c2937 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u9
    have u13 : ¬v2 := by
      rcases c2938 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n4
    have u14 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u14 a
    rcases c2740 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c2940 : ¬v39 ∨ v32 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v33 := by
      rcases c2787 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c1064 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2940 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2942 : ¬v1 ∨ v2 ∨ v7 ∨ v9 ∨ ¬v10 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
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
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : v8 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    have u10 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u9 a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n4 a
    have u13 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact a
    have u14 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u8
    have u16 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u15 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd u15 a
  have c2944 : ¬v29 ∨ v2 ∨ v9 ∨ ¬v27 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v16 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v20 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u3
    rcases c89 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2945 : v1 ∨ v2 ∨ v7 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v27 := by
      rcases c2936 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u4 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v10 := by
      rcases c2939 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n5
    have u8 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v29 := by
      rcases c2944 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v11 := by
      rcases c2928 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
    have u13 : v8 := by
      rcases c2833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n5
    have u14 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u7 a
    have u15 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a n3
      · exact a
    have u16 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u15 a
      · exact a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd u7 a
  have c2946 : v2 ∨ v7 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v27 := by
      rcases c2936 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u1 a
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
    have u9 : v1 := by
      rcases c2945 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v10 := by
      rcases c2939 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n4
    have u11 : v32 := by
      rcases c2942 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n4
    have u12 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v16 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v20 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u14
    rcases c89 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c2947 : ¬v16 ∨ ¬v2 ∨ v9 ∨ ¬v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v8 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact a
    rcases c830 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2948 : v11 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v12 ∨ v16 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
    have u2 : v18 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v26 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact a
    have u5 : v23 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c110 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2949 : v12 ∨ v4 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v22 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v2 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v27 := by
      rcases c2936 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
    have u5 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
    have u14 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v10 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u12
    have u18 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n7
    have u19 : ¬v16 := by
      rcases c2947 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd u17 a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u20 : v11 := by
      rcases c2948 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u21 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u20 a
    have u23 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a u6
    have u25 : v35 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u24
      · exact a
      · exact absurd a u6
      · exact absurd a u15
    have u26 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u27
      · exact a
      · exact absurd a n7
    have u29 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u28 a
      · exact a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u6
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u5
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u30
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u21
    · exact absurd u2 a
  have c2950 : ¬v1 ∨ v7 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v2 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v27 := by
      rcases c2936 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u5 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v40 := by
      rcases c2829 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n4
    have u14 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v10 := by
      rcases c1595 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
    have u18 : v12 := by
      rcases c2949 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n4
    have u19 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd u17 a
      · exact absurd u18 a
      · exact a
    have u21 : v19 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd u18 a
      · exact a
    rcases c2083 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd u17 a
    · exact absurd a u20
  have c2951 : ¬v17 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    rcases c408 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd n3 a
  have c2952 : v16 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v2 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd n3 a
    have u2 : v4 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
    have u3 : v5 := by
      rcases c805 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c20 with a|a|a
    · exact absurd u3 a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2953 : ¬v4 ∨ ¬v2 ∨ v3 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd n0 a
  have c2954 : v7 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
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
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v1 := by
      rcases c2950 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v2 := by
      rcases c2946 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : v10 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u2
      · exact a
      · exact absurd a u6
    have u11 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v4 := by
      rcases c2953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u16 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u12
    have u17 : ¬v17 := by
      rcases c2951 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u13
    have u18 : v27 := by
      rcases c2936 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u19
    have u24 : ¬v35 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u25 : v16 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u26 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u20
      · exact a
    have u29 : v34 := by
      rcases c1433 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u16
      · exact absurd a u27
      · exact absurd a u26
      · exact a
      · exact absurd a u24
    have u30 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u28 a
      · exact a
    rcases c2636 with a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u23
    · exact absurd a u30
    · exact absurd a u4
  have c2955 : ¬v16 ∨ v1 ∨ ¬v2 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
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
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n9
    have u6 : ¬v40 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u5 a
      · exact a
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
    have u11 : ¬v32 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u14 : v33 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v42 := by
      rcases c2883 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n9
    rcases c2828 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd u14 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u7
  have c2956 : ¬v42 ∨ ¬v2 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v20 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c2884 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n10
    have u3 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n10
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u1
    have u7 : v34 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a u5
    have u8 : v30 := by
      rcases c2879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    rcases c133 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c2957 : ¬v34 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v18 := by
      rcases c2636 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n10
    have u5 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u4 a
      · exact a
    rcases c2879 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
  have c2958 : v17 ∨ ¬v2 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
    have u2 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u5 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u6 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u7 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
    have u14 : v10 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a u11
    have u15 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u18
    have u20 : ¬v16 := by
      rcases c2955 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n4
    have u21 : v18 := by
      rcases c2952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v40 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n4
    have u25 : ¬v42 := by
      rcases c2956 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n4
    have u26 : v41 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u8
      · exact a
    have u27 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u25
    have u31 : ¬v34 := by
      rcases c2957 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u8
    have u32 : v35 := by
      rcases c402 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a u31
      · exact a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u30
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n4
    have u33 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u32 a
      · exact a
    rcases c2827 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u33
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u34
    · exact absurd a u31
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c2959 : ¬v2 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u5 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u6 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u7 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd n0 a
      · exact a
    have u14 : v10 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
      · exact absurd a u11
    have u15 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a u17
    have u19 : v17 := by
      rcases c2958 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v40 := by
      rcases c2804 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n3
    have u24 : ¬v32 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u8
    have u25 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u8
    have u26 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u27 : v33 := by
      rcases c2827 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u28 : ¬v42 := by
      rcases c2883 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a n3
    rcases c2828 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd u27 a
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd a u9
    · exact absurd a u8
  have c2960 : ¬v19 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v11 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u4 : ¬v10 := by
      rcases c2083 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u5 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u2
      · exact a
      · exact absurd a n6
    rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2961 : v11 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v10 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
    have u2 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v31 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v28 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact a
    have u7 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v22 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
    have u9 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n7
      · exact a
    rcases c906 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u7
  have c2962 : v16 ∨ v2 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
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
    have u8 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u10 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
    have u14 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
    have u15 : ¬v20 := by
      rcases c1567 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
    have u16 : ¬v19 := by
      rcases c2960 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : v17 := by
      rcases c2961 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u4
    have u20 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u18
      · exact a
      · exact absurd a u11
    have u21 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a n0
      · exact a
    rcases c109 with a|a
    · exact absurd u20 a
    · exact absurd u22 a
  have c2963 : v4 ∨ v2 ∨ v9 ∨ v11 ∨ v12 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
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
    have u7 : v16 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v10 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u10 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
    have u11 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c2708 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2964 : v11 ∨ v2 ∨ ¬v7 ∨ v9 ∨ v12 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
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
    have u6 : v4 := by
      rcases c2963 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd u6 a
  have c2965 : ¬v10 ∨ v1 ∨ v6 ∨ ¬v7 ∨ ¬v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u5 : v43 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u3
    rcases c172 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2966 : ¬v16 ∨ v5 ∨ v9 ∨ v10 ∨ v12 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
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
    have u11 : ¬v27 := by
      rcases c2013 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    have u12 : v40 := by
      rcases c2905 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u11
      · exact a
      · exact absurd a u7
    have u13 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v34 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v32 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v24 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u20
    · exact absurd a u18
  have c2967 : ¬v4 ∨ v2 ∨ ¬v7 ∨ v9 ∨ v12 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u5 : v11 := by
      rcases c2964 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
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
    have u12 : ¬v10 := by
      rcases c2965 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd u5 a
      · exact absurd a n5
    have u13 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u14 : ¬v16 := by
      rcases c2966 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n5
    have u15 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
    have u19 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u7
    have u20 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u23 : ¬v8 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u21
    have u24 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    rcases c1375 with a|a|a
    · exact absurd a u22
    · exact absurd u19 a
    · exact absurd u24 a
  have c2968 : ¬v19 ∨ v2 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v12 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u7 : ¬v4 := by
      rcases c2967 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v11 := by
      rcases c2964 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v5 := by
      rcases c341 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u2
    have u10 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u11 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n2 a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v8 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
    have u16 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u17 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u3
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
    rcases c1375 with a|a|a
    · exact absurd a u16
    · exact absurd n0 a
    · exact absurd u17 a
  have c2969 : ¬v18 ∨ v1 ∨ v2 ∨ v9 ∨ ¬v11 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v8 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
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
    have u9 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    rcases c1371 with a|a|a
    · exact absurd a u9
    · exact absurd n0 a
    · exact absurd u10 a
  have c2970 : v10 ∨ v2 ∨ ¬v7 ∨ v9 ∨ v12 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v4 := by
      rcases c2967 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v11 := by
      rcases c2964 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v16 := by
      rcases c1599 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n4
    have u6 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n4
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
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
    have u12 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u15 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v19 := by
      rcases c2968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v5 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u7
    have u19 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n2 a
    have u20 : ¬v18 := by
      rcases c2969 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n5
    have u21 : v17 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u20
    have u22 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v8 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u6
    have u24 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u25 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u22
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u26 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v30 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u24
      · exact a
    have u29 : v31 := by
      rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u27
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd a u17
    rcases c130 with a|a
    · exact absurd u29 a
    · exact absurd u28 a
  have c2971 : v1 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c2959 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v30 := by
      rcases c2789 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
    have u6 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u8 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u7 a
      · exact a
    rcases c1590 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd u7 a
    · exact absurd a n5
    · exact absurd a n6
  have c2972 : v37 ∨ ¬v10 ∨ v12 ∨ ¬v19 ∨ v27 ∨ ¬v30 ∨ v32 ∨ v33 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n8
    have u2 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v23 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v11 := by
      rcases c577 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n2
    have u9 : v13 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
    rcases c65 with a|a|a
    · exact absurd n1 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c2973 : v16 ∨ v9 ∨ v12 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v2 := by
      rcases c2959 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u3 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v11 := by
      rcases c2964 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
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
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : v10 := by
      rcases c2970 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u14 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u4 a
    have u15 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u4 a
    have u17 : v1 := by
      rcases c2971 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u3 a
    have u19 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u3 a
    have u20 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
    have u21 : ¬v40 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
    have u22 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u5
    have u23 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : v30 := by
      rcases c2811 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a n4
    have u25 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u28 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd a u26
    have u29 : v37 := by
      rcases c2972 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd u22 a
      · exact absurd a u28
      · exact absurd u24 a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u21
    have u30 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u29 a
    rcases c552 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n4
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u31
    · exact absurd a u18
    · exact absurd a u5
    · exact absurd a u30
  have c2974 : ¬v40 ∨ v2 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    rcases c534 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n7
  have c2975 : ¬v1 ∨ v2 ∨ v4 ∨ ¬v7 ∨ v12 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
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
    have u9 : ¬v40 := by
      rcases c2974 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
    have u10 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a u9
    have u11 : ¬v32 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u4
    have u12 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u4
    have u13 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v42 := by
      rcases c2883 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n12
    have u17 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u15
    have u20 : v28 := by
      rcases c507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u4
    have u21 : v23 := by
      rcases c316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a u13
    rcases c112 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c2976 : v12 ∨ v9 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v2 := by
      rcases c2959 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : v16 := by
      rcases c2973 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v4 := by
      rcases c2967 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
    have u18 : v11 := by
      rcases c2964 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
    have u19 : v10 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u12
    have u20 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u21 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v26 := by
      rcases c1621 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd u10 a
    have u24 : ¬v1 := by
      rcases c2975 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a n3
    have u25 : v6 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u22
      · exact a
      · exact absurd a u24
      · exact absurd u2 a
      · exact absurd a u21
      · exact absurd a u20
    have u26 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
    have u27 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u2 a
    have u28 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u26 a
    have u32 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u26 a
    have u33 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u34 : ¬v28 := by
      rcases c2925 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u29
    have u35 : v40 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u30
      · exact absurd a u13
      · exact a
    have u36 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u37 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u32
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u38 : v36 := by
      rcases c286 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u33
      · exact absurd a u29
      · exact absurd u26 a
      · exact absurd a u21
      · exact absurd a u34
      · exact absurd a u28
      · exact absurd a u36
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u32
      · exact absurd a n1
      · exact absurd a u37
    rcases c149 with a|a
    · exact absurd u35 a
    · exact absurd u38 a
  have c2977 : ¬v32 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : v16 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u7
      · exact a
      · exact absurd a u1
    rcases c1056 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd u4 a
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2978 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v38 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
    have u3 : v46 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u4 : ¬v49 := by
      rcases c185 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact a
      · exact absurd u3 a
    rcases c2786 with a|a
    · exact absurd a u5
    · exact absurd a u4
  have c2979 : ¬v38 ∨ v5 ∨ v6 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n3
    have u5 : v47 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a u3
    rcases c186 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2980 : v4 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v2 := by
      rcases c2959 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u6 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v12 := by
      rcases c2976 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
    have u9 : ¬v25 := by
      rcases c2335 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u3
    have u10 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u17 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u16
    have u18 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u17 a
    have u19 : v23 := by
      rcases c745 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
    have u20 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v29 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u12
    have u22 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
    have u23 : ¬v6 := by
      rcases c15 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u6 a
    have u24 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u6 a
    have u25 : ¬v38 := by
      rcases c2979 with a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n5
    have u26 : v31 := by
      rcases c983 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u17 a
      · exact absurd n3 a
      · exact a
      · exact absurd a u25
      · exact absurd a u12
    have u27 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v37 := by
      rcases c2863 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u20
      · exact absurd a u15
      · exact a
      · exact absurd a u25
      · exact absurd a u16
    rcases c2249 with a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u27
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u12
  have c2981 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v7 := by
      rcases c2954 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v12 := by
      rcases c2976 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v4 := by
      rcases c2980 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u11 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u13 : v11 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u6
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd u9 a
    have u14 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u13 a
    have u16 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u13 a
    rcases c394 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd u2 a
    · exact absurd a u14
    · exact absurd a u15
  have c2982 : ¬v11 ∨ v1 ∨ v9 ∨ v10 ∨ v22 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c2981 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : v12 := by
      rcases c2976 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u3 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
    rcases c2971 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n6
  have c2983 : v1 ∨ v5 ∨ v9 ∨ v10 ∨ v22 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c2981 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v2 := by
      rcases c2959 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u4 : v12 := by
      rcases c2976 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
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
    have u11 : ¬v32 := by
      rcases c2977 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
    have u13 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v11 := by
      rcases c2982 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
    have u15 : ¬v4 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact a
    have u16 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u19 : v8 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u20 : v14 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n2
    rcases c52 with a|a|a
    · exact absurd u19 a
    · exact absurd u4 a
    · exact absurd u20 a
  have c2984 : ¬v17 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u3 : v25 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c113 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  exact ⟨c2941, c2951, c2952, c2953, c2954, c2959, c2971, c2975, c2976, c2977, c2978, c2979, c2981, c2982, c2983, c2984⟩
