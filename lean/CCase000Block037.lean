import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1850-1899 of the 2189-step refutation of ccase000: 118 core clauses and 96 earlier-derived ones give 6 more. -/
theorem CCase000_block037
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c74 : ¬v17 ∨ ¬v20)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c103 : v22 ∨ v28 ∨ v23 ∨ v25 ∨ v27 ∨ v26 ∨ v24)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c144 : ¬v40 ∨ ¬v41)
    (c152 : ¬v48 ∨ ¬v43)
    (c157 : ¬v48 ∨ ¬v44)
    (c161 : ¬v48 ∨ ¬v45)
    (c164 : ¬v48 ∨ ¬v46)
    (c166 : ¬v48 ∨ ¬v47)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c191 : ¬v4 ∨ v12 ∨ v5 ∨ v46 ∨ v45 ∨ v3 ∨ v11 ∨ v47)
    (c194 : ¬v31 ∨ v37 ∨ v24 ∨ v38 ∨ v32 ∨ v39 ∨ v25 ∨ v30)
    (c201 : ¬v48 ∨ v6 ∨ v7 ∨ v41 ∨ v42 ∨ v5 ∨ v47 ∨ v49)
    (c211 : v43 ∨ v29 ∨ v30 ∨ v44 ∨ ¬v36 ∨ v37 ∨ v42 ∨ v49)
    (c215 : v3 ∨ ¬v4 ∨ v45 ∨ v5 ∨ v11 ∨ v10 ∨ v46 ∨ v47)
    (c250 : v46 ∨ v6 ∨ ¬v5 ∨ v4 ∨ v13 ∨ v11 ∨ v47 ∨ v12)
    (c283 : ¬v48 ∨ v6 ∨ v47 ∨ v41 ∨ v42 ∨ v7 ∨ v40 ∨ v49)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c338 : v13 ∨ v27 ∨ v2 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v9 ∨ v21 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v49)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c355 : ¬v48 ∨ v33 ∨ v3 ∨ v38 ∨ v5 ∨ v34 ∨ v35 ∨ v41 ∨ v6 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c362 : v43 ∨ v29 ∨ v34 ∨ ¬v7 ∨ v14 ∨ v47 ∨ v12 ∨ v1 ∨ v13 ∨ v35 ∨ v42 ∨ v6 ∨ v5 ∨ v49)
    (c391 : v36 ∨ v29 ∨ v38 ∨ v37 ∨ ¬v30 ∨ v31 ∨ v23 ∨ v24)
    (c447 : v36 ∨ ¬v35 ∨ v42 ∨ v6 ∨ v28 ∨ v27 ∨ v34 ∨ v33 ∨ v7 ∨ v1 ∨ v29 ∨ v26 ∨ v40 ∨ v49)
    (c495 : ¬v48 ∨ v42 ∨ v5 ∨ v47 ∨ v41 ∨ v40 ∨ v6 ∨ v49)
    (c503 : ¬v48 ∨ v6 ∨ v34 ∨ v41 ∨ v26 ∨ v27 ∨ v7 ∨ v1 ∨ v40 ∨ v28 ∨ v36 ∨ v43 ∨ v47 ∨ v49)
    (c531 : v40 ∨ ¬v33 ∨ v27 ∨ v39 ∨ v34 ∨ v32 ∨ v25 ∨ v26)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c700 : ¬v7 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c747 : v16 ∨ ¬v2 ∨ ¬v3 ∨ v7 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1034 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1187 : v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1278 : v25 ∨ v4 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1355 : ¬v32 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1403 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1460 : ¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1499 : v5 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1533 : v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v46 ∨ v47)
    (c1609 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v46 ∨ v47)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1708 : ¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1716 : v3 ∨ v1 ∨ v2 ∨ v8 ∨ v10 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1868 : v7 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1898 : v32 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2045 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44)
    (c2062 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42)
    (c2090 : ¬v9 ∨ v4 ∨ v25 ∨ v26 ∨ v37 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c2095 : v8 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c2130 : v31 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2134 : ¬v31 ∨ v24 ∨ v25 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2140 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2152 : ¬v9 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c2167 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v49)
    (c2205 : ¬v24 ∨ v2 ∨ v9 ∨ v10 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2206 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c2221 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2231 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2239 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v38)
    (c2240 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2241 : v37 ∨ v2 ∨ ¬v28 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2254 : ¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2257 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2269 : ¬v31 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ v39)
    (c2302 : ¬v11 ∨ v1 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2304 : ¬v13 ∨ v1 ∨ v22 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2334 : v48 ∨ v49)
    (c2335 : ¬v1 ∨ v2 ∨ v7 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v49)
    (c2368 : ¬v42 ∨ v26 ∨ v27 ∨ v49)
    (c2371 : v41 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v40 ∨ v42 ∨ v49)
    (c2375 : ¬v38 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2378 : ¬v24 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2387 : ¬v2 ∨ v3 ∨ ¬v5 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : v4 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49)
    (c2400 : ¬v7 ∨ ¬v2 ∨ ¬v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2404 : ¬v29 ∨ v22 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v45)
    (c2410 : v49 ∨ ¬v2 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39)
    (c2411 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47)
    (c2414 : v24 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v31 ∨ v32 ∨ v39 ∨ v49)
    (c2416 : v28 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v29 ∨ v42 ∨ v49)
    (c2417 : ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47)
    : (v1 ∨ ¬v2 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49) ∧ (v31 ∨ v26 ∨ v27 ∨ v39 ∨ v49) ∧ (v25 ∨ ¬v1 ∨ ¬v2 ∨ v7 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v49) ∧ (v1 ∨ v2 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v49) ∧ (¬v24 ∨ v39 ∨ v49) ∧ (v1 ∨ ¬v2 ∨ v23 ∨ v25 ∨ v28 ∨ v35 ∨ v39 ∨ v42 ∨ v49) := by
  have c2418 : v24 ∨ v2 ∨ ¬v4 ∨ v7 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
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
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v28 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
    have u9 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u12 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v37 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u15 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v30 := by
      rcases c2231 with a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u15
    have u19 : v6 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n10
    have u20 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u20
      · exact absurd a u21
    have u23 : ¬v1 := by
      rcases c2417 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u19 a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u24 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u25 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u7
    have u26 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u3
    have u27 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u19 a
      · exact absurd n2 a
    have u28 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u5
    have u29 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u28 a
    rcases c1460 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u23
    · exact absurd a u30
    · exact absurd a u24
    · exact absurd a u29
    · exact absurd a n7
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u11
    · exact absurd a u7
  have c2419 : v35 ∨ v2 ∨ v7 ∨ ¬v22 ∨ v29 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
    have u17 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
    have u18 : ¬v21 := by
      rcases c1708 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
    have u19 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n7
    have u20 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v30 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u22 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v4 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a u12
    have u27 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u28 : ¬v40 := by
      rcases c2411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
    have u29 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u13
    have u30 : v37 := by
      rcases c391 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u27
      · exact a
      · exact absurd u21 a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u2
    have u31 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u28
      · exact absurd a u11
    have u32 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : ¬v6 := by
      rcases c31 with a|a|a|a
      · exact absurd u31 a
      · exact absurd u29 a
      · exact a
      · exact absurd u26 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u33
    · exact absurd a u11
    · exact absurd a u32
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u28
    · exact absurd a n7
  have c2420 : v27 ∨ v7 ∨ v24 ∨ v26 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c2410 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v29 := by
      rcases c2414 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
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
    have u11 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u13 : v22 := by
      rcases c2418 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u14 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v35 := by
      rcases c2419 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
    have u18 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v40 := by
      rcases c2411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
    have u22 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u23 : ¬v10 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u24 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u9
    have u25 : v5 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u6
    have u26 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u8
    have u27 : ¬v1 := by
      rcases c2335 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n7
    have u28 : ¬v6 := by
      rcases c31 with a|a|a|a
      · exact absurd u25 a
      · exact absurd u26 a
      · exact a
      · exact absurd u3 a
    rcases c447 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u17 a
    · exact absurd a u5
    · exact absurd a u28
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u27
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u21
    · exact absurd a n7
  have c2421 : ¬v7 ∨ v2 ∨ ¬v4 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ ¬v35 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v40 := by
      rcases c2411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n13
    have u8 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n13
    have u9 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n16
    have u10 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n14
    rcases c32 with a|a|a|a
    · exact absurd u9 a
    · exact absurd u10 a
    · exact absurd n0 a
    · exact absurd n2 a
  have c2422 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
  have c2423 : v25 ∨ v1 ∨ v3 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v7 := by
      rcases c2420 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n11
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
    have u9 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u6
    have u11 : v5 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v6 := by
      rcases c35 with a|a|a|a
      · exact absurd u2 a
      · exact absurd u11 a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v33 := by
      rcases c2422 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u6
    have u15 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u14 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd u1 a
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a n11
  have c2424 : v25 ∨ v1 ∨ v3 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v2 := by
      rcases c2410 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v29 := by
      rcases c2414 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
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
    have u8 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
    have u10 : v40 := by
      rcases c2423 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact a
      · exact absurd a n10
    have u11 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c391 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v10 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u5
    rcases c2240 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2425 : v37 ∨ v1 ∨ v2 ∨ ¬v22 ∨ v24 ∨ v27 ∨ v29 ∨ v31 ∨ v35 ∨ v38 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u6 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n10
    have u7 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
    have u12 : ¬v30 := by
      rcases c391 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n4
    have u13 : v7 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n10
    have u14 : ¬v10 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u8
    have u16 : v9 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u17 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd u15 a
      · exact absurd u17 a
      · exact absurd u13 a
      · exact a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u21
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd u13 a
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a n10
  have c2426 : v49 ∨ v1 ∨ ¬v22 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v2 := by
      rcases c2410 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v7 := by
      rcases c2420 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : ¬v29 := by
      rcases c2414 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u6 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n0
    have u8 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u9 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v3 := by
      rcases c2424 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u16 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd u15 a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v5 := by
      rcases c32 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u4 a
      · exact absurd u6 a
    have u18 : ¬v35 := by
      rcases c2421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u19 : v37 := by
      rcases c2425 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n0
    have u20 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u19 a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a n0
  have c2427 : v24 ∨ ¬v22 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v7 := by
      rcases c2420 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u6 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : v1 := by
      rcases c2426 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u4 a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u4 a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u12
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u8
    rcases c625 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd u4 a
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2428 : v24 ∨ ¬v1 ∨ v2 ∨ ¬v4 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v9 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v16 := by
      rcases c2095 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u9 : v33 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a n11
    have u10 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n10
    · exact absurd a u8
    · exact absurd a n6
  have c2429 : v49 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c2410 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v29 := by
      rcases c2414 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n0
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
    have u10 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    have u12 : ¬v22 := by
      rcases c2427 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u13 : v7 := by
      rcases c2420 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u14 : ¬v1 := by
      rcases c2428 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    have u16 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u9
    have u17 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    have u18 : v37 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a u8
    have u19 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u19
    have u22 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u5
    have u23 : ¬v3 := by
      rcases c32 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u13 a
      · exact absurd u3 a
    have u24 : ¬v6 := by
      rcases c35 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u22 a
      · exact absurd u13 a
      · exact a
    have u25 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u7
    have u26 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u25 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a u27
    · exact absurd u13 a
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd a n0
  have c2430 : v1 ∨ v5 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v39 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v47 := by
      rcases c166 with a|a
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
    have u5 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u6 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
    have u7 : v33 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a u2
    have u8 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u7 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u7 a
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
  have c2431 : v1 ∨ ¬v3 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c2410 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v29 := by
      rcases c2414 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v23 := by
      rcases c2429 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
    have u5 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u7 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v7 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n8
    have u14 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u15 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u16 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v5 := by
      rcases c32 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact absurd u5 a
    have u18 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u12
    have u19 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u4
    have u20 : v40 := by
      rcases c2430 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u21 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u4
    have u23 : v14 := by
      rcases c362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd u13 a
      · exact a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n8
    have u24 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u23 a
    rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n8
  have c2432 : v27 ∨ v1 ∨ v24 ∨ v26 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c2410 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v29 := by
      rcases c2414 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v23 := by
      rcases c2429 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u3 a
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
    have u12 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v3 := by
      rcases c2431 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u15 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u11
    have u16 : v9 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u13
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v8 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    rcases c40 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c2433 : v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
    have u2 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
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
    have u8 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v2 := by
      rcases c2410 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v29 := by
      rcases c2414 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v1 := by
      rcases c2432 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v23 := by
      rcases c2429 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v7 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n6
    have u17 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u2 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u2 a
      · exact absurd u16 a
      · exact a
    have u19 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u20 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u19 a
      · exact a
    rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2434 : v12 ∨ v2 ∨ v5 ∨ v9 ∨ v10 ∨ ¬v24 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
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
    have u10 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : v30 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u12 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v40 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u12
      · exact a
      · exact absurd a u5
    rcases c2411 with a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n9
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u5
  have c2435 : v9 ∨ v3 ∨ ¬v4 ∨ v5 ∨ ¬v7 ∨ ¬v24 ∨ v27 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n9
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
    have u5 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v2 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u8 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u9 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : v29 := by
      rcases c2434 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v37 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c1917 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2436 : ¬v5 ∨ ¬v1 ∨ ¬v4 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v6 := by
      rcases c17 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u5 : v29 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
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
    have u11 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v36 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u16 : ¬v40 := by
      rcases c2411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a n7
  have c2437 : v7 ∨ ¬v1 ∨ v2 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v29 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u17 : v36 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u19 : ¬v40 := by
      rcases c2411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v6 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a n7
    have u22 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n7
    have u23 : v14 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v24 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u26 : v3 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u27 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    rcases c12 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u26 a
    · exact absurd u21 a
    · exact absurd u27 a
  have c2438 : ¬v7 ∨ ¬v1 ∨ ¬v4 ∨ v5 ∨ ¬v24 ∨ v27 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
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
    have u5 : v9 := by
      rcases c2435 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1609 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u3
  have c2439 : ¬v1 ∨ ¬v4 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
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
    have u10 : ¬v5 := by
      rcases c2436 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
    have u11 : ¬v7 := by
      rcases c2438 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v2 := by
      rcases c2437 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
    have u13 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u12 a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v6 := by
      rcases c6 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u12 a
      · exact a
      · exact absurd n1 a
    have u15 : v41 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n7
    have u16 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u3
    have u19 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a n7
    have u20 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a n7
    rcases c215 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u5
  have c2440 : ¬v9 ∨ v7 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v49 := by
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
    have u3 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u4 : v35 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n7
    have u5 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v41 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact a
      · exact absurd a u3
    have u7 : v36 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact a
      · exact absurd a u3
    rcases c130 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2441 : v2 ∨ v7 ∨ ¬v24 ∨ v27 ∨ v31 ∨ v32 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v9 := by
      rcases c2440 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u6 : v29 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : v36 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u14 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u13 a
    rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c2442 : v7 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
    have u3 : v24 := by
      rcases c2433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u5 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v1 := by
      rcases c2439 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u8 : ¬v47 := by
      rcases c166 with a|a
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
    have u12 : ¬v9 := by
      rcases c2440 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
    have u13 : v2 := by
      rcases c2441 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
    have u14 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd u13 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
      · exact absurd u1 a
    have u17 : v41 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u16
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n6
    have u18 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u21 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u2
    have u22 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u20 a
      · exact a
    rcases c2257 with a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a n6
  have c2443 : v9 ∨ v1 ∨ v2 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
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
    have u9 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
    have u11 : v7 := by
      rcases c2442 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
    have u12 : v8 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u13 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u2
    have u18 : v6 := by
      rcases c338 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u19 : ¬v5 := by
      rcases c35 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u11 a
      · exact absurd u18 a
    have u20 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact absurd u18 a
    rcases c191 with a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u4
  have c2444 : v32 ∨ v26 ∨ v27 ∨ v31 ∨ v39 ∨ v49 := by
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
    have u5 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v24 := by
      rcases c2433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v7 := by
      rcases c2442 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v2 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u14 : ¬v1 := by
      rcases c2439 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
    have u15 : v9 := by
      rcases c2443 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
    have u16 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : v29 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
    have u23 : v6 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd u12 a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n5
    have u24 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a n1
    have u25 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : v40 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd u23 a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    rcases c2411 with a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
  have c2445 : v2 ∨ v22 ∨ v26 ∨ v27 ∨ v31 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u2 : v32 := by
      rcases c2444 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v28 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u17 : v25 := by
      rcases c1355 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u18 : v7 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n6
    have u19 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u12
    have u22 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u12
    have u23 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u12
    have u24 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v1 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u26 : v3 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u27 : ¬v4 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u18 a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u9
    rcases c1029 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c2446 : ¬v2 ∨ ¬v1 ∨ ¬v9 ∨ v22 ∨ v26 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
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
    have u11 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
    have u12 : v25 := by
      rcases c2090 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v3 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u18 : v7 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    rcases c4 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u17 a
    · exact absurd u18 a
    · exact absurd n0 a
  have c2447 : ¬v9 ∨ ¬v2 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n12
    have u2 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v1 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n12
    rcases c2446 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2448 : v1 ∨ ¬v2 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u2 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v8 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u8 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v7 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u11 a
      · exact absurd n1 a
    rcases c362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd u11 a
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n10
  have c2449 : ¬v7 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v32 := by
      rcases c2444 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v25 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n5
    have u17 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v2 := by
      rcases c2445 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v9 := by
      rcases c2447 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
    have u22 : ¬v6 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n0 a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u23 : v1 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n6
    have u24 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd n0 a
      · exact absurd u20 a
    have u25 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n6
    have u26 : ¬v5 := by
      rcases c2387 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u24
      · exact a
      · exact absurd n0 a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u27 : v41 := by
      rcases c355 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u28 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u28
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u4
    have u30 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u28
      · exact absurd a u9
    have u31 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a u30
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u11
    have u34 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u33 a
    rcases c288 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd u29 a
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a n2
    · exact absurd a u35
    · exact absurd a n3
    · exact absurd a u34
  have c2450 : v24 ∨ v26 ∨ v27 ∨ v31 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v32 := by
      rcases c2444 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u4 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v25 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n4
    have u17 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v7 := by
      rcases c2449 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n5
    have u22 : v2 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n5
    have u23 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n5
    have u24 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n5
    have u25 : ¬v9 := by
      rcases c2447 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
    have u26 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u11
    have u27 : v1 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n5
    have u28 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd u27 a
      · exact absurd u26 a
      · exact a
      · exact absurd u22 a
    have u29 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u26 a
      · exact absurd u22 a
    have u30 : v41 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u28
      · exact absurd a u20
      · exact a
      · exact absurd a u2
      · exact absurd a u29
      · exact absurd a u9
      · exact absurd a n5
    have u31 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u31
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u4
    have u33 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u32 a
      · exact a
    have u35 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u32 a
    have u36 : v13 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd u32 a
      · exact absurd a u33
      · exact absurd a u34
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a n2
      · exact a
    have u37 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u35
      · exact absurd a n5
    rcases c60 with a|a
    · exact absurd u37 a
    · exact absurd u36 a
  have c2451 : v31 ∨ v26 ∨ v27 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u8 : v24 := by
      rcases c2450 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v32 := by
      rcases c2444 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v38 := by
      rcases c1355 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u17 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    rcases c2221 with a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
  have c2452 : v25 ∨ ¬v1 ∨ ¬v2 ∨ v7 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n9
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
    rcases c1533 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u7 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
  have c2453 : v25 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v26 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v7 := by
      rcases c2452 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n13
    have u3 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v40 := by
      rcases c2411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v4 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u11 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u5
    have u12 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u5
    have u13 : ¬v5 := by
      rcases c2387 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u3
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u14 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n7
    have u15 : v27 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u4
    have u16 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u14 a
    rcases c190 with a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n9
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
  have c2454 : v22 ∨ ¬v2 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v38 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n9
    have u4 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v1 := by
      rcases c2453 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
    have u12 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n9
    rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd n1 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a n9
  have c2455 : v1 ∨ v2 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
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
    have u5 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u7 : v10 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
    have u8 : v36 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u4
    have u9 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u8 a
    rcases c211 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd u8 a
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n7
  have c2456 : v2 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u3 : v24 := by
      rcases c103 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact a
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u5 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : v7 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n8
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
    have u16 : ¬v40 := by
      rcases c2411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u18 : v1 := by
      rcases c2455 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u19 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u14
    have u20 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u14
    have u21 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u11
    have u22 : ¬v6 := by
      rcases c20 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u21 a
      · exact absurd u10 a
      · exact a
    have u23 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u10 a
      · exact absurd u21 a
    have u24 : v11 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u19
    have u25 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u12
    have u26 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u24 a
      · exact a
    rcases c2205 with a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
  have c2457 : ¬v1 ∨ ¬v2 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v6 := by
      rcases c2371 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v7 := by
      rcases c2452 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    rcases c10 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2458 : ¬v24 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u8 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
    have u10 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u8 a
      · exact a
    have u19 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u8 a
      · exact a
    have u20 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u8 a
      · exact a
    have u21 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n2
    have u23 : v2 := by
      rcases c2456 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
    have u24 : ¬v40 := by
      rcases c2411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
    have u25 : v38 := by
      rcases c2454 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u23 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u26 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v1 := by
      rcases c2457 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a n2
    have u28 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u14
    rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd u23 a
    · exact absurd a u28
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u9
    · exact absurd a n2
  have c2459 : v23 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v22 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n13
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n13
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
    have u8 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u10 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u11 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u4
    have u12 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u11 a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v41 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a n12
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n13
    have u17 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u7
    have u19 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v16 := by
      rcases c1499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd u18 a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u10
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u22 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u21 a
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a n12
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a u22
    · exact absurd a n13
  have c2460 : v42 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n12
    have u3 : v27 := by
      rcases c103 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u1
    have u4 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v29 := by
      rcases c2459 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u11 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v36 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n10
    have u19 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a u18
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u14
    have u22 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : v7 := by
      rcases c747 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd n2 a
      · exact absurd u9 a
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n12
    have u26 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u9 a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u25 a
      · exact absurd n2 a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u4
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a n12
  have c2461 : v41 ∨ ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ v26 ∨ v27 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n1 a
    have u3 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u4 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u6 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u13 : v40 := by
      rcases c495 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n8
    have u14 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v23 := by
      rcases c2269 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n6
    have u16 : v25 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c89 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c2462 : v25 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v23 ∨ v26 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n11
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
    have u8 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u9 : v22 := by
      rcases c2460 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u10 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n11
    have u12 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
    have u17 : v38 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u15
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u12
    have u18 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v7 := by
      rcases c2461 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u23 : v6 := by
      rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n11
    have u24 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u25 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
    rcases c22 with a|a|a|a
    · exact absurd n2 a
    · exact absurd u8 a
    · exact absurd u23 a
    · exact absurd u25 a
  have c2463 : v28 ∨ v1 ∨ ¬v2 ∨ v7 ∨ v9 ∨ v23 ∨ v25 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v26 := by
      rcases c2462 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n11
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n11
    have u6 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u9
    have u16 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u15 a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    have u18 : v41 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u16
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a n11
    have u19 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u21 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u12
    have u22 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
    have u23 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u21 a
      · exact a
    rcases c2257 with a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
  have c2464 : v4 ∨ v1 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ v29 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n9
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
    have u8 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u9 : v12 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : v36 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a u7
    have u11 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v30 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n9
    rcases c2239 with a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u13
    · exact absurd a u12
  have c2465 : v42 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v23 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
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
    have u5 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : v26 := by
      rcases c2462 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u9 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v7 := by
      rcases c2463 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u11 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v4 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u13 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u10 a
      · exact absurd n2 a
    have u14 : v29 := by
      rcases c2464 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u15 : v36 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u15 a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a n10
  have c2466 : ¬v2 ∨ v1 ∨ v23 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n9
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
    have u5 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v9 := by
      rcases c2465 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u7 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v4 := by
      rcases c2152 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
    have u11 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    rcases c2400 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd n0 a
    · exact absurd u10 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
  have c2467 : v1 ∨ ¬v2 ∨ v23 ∨ v25 ∨ v28 ∨ v35 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c2458 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
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
    have u7 : v32 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u5
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v26 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n6
    have u16 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u6
    rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
  exact ⟨c2448, c2451, c2452, c2455, c2458, c2467⟩
