import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1900-1949 of the 2189-step refutation of ccase000: 112 core clauses and 83 earlier-derived ones give 11 more. -/
theorem CCase000_block038
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c69 : ¬v16 ∨ ¬v19)
    (c76 : ¬v18 ∨ ¬v19)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c82 : ¬v22 ∨ ¬v23)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c152 : ¬v48 ∨ ¬v43)
    (c157 : ¬v48 ∨ ¬v44)
    (c161 : ¬v48 ∨ ¬v45)
    (c164 : ¬v48 ∨ ¬v46)
    (c166 : ¬v48 ∨ ¬v47)
    (c168 : ¬v49 ∨ ¬v48)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c191 : ¬v4 ∨ v12 ∨ v5 ∨ v46 ∨ v45 ∨ v3 ∨ v11 ∨ v47)
    (c194 : ¬v31 ∨ v37 ∨ v24 ∨ v38 ∨ v32 ∨ v39 ∨ v25 ∨ v30)
    (c197 : v43 ∨ v29 ∨ v30 ∨ v35 ∨ v44 ∨ ¬v36 ∨ v42 ∨ v37)
    (c201 : ¬v48 ∨ v6 ∨ v7 ∨ v41 ∨ v42 ∨ v5 ∨ v47 ∨ v49)
    (c211 : v43 ∨ v29 ∨ v30 ∨ v44 ∨ ¬v36 ∨ v37 ∨ v42 ∨ v49)
    (c246 : v36 ∨ v22 ∨ v28 ∨ v37 ∨ v35 ∨ v30 ∨ ¬v29 ∨ v23)
    (c250 : v46 ∨ v6 ∨ ¬v5 ∨ v4 ∨ v13 ∨ v11 ∨ v47 ∨ v12)
    (c280 : ¬v27 ∨ v34 ∨ v7 ∨ v33 ∨ v5 ∨ v20 ∨ v13 ∨ v6 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v18 ∨ v21)
    (c283 : ¬v48 ∨ v6 ∨ v47 ∨ v41 ∨ v42 ∨ v7 ∨ v40 ∨ v49)
    (c284 : ¬v48 ∨ v41 ∨ v5 ∨ v47 ∨ v7 ∨ v6 ∨ v40 ∨ v49)
    (c295 : v47 ∨ v6 ∨ v45 ∨ v3 ∨ v4 ∨ v26 ∨ v12 ∨ ¬v5 ∨ v25 ∨ v19 ∨ v27 ∨ v13 ∨ v46 ∨ v10)
    (c338 : v13 ∨ v27 ∨ v2 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v9 ∨ v21 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v49)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c379 : v12 ∨ ¬v25 ∨ v33 ∨ v32 ∨ v35 ∨ v18 ∨ v24 ∨ v11 ∨ v17 ∨ v27 ∨ v26 ∨ v28 ∨ v21 ∨ v10)
    (c391 : v36 ∨ v29 ∨ v38 ∨ v37 ∨ ¬v30 ∨ v31 ∨ v23 ∨ v24)
    (c441 : ¬v40 ∨ v41 ∨ v12 ∨ v46 ∨ v34 ∨ v33 ∨ v47 ∨ v39 ∨ v35 ∨ v13 ∨ v42 ∨ v5 ∨ v11 ∨ v49)
    (c494 : v43 ∨ v29 ∨ v47 ∨ v40 ∨ v37 ∨ v44 ∨ v7 ∨ v1 ∨ v35 ∨ v33 ∨ v42 ∨ v2 ∨ ¬v36 ∨ v41)
    (c495 : ¬v48 ∨ v42 ∨ v5 ∨ v47 ∨ v41 ∨ v40 ∨ v6 ∨ v49)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c700 : ¬v7 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c855 : ¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c861 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c928 : ¬v19 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c982 : ¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1050 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1278 : v25 ∨ v4 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1299 : ¬v22 ∨ v5 ∨ v12 ∨ v39 ∨ v40 ∨ v41 ∨ v47)
    (c1403 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1609 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v46 ∨ v47)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1703 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1716 : v3 ∨ v1 ∨ v2 ∨ v8 ∨ v10 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1868 : v7 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1889 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1898 : v32 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c2045 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44)
    (c2062 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42)
    (c2095 : v8 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c2134 : ¬v31 ∨ v24 ∨ v25 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2140 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2152 : ¬v9 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c2164 : ¬v29 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v43 ∨ v44 ∨ v45)
    (c2206 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2221 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2231 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2239 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v38)
    (c2240 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2254 : ¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2262 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2269 : ¬v31 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ v39)
    (c2302 : ¬v11 ∨ v1 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2304 : ¬v13 ∨ v1 ∨ v22 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2334 : v48 ∨ v49)
    (c2335 : ¬v1 ∨ v2 ∨ v7 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v49)
    (c2337 : ¬v31 ∨ ¬v42 ∨ v49)
    (c2340 : ¬v32 ∨ ¬v42 ∨ v49)
    (c2343 : ¬v30 ∨ ¬v42 ∨ v49)
    (c2346 : ¬v6 ∨ ¬v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49)
    (c2368 : ¬v42 ∨ v26 ∨ v27 ∨ v49)
    (c2371 : v41 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v40 ∨ v42 ∨ v49)
    (c2387 : ¬v2 ∨ v3 ∨ ¬v5 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2400 : ¬v7 ∨ ¬v2 ∨ ¬v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2404 : ¬v29 ∨ v22 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v45)
    (c2416 : v28 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v29 ∨ v42 ∨ v49)
    (c2448 : v1 ∨ ¬v2 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c2451 : v31 ∨ v26 ∨ v27 ∨ v39 ∨ v49)
    (c2452 : v25 ∨ ¬v1 ∨ ¬v2 ∨ v7 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v49)
    (c2455 : v1 ∨ v2 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v49)
    (c2458 : ¬v24 ∨ v39 ∨ v49)
    (c2467 : v1 ∨ ¬v2 ∨ v23 ∨ v25 ∨ v28 ∨ v35 ∨ v39 ∨ v42 ∨ v49)
    : (¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v37) ∧ (¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42) ∧ (¬v32 ∨ v24 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v3 ∨ ¬v1 ∨ ¬v2 ∨ v41 ∨ v42 ∨ v49) ∧ (¬v35 ∨ v28 ∨ v36 ∨ v41 ∨ v42) ∧ (¬v3 ∨ v2 ∨ ¬v5 ∨ ¬v7 ∨ v10 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v40 ∨ v41 ∨ v42 ∨ v49) ∧ (¬v10 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v7 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ v10 ∨ v40 ∨ v41 ∨ v42 ∨ v49) ∧ (¬v30 ∨ v23 ∨ v24 ∨ v36 ∨ v37 ∨ v38) ∧ (v28 ∨ v39 ∨ v49) := by
  have c2468 : ¬v22 ∨ v31 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2451 with a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
  have c2469 : ¬v2 ∨ v1 ∨ v23 ∨ v25 ∨ v28 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v35 := by
      rcases c2467 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v22 := by
      rcases c2468 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n7
    have u17 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u7
    have u20 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u7
    have u21 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u22 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u23 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u5
    have u24 : v27 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a n6
    have u25 : v41 := by
      rcases c1290 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u18
      · exact a
      · exact absurd a n6
    have u26 : v4 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u27 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a n3
    have u28 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u23 a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u24 a
    have u30 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u25 a
    have u31 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u26 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u32 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u26 a
      · exact absurd n0 a
      · exact absurd u23 a
      · exact a
    have u33 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u32
      · exact absurd a u30
      · exact a
      · exact absurd a u29
      · exact absurd a u3
      · exact absurd a u12
    have u34 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u33 a
    rcases c280 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u11
    · exact absurd a u31
    · exact absurd a u12
    · exact absurd a u32
    · exact absurd a u34
    · exact absurd a u22
    · exact absurd a u28
    · exact absurd a n3
    · exact absurd a u29
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u27
    · exact absurd a u35
  have c2471 : v25 ∨ v1 ∨ ¬v2 ∨ v28 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v23 := by
      rcases c2469 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n6
    have u13 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u18 : v9 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v4 := by
      rcases c2152 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u4
    have u22 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    rcases c2400 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd n2 a
    · exact absurd u21 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2472 : v42 ∨ v1 ∨ ¬v2 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u2 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v25 := by
      rcases c2471 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u6 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u16 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u3
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n5
    have u17 : v9 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n5
    rcases c1516 with a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u4
  have c2473 : ¬v42 ∨ ¬v25 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n1 a
    rcases c2368 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
  have c2474 : v29 ∨ v1 ∨ ¬v2 ∨ v26 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v42 := by
      rcases c2472 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
    have u10 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
    have u11 : ¬v25 := by
      rcases c2473 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
    have u12 : v27 := by
      rcases c2368 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
    have u13 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u17 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u18 : ¬v22 := by
      rcases c2468 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u17
    have u21 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u17
    have u22 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
    have u23 : v4 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u14
    have u24 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u15
    have u25 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u26 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u23 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u27 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u23 a
      · exact absurd n2 a
      · exact absurd u24 a
      · exact a
    rcases c284 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a n6
  have c2475 : v37 ∨ v22 ∨ v26 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v36 ∨ v40 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n9
    have u3 : v23 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd n4 a
      · exact a
    have u4 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v42 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u4
    rcases c2368 with a|a|a|a
    · exact absurd u7 a
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n9
  have c2476 : v26 ∨ v1 ∨ ¬v2 ∨ v22 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v42 := by
      rcases c2472 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v29 := by
      rcases c2474 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v30 := by
      rcases c2343 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    rcases c2475 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd u2 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a n6
  have c2477 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n2
  have c2478 : v1 ∨ ¬v2 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v42 := by
      rcases c2472 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n4
    have u14 : ¬v30 := by
      rcases c2343 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n4
    have u15 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n4
    have u16 : ¬v22 := by
      rcases c2468 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v25 := by
      rcases c2473 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n4
    have u18 : v26 := by
      rcases c2476 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v29 := by
      rcases c2477 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
    have u21 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u7
    have u22 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
    have u23 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u7
    have u24 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u7
    have u25 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u26 : v4 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u4
    have u27 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u25 a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u26 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u29 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u26 a
      · exact absurd n1 a
      · exact absurd u25 a
      · exact a
    rcases c284 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u9
    · exact absurd a u29
    · exact absurd a u3
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a n4
  have c2479 : ¬v4 ∨ ¬v1 ∨ ¬v2 ∨ v5 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c6 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v7 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
    rcases c2400 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2480 : v5 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v25 ∨ v27 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n12
    have u2 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n12
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v4 := by
      rcases c2479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u4
    have u8 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u5
    have u9 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    rcases c284 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n10
    · exact absurd a n12
  have c2481 : ¬v42 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v25 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u7 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
    have u8 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
    have u9 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v5 := by
      rcases c2480 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
    have u12 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
      · exact absurd n2 a
    have u14 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
    rcases c2112 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u10
  have c2482 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1148 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c2483 : ¬v32 ∨ v24 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v38 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u3 a
      · exact a
    rcases c2221 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2484 : v41 ∨ ¬v2 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v39 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v35 := by
      rcases c2482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v1 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
    have u3 : v7 := by
      rcases c2452 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v6 := by
      rcases c2371 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c10 with a|a|a|a
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c2485 : v40 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v1 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v42 := by
      rcases c2481 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : v41 := by
      rcases c2484 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n8
    have u12 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u14
    have u17 : ¬v31 := by
      rcases c2269 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n7
    have u18 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u3
    have u19 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n8
    have u20 : v7 := by
      rcases c2452 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
    have u21 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u20 a
      · exact absurd n1 a
    have u22 : ¬v4 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u23 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u21
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u7
    rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2486 : v32 ∨ ¬v2 ∨ v23 ∨ v25 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v1 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u4 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n10
    have u9 : v7 := by
      rcases c2452 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u9 a
      · exact absurd n1 a
    have u11 : ¬v4 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u6
    rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2487 : ¬v3 ∨ ¬v1 ∨ ¬v2 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n5
  have c2488 : ¬v26 ∨ ¬v2 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v1 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v42 := by
      rcases c2481 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
    have u9 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n3
    have u10 : v40 := by
      rcases c2485 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u10 a
      · exact a
    have u19 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u20 : ¬v35 := by
      rcases c2482 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u8
    have u21 : ¬v3 := by
      rcases c2487 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n3
    have u22 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u13
    have u23 : v10 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u13
    have u24 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n3
    have u25 : v32 := by
      rcases c2486 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
    have u26 : ¬v9 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u27 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a n3
    have u29 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u25 a
      · exact a
    have u31 : v5 := by
      rcases c441 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u8
      · exact a
      · exact absurd a u22
      · exact absurd a n3
    rcases c2387 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u21
    · exact absurd u31 a
    · exact absurd u28 a
    · exact absurd a u26
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
  have c2489 : ¬v35 ∨ v28 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1290 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2490 : v41 ∨ ¬v2 ∨ v25 ∨ v28 ∨ v39 ∨ ¬v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v26 := by
      rcases c2488 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n7
    have u5 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u7 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n6
    have u8 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u12 : v27 := by
      rcases c2451 with a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u13 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n4
    have u14 : v23 := by
      rcases c2486 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    rcases c91 with a|a
    · exact absurd u12 a
    · exact absurd u14 a
  have c2491 : ¬v35 ∨ v28 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v36 := by
      rcases c2489 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    rcases c211 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd u3 a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
  have c2492 : v25 ∨ ¬v2 ∨ v28 ∨ v39 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v1 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v26 := by
      rcases c2488 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
    have u3 : ¬v35 := by
      rcases c2491 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u6 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v40 := by
      rcases c2490 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : v6 := by
      rcases c2371 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v4 := by
      rcases c6 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u14 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u6
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
  have c2493 : v41 ∨ ¬v2 ∨ v28 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v35 := by
      rcases c2491 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v1 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u3 : ¬v26 := by
      rcases c2488 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u5 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
    have u6 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : v25 := by
      rcases c2492 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n5
    have u15 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
    have u16 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u20 : v38 := by
      rcases c2269 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u19
      · exact a
      · exact absurd a n3
    have u21 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v6 := by
      rcases c2371 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u22 a
      · exact absurd n1 a
    have u25 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u6
    have u27 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u21
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u17
    have u28 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u27 a
    rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2494 : ¬v25 ∨ v37 ∨ v38 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
    have u7 : ¬v31 := by
      rcases c2269 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c2451 with a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
  have c2495 : ¬v3 ∨ ¬v1 ∨ ¬v2 ∨ v5 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v27 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
    have u6 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n11
      · exact a
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n8
    have u7 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
    have u13 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v48 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact a
    have u18 : ¬v49 := by
      rcases c168 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v41 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a u18
    have u20 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v35 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a u20
      · exact absurd a u18
    have u22 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u21 a
    rcases c280 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u22
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u11
  have c2496 : v42 ∨ ¬v2 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v1 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v26 := by
      rcases c2488 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n4
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v41 := by
      rcases c2493 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u10 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v25 := by
      rcases c2494 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : v27 := by
      rcases c2451 with a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v5 := by
      rcases c2262 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
    have u19 : v35 := by
      rcases c2486 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u20 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v3 := by
      rcases c2495 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
    have u22 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u7
    have u23 : v10 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u7
    have u24 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u6
    have u25 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u23 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u5
  have c2497 : ¬v2 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v1 := by
      rcases c2478 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v26 := by
      rcases c2488 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : v42 := by
      rcases c2496 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n3
    have u14 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n3
    have u15 : v27 := by
      rcases c2368 with a|a|a|a
      · exact absurd u8 a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
    have u16 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v5 := by
      rcases c2262 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
    have u20 : ¬v3 := by
      rcases c2495 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
    have u21 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u5
    have u22 : v10 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u5
    have u23 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u4
    have u24 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u22 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u3
  have c2499 : v23 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c2468 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n12
    have u2 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n12
    have u3 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n12
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n12
    have u5 : ¬v29 := by
      rcases c2477 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v1 := by
      rcases c2455 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n12
    have u7 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u10
    have u13 : v9 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
    have u14 : ¬v10 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v4 := by
      rcases c2152 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u8
    have u17 : v7 := by
      rcases c2335 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u3
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n12
    rcases c1609 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd u6 a
    · exact absurd u17 a
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u7
  have c2500 : v49 ∨ v25 ∨ v28 ∨ v39 ∨ ¬v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
    have u7 : ¬v30 := by
      rcases c2343 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
    have u8 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
    have u9 : v23 := by
      rcases c2499 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
    have u10 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    rcases c2368 with a|a|a|a
    · exact absurd n4 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n0
  have c2501 : ¬v3 ∨ v2 ∨ ¬v5 ∨ ¬v7 ∨ v10 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c32 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n3 a
    · exact absurd u1 a
  have c2502 : v1 ∨ ¬v7 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v39 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
    have u2 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
    have u3 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u6 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n9
    have u18 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd a u16
    have u19 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u15
    have u20 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u15
    have u21 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u11
    have u22 : ¬v3 := by
      rcases c2501 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u21 a
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u23 : v8 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n9
    have u24 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v6 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u11
    have u29 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    rcases c338 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u28
    · exact absurd n1 a
    · exact absurd a u26
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u29
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n9
  have c2503 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v40 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v6 := by
      rcases c495 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n6
    rcases c19 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd u4 a
  have c2504 : ¬v23 ∨ v39 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n4
    have u8 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u9 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n4
    have u10 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n4
    have u12 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : v7 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n4
    have u20 : v1 := by
      rcases c2502 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u21 : ¬v4 := by
      rcases c2503 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
    have u22 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u13
    have u23 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u22 a
      · exact a
    have u28 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u12
    have u29 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u30 : ¬v6 := by
      rcases c2346 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u28 a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
    have u31 : ¬v19 := by
      rcases c928 with a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    rcases c295 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u30
    · exact absurd a u14
    · exact absurd a u29
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u24
    · exact absurd u28 a
    · exact absurd a u2
    · exact absurd a u31
    · exact absurd a u4
    · exact absurd a u23
    · exact absurd a u13
    · exact absurd a u27
  have c2505 : ¬v10 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2506 : v4 ∨ v25 ∨ v28 ∨ v39 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u3 : ¬v23 := by
      rcases c2504 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u6
    have u12 : ¬v10 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u14 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u15 : v30 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    have u16 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v38 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u16
      · exact a
      · exact absurd a u7
    have u19 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u18 a
      · exact a
    rcases c2221 with a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2507 : v49 ∨ v3 ∨ v9 ∨ v10 ∨ v23 ∨ v28 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u2 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n0
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v30 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u10 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v38 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a u5
    have u14 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u13 a
      · exact a
    rcases c2221 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2508 : v3 ∨ ¬v4 ∨ v10 ∨ v23 ∨ v25 ∨ v28 ∨ v35 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v42 := by
      rcases c2500 with a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v9 := by
      rcases c2507 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    have u8 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n8
    have u14 : v5 := by
      rcases c191 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u3
    have u15 : ¬v1 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
    have u16 : ¬v6 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd u13 a
      · exact a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd u13 a
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a n8
  have c2509 : ¬v9 ∨ v1 ∨ ¬v3 ∨ ¬v4 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u5 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd u5 a
      · exact a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n7
  have c2510 : ¬v7 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ v10 ∨ v40 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v5 := by
      rcases c2501 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n8
  have c2511 : v10 ∨ v25 ∨ v28 ∨ v39 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c2500 with a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u2 : v4 := by
      rcases c2506 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v35 := by
      rcases c2491 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
    have u4 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u5 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u7 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v23 := by
      rcases c2504 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v3 := by
      rcases c2508 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
    have u13 : ¬v7 := by
      rcases c2510 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u12 a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
    have u14 : v6 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n6
    have u15 : ¬v1 := by
      rcases c12 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u14 a
      · exact absurd u2 a
    have u16 : ¬v5 := by
      rcases c31 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u14 a
      · exact absurd u2 a
    have u17 : ¬v9 := by
      rcases c2509 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u12 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
    have u18 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
    have u19 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n6
    have u20 : ¬v22 := by
      rcases c1299 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
    have u21 : ¬v29 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : v30 := by
      rcases c2455 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u21
      · exact a
      · exact absurd a n6
    have u23 : v36 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u21
      · exact a
      · exact absurd a u10
    have u24 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u23 a
    rcases c494 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u25
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a u24
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd u23 a
    · exact absurd a n5
  have c2512 : v41 ∨ v25 ∨ v28 ∨ v39 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u2 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v42 := by
      rcases c2500 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u7 : v4 := by
      rcases c2506 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u8 : v10 := by
      rcases c2511 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u9 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v35 := by
      rcases c2491 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n5
    have u15 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n5
    have u16 : ¬v1 := by
      rcases c2503 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u15 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n5
    have u17 : v6 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd u15 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n5
    have u18 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u15 a
      · exact absurd u17 a
    have u19 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u15 a
      · exact absurd u17 a
    rcases c191 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u2
  have c2513 : ¬v23 ∨ v37 ∨ v38 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    rcases c194 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u7
  have c2514 : ¬v30 ∨ v23 ∨ v24 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    rcases c391 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
  have c2515 : v7 ∨ v10 ∨ v23 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v22 := by
      rcases c2468 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u5 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v35 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n10
    have u7 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v1 := by
      rcases c2455 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n10
    rcases c2335 with a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n10
  have c2516 : v40 ∨ v25 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n4
    have u4 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : v41 := by
      rcases c2512 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u11 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v23 := by
      rcases c2513 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u13
    have u17 : ¬v30 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
    have u18 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u7
    have u19 : ¬v10 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u6
    have u21 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u1
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : ¬v22 := by
      rcases c2468 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u24 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u1
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u7
    have u25 : v1 := by
      rcases c2455 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a n4
    have u26 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v7 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd u25 a
      · exact a
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
    rcases c2515 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a n4
  have c2517 : v25 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v40 := by
      rcases c2516 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v23 := by
      rcases c2513 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v30 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u18 : v7 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n3
    have u19 : ¬v10 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u20 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u4
    have u21 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u1
      · exact a
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u22 : ¬v1 := by
      rcases c13 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u18 a
      · exact absurd u20 a
    have u23 : ¬v9 := by
      rcases c2509 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u20 a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n3
    have u24 : v22 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u19
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u5
    have u25 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u24 a
      · exact a
    rcases c2451 with a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a n3
  have c2518 : v10 ∨ v2 ∨ v4 ∨ v24 ∨ ¬v25 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v1 := by
      rcases c2455 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n11
    have u7 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n11
    have u16 : v38 := by
      rcases c2269 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u14
      · exact a
      · exact absurd a u12
    have u17 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u10
    have u18 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u10
    have u19 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u10
    have u20 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
    have u25 : ¬v17 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u26 : v18 := by
      rcases c379 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u24
      · exact absurd a n0
    have u27 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n9
    have u29 : v6 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u28 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u18
    rcases c2346 with a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd u5 a
    · exact absurd u28 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n11
  have c2519 : v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u2 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v25 := by
      rcases c2517 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u6 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
    have u13 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u19 : v38 := by
      rcases c2269 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a n1
    have u20 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v2 := by
      rcases c2497 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u23 : v7 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u22
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n2
    have u24 : v1 := by
      rcases c2455 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n2
    have u25 : ¬v4 := by
      rcases c2503 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u23 a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a n2
    have u26 : v10 := by
      rcases c2518 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n2
    have u27 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v16 := by
      rcases c2095 with a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u27
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u7
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a u29
    · exact absurd a u10
  exact ⟨c2477, c2482, c2483, c2487, c2489, c2501, c2503, c2505, c2510, c2514, c2519⟩
