import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2250-2299 of the 2915-step refutation of ccase001: 121 core clauses and 93 earlier-derived ones give 10 more. -/
theorem CCase001_block045
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c4 : ¬v1 ∨ ¬v2 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c37 : v4 ∨ v7 ∨ v5 ∨ v2 ∨ v1 ∨ v3)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c50 : ¬v8 ∨ ¬v14 ∨ ¬v11)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c100 : ¬v20 ∨ ¬v21)
    (c107 : ¬v22 ∨ ¬v28)
    (c109 : ¬v25 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c119 : ¬v28 ∨ ¬v25)
    (c121 : ¬v28 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
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
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c223 : ¬v48 ∨ v41 ∨ v47 ∨ v49 ∨ v42 ∨ v7 ∨ v5 ∨ v6)
    (c227 : v12 ∨ ¬v19 ∨ v33 ∨ v39 ∨ v26 ∨ v24 ∨ v11 ∨ v27 ∨ v10 ∨ v18 ∨ v20 ∨ v41 ∨ v17 ∨ v40)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c262 : v22 ∨ ¬v21 ∨ v15 ∨ v27 ∨ v28 ∨ v14 ∨ v8 ∨ v20)
    (c298 : v15 ∨ v20 ∨ ¬v14 ∨ v6 ∨ v13 ∨ v8 ∨ v7 ∨ v21)
    (c301 : ¬v26 ∨ v33 ∨ v18 ∨ v25 ∨ v19 ∨ v20 ∨ v34 ∨ v27)
    (c305 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v42 ∨ v47 ∨ v7 ∨ v6)
    (c306 : ¬v48 ∨ v41 ∨ v49 ∨ v40 ∨ v47 ∨ v7 ∨ v5 ∨ v6)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c356 : ¬v34 ∨ v41 ∨ v27 ∨ v33 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c415 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ v44 ∨ v3 ∨ ¬v2 ∨ v8)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c489 : ¬v40 ∨ v33 ∨ v46 ∨ v12 ∨ v47 ∨ v11 ∨ v13 ∨ v5 ∨ v35 ∨ v39 ∨ v42 ∨ v34 ∨ v41 ∨ v49)
    (c507 : ¬v33 ∨ v40 ∨ v35 ∨ v4 ∨ v39 ∨ v26 ∨ v5 ∨ v32 ∨ v34 ∨ v28 ∨ v42 ∨ v27 ∨ v6 ∨ v47)
    (c511 : v36 ∨ v35 ∨ v37 ∨ v1 ∨ v41 ∨ v34 ∨ v28 ∨ v27 ∨ v30 ∨ ¬v29 ∨ v7 ∨ v22 ∨ v2 ∨ v43)
    (c513 : v43 ∨ v49 ∨ v44 ∨ v2 ∨ v8 ∨ v7 ∨ v9 ∨ ¬v1)
    (c522 : v22 ∨ v42 ∨ v37 ∨ v17 ∨ v24 ∨ v21 ∨ v10 ∨ v28 ∨ ¬v15 ∨ v9 ∨ v16 ∨ v8 ∨ v29 ∨ v36)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c547 : ¬v48 ∨ v34 ∨ v33 ∨ v40 ∨ v2 ∨ v37 ∨ v7 ∨ v6 ∨ v41 ∨ v44 ∨ v43 ∨ v35 ∨ v47 ∨ v49)
    (c552 : ¬v48 ∨ v49 ∨ v5 ∨ v40 ∨ v42 ∨ v6 ∨ v47 ∨ v41)
    (c571 : v43 ∨ ¬v42 ∨ v35 ∨ v49 ∨ v34 ∨ v41 ∨ v36 ∨ v29)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c588 : ¬v33 ∨ v40 ∨ v39 ∨ v26 ∨ v34 ∨ v32 ∨ v25 ∨ v27)
    (c591 : v22 ∨ ¬v21 ∨ v28 ∨ v13 ∨ v14 ∨ v27 ∨ v20 ∨ v15)
    (c602 : v43 ∨ ¬v1 ∨ v44 ∨ v2 ∨ v9 ∨ v7 ∨ v14 ∨ v8)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c698 : v25 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c1020 : ¬v21 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1056 : ¬v24 ∨ ¬v16 ∨ v19 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1103 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1271 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46)
    (c1332 : ¬v19 ∨ v22 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1349 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v19)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1430 : ¬v28 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15)
    (c1443 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v32 ∨ v33)
    (c1445 : ¬v34 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v45 ∨ v46)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1570 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1578 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1590 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v22)
    (c1595 : v23 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v45)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1659 : ¬v21 ∨ v4 ∨ v8 ∨ v11 ∨ v14 ∨ v22 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1671 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1685 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v22 ∨ v38 ∨ v45)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1755 : v29 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c1823 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ v39 ∨ v46)
    (c1935 : ¬v20 ∨ ¬v11 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c1999 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2083 : ¬v19 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2088 : ¬v12 ∨ ¬v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v43 ∨ v44 ∨ v45)
    (c2111 : ¬v34 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v40 ∨ v47)
    (c2124 : ¬v26 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v15 ∨ ¬v20)
    (c2182 : v21 ∨ ¬v2 ∨ v6 ∨ v7 ∨ ¬v11 ∨ ¬v14 ∨ v20)
    (c2184 : ¬v21 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v43 ∨ v44 ∨ v45)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2295 : v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2332 : ¬v33 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2349 : ¬v24 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v13 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2382 : ¬v18 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2449 : ¬v1 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2496 : ¬v1 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46)
    (c2507 : ¬v20 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2589 : ¬v18 ∨ v11 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c2597 : ¬v15 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2700 : v30 ∨ v2 ∨ v9 ∨ ¬v18 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2708 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2726 : ¬v34 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v37 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45)
    (c2786 : v48 ∨ v49)
    (c2787 : ¬v39 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c2788 : ¬v19 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v49)
    (c2798 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47)
    (c2805 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c2826 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2827 : v33 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2829 : ¬v40 ∨ v5 ∨ v6 ∨ v7 ∨ v49)
    (c2834 : ¬v12 ∨ v7 ∨ ¬v8 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2847 : ¬v29 ∨ v22 ∨ v36 ∨ v37 ∨ v42)
    (c2853 : ¬v3 ∨ v9 ∨ v49)
    (c2855 : ¬v5 ∨ ¬v1 ∨ v4 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c2857 : v33 ∨ ¬v1 ∨ v3 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v14 ∨ v32 ∨ v40 ∨ v49)
    (c2862 : ¬v30 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v36 ∨ v37 ∨ v38 ∨ v45)
    (c2871 : v9 ∨ v7 ∨ ¬v8 ∨ v22 ∨ v27 ∨ v35 ∨ v40 ∨ v42 ∨ v49)
    (c2874 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45)
    (c2876 : v35 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ ¬v42 ∨ v49)
    (c2882 : v9 ∨ v7 ∨ ¬v8 ∨ v14 ∨ v22 ∨ v27 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v49)
    : (¬v33 ∨ ¬v42 ∨ v49) ∧ (¬v32 ∨ ¬v42 ∨ v49) ∧ (¬v28 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45) ∧ (v33 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v40 ∨ v47) ∧ (¬v41 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v45) ∧ (¬v28 ∨ ¬v16 ∨ v35) ∧ (¬v10 ∨ v2 ∨ v7 ∨ v9 ∨ ¬v11 ∨ v22 ∨ v29 ∨ v49) ∧ (v35 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v49) ∧ (v2 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v49) ∧ (v11 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v9 ∨ ¬v10 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47) := by
  have c2883 : ¬v33 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u7 : v43 := by
      rcases c571 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
    rcases c172 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2884 : ¬v32 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n2
    have u7 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    rcases c571 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u2
  have c2885 : v9 ∨ v7 ∨ ¬v8 ∨ v22 ∨ v27 ∨ v35 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
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
    have u6 : v42 := by
      rcases c2871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u7 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n7
    have u12 : ¬v32 := by
      rcases c2884 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n7
    have u13 : v14 := by
      rcases c2882 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v11 := by
      rcases c50 with a|a|a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v12 := by
      rcases c52 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v10 := by
      rcases c47 with a|a|a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v30 := by
      rcases c2862 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
    have u19 : ¬v1 := by
      rcases c2857 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v2 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u4
    have u21 : ¬v24 := by
      rcases c2349 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u22 : v17 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u17
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
    rcases c2077 with a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u21
  have c2886 : v9 ∨ v2 ∨ v7 ∨ v10 ∨ v11 ∨ v22 ∨ v27 ∨ v35 ∨ v40 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v33 := by
      rcases c2883 with a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a n10
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u7 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u8 : ¬v32 := by
      rcases c2884 with a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a n10
    have u9 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u11
    have u15 : ¬v30 := by
      rcases c2862 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u11
    have u16 : v4 := by
      rcases c2876 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd n9 a
      · exact absurd a n10
    have u17 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u18 : v34 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n10
    have u19 : v17 := by
      rcases c1445 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
    have u20 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    rcases c86 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c2887 : ¬v14 ∨ v2 ∨ v7 ∨ v9 ∨ v10 ∨ v22 ∨ v27 ∨ v35 ∨ v40 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v8 := by
      rcases c2885 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n10
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
    have u8 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u9 : v11 := by
      rcases c2886 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
    have u10 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
    have u12 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n0 a
      · exact a
    have u13 : ¬v15 := by
      rcases c1685 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u5
    have u14 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    rcases c2367 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2888 : v2 ∨ v7 ∨ v9 ∨ ¬v14 ∨ v22 ∨ v27 ∨ v35 ∨ v40 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c2885 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
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
    have u7 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u8 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u9 : v10 := by
      rcases c2887 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
    have u10 : ¬v13 := by
      rcases c69 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v11 := by
      rcases c66 with a|a|a
      · exact absurd u9 a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
    have u13 : v17 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd u9 a
    have u14 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u13 a
      · exact a
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u7
  have c2889 : v35 ∨ v2 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v40 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v8 := by
      rcases c2885 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u7 : ¬v32 := by
      rcases c2884 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u11 : ¬v14 := by
      rcases c2888 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
    have u12 : ¬v15 := by
      rcases c1671 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
    have u13 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    have u14 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v28 := by
      rcases c511 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u15
      · exact a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u9
    have u18 : v23 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u8
    rcases c112 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c2890 : v40 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v35 ∨ ¬v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v8 := by
      rcases c2885 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
    have u5 : ¬v47 := by
      rcases c186 with a|a
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
    have u9 : v2 := by
      rcases c2889 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n7
    have u10 : v1 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd u9 a
      · exact absurd a u2
    have u11 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u10 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u10 a
      · exact absurd u9 a
      · exact a
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a u12
  have c2891 : ¬v2 ∨ v7 ∨ v9 ∨ v11 ∨ v14 ∨ v22 ∨ v27 ∨ v35 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c2885 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v42 := by
      rcases c2890 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n9
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
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
    have u10 : v1 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u1
    have u11 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u10 a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n0 a
    have u13 : v41 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u11
    have u14 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v15 := by
      rcases c1671 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v21 := by
      rcases c1659 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u6
    have u18 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n7
      · exact a
      · exact absurd a u2
    have u19 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v20 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd u18 a
    have u21 : v18 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u6
    rcases c96 with a|a
    · exact absurd u21 a
    · exact absurd u20 a
  have c2892 : v14 ∨ ¬v2 ∨ v5 ∨ v7 ∨ v9 ∨ ¬v10 ∨ v22 ∨ v27 ∨ v29 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v42 := by
      rcases c2890 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n13
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n13
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v11 := by
      rcases c2891 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u4 a
    have u7 : v28 := by
      rcases c1570 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n13
    have u8 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v19 := by
      rcases c1332 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a u10
      · exact absurd a n12
    have u13 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u12 a
      · exact a
    rcases c588 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n7
  have c2893 : ¬v28 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1595 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2894 : v35 ∨ ¬v2 ∨ v7 ∨ v9 ∨ v14 ∨ v22 ∨ v27 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c2885 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v42 := by
      rcases c2890 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n8
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
    have u5 : ¬v47 := by
      rcases c186 with a|a
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
    have u9 : v1 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u1
    have u10 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
    have u12 : v41 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u5
      · exact a
    have u13 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u2
    have u18 : ¬v10 := by
      rcases c2892 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v28 := by
      rcases c2893 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u6
    have u20 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u2
    have u21 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u20 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u20 a
    · exact absurd a u21
    · exact absurd a n6
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u22
  have c2895 : v9 ∨ ¬v2 ∨ v5 ∨ v6 ∨ v7 ∨ v8 ∨ v10 ∨ ¬v11 ∨ ¬v14 ∨ v27 ∨ v28 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v12 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd n7 a
    have u3 : ¬v21 := by
      rcases c2184 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v20 := by
      rcases c2182 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n7 a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v26 := by
      rcases c2124 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd u4 a
    rcases c1935 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd n7 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n10
  have c2896 : ¬v33 ∨ v4 ∨ v5 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    rcases c507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n12
  have c2897 : v33 ∨ v4 ∨ v5 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v37 ∨ v39 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n19
      · exact absurd a n0
      · exact a
      · exact absurd a n14
    have u2 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v25 := by
      rcases c577 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n11
      · exact a
      · exact absurd a n8
      · exact absurd a n7
    have u7 : ¬v30 := by
      rcases c1823 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n18
    have u8 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v32 := by
      rcases c2826 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u11 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a u8
    have u12 : v41 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a n14
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v3 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u15 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u11 a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a n3
  have c2898 : ¬v14 ∨ ¬v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v27 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v6 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v1 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n5
      · exact a
      · exact absurd a n17
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n16
    have u3 : ¬v28 := by
      rcases c2893 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
    have u4 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v11 := by
      rcases c2895 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v34 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n17
    have u10 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u11 : ¬v33 := by
      rcases c2896 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n19
    have u12 : v12 := by
      rcases c2897 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u13 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd u12 a
      · exact absurd n0 a
      · exact a
    have u14 : v19 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd u12 a
      · exact a
    have u15 : v15 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u7
    rcases c83 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c2899 : v26 ∨ v4 ∨ v5 ∨ v6 ∨ v12 ∨ v19 ∨ v27 ∨ v28 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n12
      · exact a
      · exact absurd a n5
      · exact absurd a n10
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    rcases c507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n12
  have c2900 : v28 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v27 ∨ v35 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n12
    have u2 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v41 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a u2
      · exact a
    have u5 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v26 := by
      rcases c2899 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
    have u8 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v18 := by
      rcases c1578 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u3
    have u11 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u12 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u10 a
      · exact a
    rcases c698 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a u3
  have c2901 : v40 ∨ ¬v2 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c2885 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u2 : ¬v42 := by
      rcases c2890 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
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
    have u10 : v1 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u1
    have u11 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v4 := by
      rcases c2 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n1 a
    have u14 : v41 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
    have u15 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v14 := by
      rcases c2894 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u19 : v10 := by
      rcases c2898 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u20 : ¬v13 := by
      rcases c69 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v11 := by
      rcases c66 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd u19 a
      · exact absurd a u21
    have u23 : ¬v12 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
    have u24 : v28 := by
      rcases c2900 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n7
    have u25 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u25
    rcases c1578 with a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a u28
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u6
  have c2902 : ¬v28 ∨ v2 ∨ ¬v4 ∨ v8 ∨ v9 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
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
    have u9 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u12 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a n5
    have u14 : v21 := by
      rcases c1755 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a n5
    have u15 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    rcases c2449 with a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n6
  have c2903 : v28 ∨ v7 ∨ ¬v10 ∨ ¬v12 ∨ v22 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    rcases c1095 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n0
  have c2904 : v28 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v7 ∨ ¬v12 ∨ v22 ∨ v27 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c2834 with a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
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
    have u6 : ¬v10 := by
      rcases c2903 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v11 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd n2 a
    have u8 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u7 a
    have u10 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u9
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    rcases c1095 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n0
  have c2905 : v33 ∨ v5 ∨ v12 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v26 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
    have u2 : ¬v34 := by
      rcases c2111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    rcases c301 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
  have c2906 : v35 ∨ v5 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c2885 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v42 := by
      rcases c2890 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n7
    have u3 : ¬v2 := by
      rcases c2901 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u11 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u12 : ¬v19 := by
      rcases c2788 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
    have u13 : v4 := by
      rcases c37 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u5
    have u14 : ¬v20 := by
      rcases c2507 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u15 : ¬v28 := by
      rcases c2902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
    have u16 : ¬v12 := by
      rcases c2904 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n7
    have u17 : v33 := by
      rcases c2905 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
    have u18 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v16 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u20 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    rcases c80 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c2907 : ¬v15 ∨ v2 ∨ v3 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v22 := by
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
    have u3 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v14 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n6
    have u6 : v11 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd n5 a
    rcases c66 with a|a|a
    · exact absurd n5 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c2908 : v42 ∨ v2 ∨ ¬v5 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v22 ∨ v28 ∨ v35 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n11
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
    have u6 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u7 : ¬v15 := by
      rcases c2907 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u8 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u9 : v16 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
    have u12 : v13 := by
      rcases c2295 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u11 a
      · exact absurd u9 a
    rcases c69 with a|a|a
    · exact absurd u11 a
    · exact absurd u12 a
    · exact absurd n6 a
  have c2909 : ¬v41 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v38 := by
      rcases c159 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
    have u7 : ¬v28 := by
      rcases c2893 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
    have u8 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u3
    have u9 : v15 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n3
    have u10 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u9 a
    rcases c522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd u9 a
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u1
  have c2910 : v11 ∨ v2 ∨ ¬v5 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v40 ∨ v42 ∨ v49 := by
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
      · exact absurd a n5
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
    have u8 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u9 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u10 : ¬v41 := by
      rcases c2909 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u5
    have u11 : v6 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n3
      · exact a
    have u12 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u11 a
      · exact absurd n2 a
      · exact a
    have u13 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v16 := by
      rcases c2708 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v39 := by
      rcases c2787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u18 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u19 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u4
    rcases c1709 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n9
  have c2912 : v8 ∨ v2 ∨ ¬v5 ∨ v7 ∨ v9 ∨ v12 ∨ v22 ∨ v28 ∨ v35 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c2908 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n11
    have u3 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n11
    have u4 : ¬v47 := by
      rcases c186 with a|a
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
    have u8 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u9 : ¬v41 := by
      rcases c2909 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u5
    have u10 : v6 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n3
      · exact a
    have u11 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u10 a
      · exact absurd n2 a
      · exact a
    have u12 : v11 := by
      rcases c2910 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v21 := by
      rcases c1020 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd u12 a
      · exact absurd a n5
    have u14 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n3
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n10
    have u15 : ¬v13 := by
      rcases c72 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v19 := by
      rcases c2788 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n11
    have u17 : ¬v18 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u18 : v17 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a u17
    have u19 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u18 a
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd u14 a
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a u8
  have c2913 : ¬v28 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u6 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
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
    have u11 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u12 : ¬v34 := by
      rcases c1999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a n5
    have u17 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u18 : v10 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v14 := by
      rcases c1430 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd u17 a
    have u21 : v11 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd u18 a
    rcases c66 with a|a|a
    · exact absurd u18 a
    · exact absurd u20 a
    · exact absurd u21 a
  have c2914 : ¬v11 ∨ v7 ∨ ¬v12 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u4 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
    rcases c1095 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
  have c2915 : v40 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
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
    have u8 : ¬v8 := by
      rcases c2885 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u9 : ¬v42 := by
      rcases c2890 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u10 : ¬v2 := by
      rcases c2901 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u12 : v5 := by
      rcases c2906 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u13 : ¬v28 := by
      rcases c2913 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v10 := by
      rcases c2908 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u15 : ¬v41 := by
      rcases c2909 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u5
    have u16 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u17 : v6 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n1
      · exact a
    have u18 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u9
    have u19 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u17 a
      · exact absurd u12 a
      · exact a
    have u20 : v12 := by
      rcases c2912 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n6
    have u21 : ¬v11 := by
      rcases c2914 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
    have u22 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u21
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u23 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u24 : ¬v16 := by
      rcases c2708 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u25 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u9
    have u26 : ¬v32 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u27 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd u20 a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v15 := by
      rcases c2597 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd u25 a
    · exact absurd a u8
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a n1
    · exact absurd a u11
  have c2916 : ¬v15 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
    rcases c522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n8
  have c2917 : ¬v15 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2916 with a|a|a|a|a|a|a|a|a|a|a
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
  have c2918 : ¬v40 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v28 ∨ v49 := by
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
    have u3 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
    have u6 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u7 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v15 := by
      rcases c2917 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
    have u11 : v1 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u12 : v2 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u11 a
    have u13 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u11 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u11 a
      · exact absurd u12 a
      · exact a
    rcases c223 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u13
  have c2919 : v10 ∨ ¬v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v11 ∨ v12 ∨ v28 ∨ v35 ∨ ¬v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n10
    have u6 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
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
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v4 := by
      rcases c2496 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v34 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
    have u15 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u2
    have u16 : ¬v13 := by
      rcases c53 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v5 := by
      rcases c2855 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u7
    have u18 : v6 := by
      rcases c2829 with a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a n10
    have u19 : v33 := by
      rcases c489 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n10
    have u20 : ¬v2 := by
      rcases c2874 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    rcases c2332 with a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n10
  have c2920 : v9 ∨ v7 ∨ v10 ∨ v11 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v40 := by
      rcases c2915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u4 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : v8 := by
      rcases c2918 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u11 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u16 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
    have u17 : ¬v30 := by
      rcases c2862 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
    have u18 : ¬v12 := by
      rcases c2834 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n8
    have u19 : ¬v1 := by
      rcases c2919 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n8
    have u20 : ¬v2 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u14
    have u21 : ¬v33 := by
      rcases c2332 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
    have u22 : ¬v34 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u16
    have u23 : v32 := by
      rcases c2798 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
    have u24 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v16 := by
      rcases c2344 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u20
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u26 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v24 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    rcases c2754 with a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u13
  have c2921 : ¬v8 ∨ v7 ∨ ¬v10 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
    have u4 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u3 a
    rcases c591 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u3 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u4
  have c2922 : v1 ∨ v8 ∨ v9 ∨ ¬v10 ∨ v22 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u2 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
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
    have u6 : ¬v2 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a n1
    have u7 : v15 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
    have u8 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v14 := by
      rcases c1590 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a n4
    have u13 : v11 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd n3 a
    rcases c66 with a|a|a
    · exact absurd n3 a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2923 : v49 ∨ v7 ∨ v9 ∨ v11 ∨ v22 ∨ v27 ∨ v28 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v40 := by
      rcases c2915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n0
    have u3 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v47 := by
      rcases c186 with a|a
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
    have u10 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
    have u11 : v10 := by
      rcases c2920 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u12 : ¬v8 := by
      rcases c2921 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n0
    have u13 : v1 := by
      rcases c2922 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n0
    have u14 : v2 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u13 a
    have u15 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    rcases c223 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u15
  have c2924 : ¬v40 ∨ ¬v1 ∨ ¬v2 ∨ v7 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    rcases c2829 with a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
  have c2925 : ¬v28 ∨ ¬v16 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n1 a
      · exact a
    rcases c1421 with a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n0 a
  have c2926 : v11 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v40 := by
      rcases c2915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
    have u4 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u5
    have u16 : v28 := by
      rcases c2923 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u17 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : v10 := by
      rcases c2893 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u12
    have u22 : ¬v19 := by
      rcases c1332 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a n5
    have u23 : ¬v16 := by
      rcases c2925 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n5
    have u24 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
    have u25 : v2 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u26 : ¬v1 := by
      rcases c2924 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u25 a
      · exact absurd a n1
      · exact absurd a n6
    have u27 : ¬v12 := by
      rcases c2088 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd u21 a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u28 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd u25 a
      · exact a
    have u29 : ¬v18 := by
      rcases c2589 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u17
    have u30 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u21 a
    have u31 : v32 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd u25 a
      · exact absurd a n0
      · exact absurd a u29
      · exact absurd a u19
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u32 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u31 a
      · exact a
    have u34 : ¬v17 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u32
      · exact absurd a n5
    have u35 : v5 := by
      rcases c489 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u33
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u30
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u32
      · exact absurd a u6
      · exact absurd a n6
    have u36 : v4 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u34
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u3
      · exact absurd u21 a
      · exact absurd a n0
    rcases c20 with a|a|a
    · exact absurd u35 a
    · exact absurd u36 a
    · exact absurd u25 a
  have c2927 : ¬v2 ∨ v7 ∨ v9 ∨ ¬v11 ∨ ¬v40 ∨ v49 := by
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
    have u6 : ¬v1 := by
      rcases c2924 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n5
    have u7 : v8 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd n0 a
      · exact a
    have u8 : v10 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
    rcases c44 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd n3 a
  have c2928 : ¬v10 ∨ v2 ∨ v7 ∨ v9 ∨ ¬v11 ∨ v22 ∨ v29 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u3 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u7 : ¬v1 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
    have u8 : v15 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
    have u9 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c1430 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u8 a
    rcases c317 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u8 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a u2
  have c2929 : v35 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v49 := by
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
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v40 := by
      rcases c2915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u5 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v29 := by
      rcases c2847 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
    have u11 : v11 := by
      rcases c2926 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u12 : ¬v2 := by
      rcases c2927 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd u4 a
      · exact absurd a n5
    have u13 : ¬v10 := by
      rcases c2928 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
    have u14 : ¬v28 := by
      rcases c2893 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u3
    have u15 : v8 := by
      rcases c2918 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n5
    have u16 : ¬v13 := by
      rcases c49 with a|a|a
      · exact absurd u15 a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v14 := by
      rcases c50 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u11 a
    have u18 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u6
    have u19 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u18 a
    rcases c591 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u18 a
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a u20
    · exact absurd a u19
  have c2930 : v10 ∨ v3 ∨ v9 ∨ v18 ∨ v24 ∨ ¬v35 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v17 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v23 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
    have u10 : ¬v26 := by
      rcases c1443 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
    have u11 : v25 := by
      rcases c1547 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n4
      · exact a
    rcases c850 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u3
  have c2931 : ¬v8 ∨ v2 ∨ ¬v4 ∨ v7 ∨ v9 ∨ ¬v10 ∨ v18 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v12 := by
      rcases c45 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u4 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
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
    have u9 : v5 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd n2 a
    have u10 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n2 a
    have u11 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
    have u12 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u11 a
      · exact a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd n5 a
  have c2932 : v2 ∨ v7 ∨ v9 ∨ v22 ∨ v27 ∨ v49 := by
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
    have u2 : v48 := by
      rcases c2786 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v3 := by
      rcases c2853 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u4 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c181 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c177 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c172 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v18 := by
      rcases c2700 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u15 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u16 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u17 : v10 := by
      rcases c2930 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u18 : ¬v11 := by
      rcases c2928 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
    have u19 : v4 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v8 := by
      rcases c2931 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a n5
    have u21 : ¬v1 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u22 : v15 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u20
    have u23 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a u24
  have c2933 : v11 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v9 ∨ ¬v10 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v19 := by
      rcases c2083 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n0
    have u2 : v12 := by
      rcases c2827 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c1349 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n7 a
    · exact absurd a n0
    · exact absurd a u1
  exact ⟨c2883, c2884, c2893, c2905, c2909, c2925, c2928, c2929, c2932, c2933⟩
