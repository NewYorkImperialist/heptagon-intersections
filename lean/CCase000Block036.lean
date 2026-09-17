import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1800-1849 of the 2189-step refutation of ccase000: 120 core clauses and 86 earlier-derived ones give 15 more. -/
theorem CCase000_block036
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
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
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c63 : ¬v15 ∨ ¬v18)
    (c67 : ¬v16 ∨ ¬v17)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
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
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c201 : ¬v48 ∨ v6 ∨ v7 ∨ v41 ∨ v42 ∨ v5 ∨ v47 ∨ v49)
    (c220 : ¬v28 ∨ v35 ∨ v20 ∨ v27 ∨ v22 ∨ v34 ∨ v21 ∨ v15)
    (c250 : v46 ∨ v6 ∨ ¬v5 ∨ v4 ∨ v13 ∨ v11 ∨ v47 ∨ v12)
    (c254 : ¬v40 ∨ v41 ∨ v33 ∨ v46 ∨ v34 ∨ v47 ∨ v32 ∨ v39)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c276 : v15 ∨ v7 ∨ v20 ∨ v6 ∨ v21 ∨ v8 ∨ ¬v14 ∨ v13)
    (c283 : ¬v48 ∨ v6 ∨ v47 ∨ v41 ∨ v42 ∨ v7 ∨ v40 ∨ v49)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c295 : v47 ∨ v6 ∨ v45 ∨ v3 ∨ v4 ∨ v26 ∨ v12 ∨ ¬v5 ∨ v25 ∨ v19 ∨ v27 ∨ v13 ∨ v46 ∨ v10)
    (c332 : v4 ∨ v7 ∨ v3 ∨ v12 ∨ v45 ∨ v18 ∨ v47 ∨ v19 ∨ v21 ∨ v10 ∨ ¬v11 ∨ v14 ∨ v46 ∨ v13)
    (c333 : v3 ∨ v10 ∨ v19 ∨ v5 ∨ v4 ∨ v18 ∨ v12 ∨ ¬v11)
    (c347 : v20 ∨ v5 ∨ v4 ∨ v6 ∨ v13 ∨ ¬v12 ∨ v19 ∨ v11)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c362 : v43 ∨ v29 ∨ v34 ∨ ¬v7 ∨ v14 ∨ v47 ∨ v12 ∨ v1 ∨ v13 ∨ v35 ∨ v42 ∨ v6 ∨ v5 ∨ v49)
    (c372 : v4 ∨ v7 ∨ v46 ∨ v6 ∨ v12 ∨ v47 ∨ v34 ∨ v32 ∨ v40 ∨ v14 ∨ v33 ∨ v13 ∨ ¬v5 ∨ v49)
    (c434 : v15 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ v8)
    (c447 : v36 ∨ ¬v35 ∨ v42 ∨ v6 ∨ v28 ∨ v27 ∨ v34 ∨ v33 ∨ v7 ∨ v1 ∨ v29 ∨ v26 ∨ v40 ∨ v49)
    (c450 : v26 ∨ ¬v25 ∨ v18 ∨ v32 ∨ v31 ∨ v19 ∨ v24 ∨ v17)
    (c472 : v12 ∨ v18 ∨ v4 ∨ v19 ∨ v17 ∨ v5 ∨ v10 ∨ ¬v11)
    (c495 : ¬v48 ∨ v42 ∨ v5 ∨ v47 ∨ v41 ∨ v40 ∨ v6 ∨ v49)
    (c504 : v19 ∨ v32 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v17 ∨ ¬v10 ∨ v11 ∨ v9 ∨ v24 ∨ v30 ∨ v31 ∨ v16)
    (c528 : ¬v25 ∨ v19 ∨ v45 ∨ v31 ∨ v32 ∨ v27 ∨ v18 ∨ v24 ∨ v26 ∨ v39 ∨ v34 ∨ v20 ∨ v46 ∨ v47)
    (c531 : v40 ∨ ¬v33 ∨ v27 ∨ v39 ∨ v34 ∨ v32 ∨ v25 ∨ v26)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c928 : ¬v19 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1010 : v4 ∨ v2 ∨ ¬v3 ∨ ¬v11 ∨ v44 ∨ v45 ∨ v46)
    (c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32)
    (c1027 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1034 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1058 : v27 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1128 : ¬v12 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v31 ∨ v36 ∨ v38 ∨ v43 ∨ v45)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1187 : v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1279 : v20 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1400 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c1404 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1460 : ¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1533 : v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v46 ∨ v47)
    (c1696 : ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v49)
    (c1703 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1708 : ¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1723 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1806 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v26 ∨ v27)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1868 : v7 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c1883 : v37 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v36 ∨ v42 ∨ v43)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1898 : v32 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c1913 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1952 : v32 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45)
    (c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2062 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42)
    (c2095 : v8 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c2130 : v31 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2148 : v10 ∨ v2 ∨ v4 ∨ v9 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2152 : ¬v9 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c2167 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v49)
    (c2205 : ¬v24 ∨ v2 ∨ v9 ∨ v10 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2221 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2231 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2241 : v37 ∨ v2 ∨ ¬v28 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2254 : ¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2257 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2302 : ¬v11 ∨ v1 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2304 : ¬v13 ∨ v1 ∨ v22 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2311 : ¬v29 ∨ v22 ∨ v36 ∨ v37 ∨ v42)
    (c2326 : v24 ∨ v48 ∨ v49)
    (c2334 : v48 ∨ v49)
    (c2337 : ¬v31 ∨ ¬v42 ∨ v49)
    (c2340 : ¬v32 ∨ ¬v42 ∨ v49)
    (c2343 : ¬v30 ∨ ¬v42 ∨ v49)
    (c2346 : ¬v6 ∨ ¬v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49)
    (c2347 : ¬v1 ∨ v26 ∨ v27 ∨ v39 ∨ ¬v42 ∨ v49)
    (c2351 : ¬v7 ∨ v1 ∨ ¬v4 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v49)
    (c2357 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c2360 : ¬v4 ∨ v1 ∨ v26 ∨ v27 ∨ v33 ∨ ¬v42 ∨ v49)
    (c2366 : ¬v3 ∨ v1 ∨ v4 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v49)
    (c2367 : v2 ∨ v3 ∨ v4 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    : (¬v42 ∨ v26 ∨ v27 ∨ v49) ∧ (¬v6 ∨ ¬v1 ∨ ¬v2 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v41 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v40 ∨ v42 ∨ v49) ∧ (¬v38 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v24 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (¬v2 ∨ v3 ∨ ¬v5 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v24 ∨ v4 ∨ v11 ∨ v30 ∨ v31 ∨ v32 ∨ v45 ∨ v46 ∨ v47) ∧ (v4 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49) ∧ (¬v7 ∨ ¬v2 ∨ ¬v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v29 ∨ v22 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v45) ∧ (v49 ∨ ¬v2 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39) ∧ (¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47) ∧ (v24 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v31 ∨ v32 ∨ v39 ∨ v49) ∧ (v28 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v29 ∨ v42 ∨ v49) ∧ (¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47) := by
  have c2368 : ¬v42 ∨ v26 ∨ v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u6 : ¬v31 := by
      rcases c2337 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    have u7 : ¬v30 := by
      rcases c2343 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    have u8 : ¬v32 := by
      rcases c2340 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
    have u9 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n3
    have u10 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u11 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v1 := by
      rcases c2347 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n3
    have u16 : ¬v4 := by
      rcases c2360 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a n3
    have u17 : ¬v3 := by
      rcases c2366 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
    have u18 : v2 := by
      rcases c2367 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u20 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v17 := by
      rcases c2357 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u12
    have u23 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u11
    rcases c72 with a|a
    · exact absurd u22 a
    · exact absurd u23 a
  have c2369 : v3 ∨ v4 ∨ ¬v9 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v25 := by
      rcases c2152 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
    have u2 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u1 a
      · exact a
    rcases c2254 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2370 : ¬v6 ∨ ¬v1 ∨ ¬v2 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v4 := by
      rcases c6 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c3 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v24 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
    have u10 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
    have u11 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u10 a
    rcases c1400 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c2371 : v41 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u2 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v5 := by
      rcases c495 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
    have u4 : v7 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    rcases c9 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2372 : v4 ∨ v3 ∨ ¬v12 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v24 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
    have u5 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u4 a
    rcases c824 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
  have c2373 : v7 ∨ v4 ∨ ¬v5 ∨ v6 ∨ v11 ∨ v12 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v13 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n5
    have u3 : v48 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact a
    have u4 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v49 := by
      rcases c168 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
    have u16 : v35 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u7
    have u17 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v36 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u17
      · exact a
      · exact absurd a u15
    rcases c1838 with a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
  have c2374 : v49 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n0
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
    have u8 : ¬v12 := by
      rcases c2372 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v9 := by
      rcases c2369 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v1 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u3
    have u12 : ¬v7 := by
      rcases c9 with a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v6 := by
      rcases c2370 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u14 : v11 := by
      rcases c2373 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a u13
      · exact a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v34 := by
      rcases c372 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd u11 a
      · exact absurd a n0
    have u19 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v24 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : v28 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u14 a
      · exact a
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a n0
    rcases c96 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  have c2375 : ¬v38 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2221 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2376 : v4 ∨ v2 ∨ v3 ∨ ¬v5 ∨ v9 ∨ ¬v11 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n12
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
    have u10 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : v24 := by
      rcases c2148 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v19 := by
      rcases c928 with a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v6 := by
      rcases c295 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd n3 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u4
    have u18 : ¬v1 := by
      rcases c2346 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n12
    have u19 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n12
    have u20 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c2205 with a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c2377 : v31 ∨ v3 ∨ v4 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v49 := by
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
    have u6 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : ¬v2 := by
      rcases c2374 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v9 := by
      rcases c2369 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v12 := by
      rcases c2372 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
    have u10 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
    have u11 : ¬v11 := by
      rcases c2376 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u12 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v10 := by
      rcases c1313 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
    have u15 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
    have u16 : v24 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u4
    rcases c93 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c2378 : ¬v24 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u4 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2379 : v2 ∨ ¬v3 ∨ v4 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v26 ∨ v32 ∨ v39 ∨ v49 := by
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
    have u7 : v10 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u8 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v6 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
    have u12 : ¬v1 := by
      rcases c14 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd u11 a
    have u13 : ¬v24 := by
      rcases c2378 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u14 : v25 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u13
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
    have u15 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v16 := by
      rcases c2095 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u13
    have u19 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u20 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u18
    · exact absurd a u16
  have c2380 : v11 ∨ v4 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v3 := by
      rcases c2377 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u3 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n10
    have u4 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
    have u8 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
    have u9 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v2 := by
      rcases c2379 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u11 : ¬v6 := by
      rcases c24 with a|a|a|a
      · exact absurd u10 a
      · exact absurd u7 a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v1 := by
      rcases c2 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u1 a
      · exact absurd u10 a
    have u13 : ¬v7 := by
      rcases c25 with a|a|a|a
      · exact absurd u7 a
      · exact absurd u1 a
      · exact a
      · exact absurd u10 a
    have u14 : v13 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
    have u15 : v41 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u5
    have u21 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u20 a
      · exact a
    rcases c1883 with a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u6
  have c2381 : ¬v5 ∨ ¬v2 ∨ ¬v3 ∨ ¬v12 ∨ v22 ∨ v28 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c25 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c2 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u8 : v35 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u8 a
    rcases c2167 with a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n7
  have c2382 : v49 ∨ v4 ∨ v11 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v3 := by
      rcases c2377 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n0
    have u3 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
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
    have u9 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
    have u10 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v12 := by
      rcases c2380 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u15 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v25 := by
      rcases c1400 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u21 : v2 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v5 := by
      rcases c2381 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u1 a
      · exact absurd u14 a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a n0
    have u25 : v6 := by
      rcases c347 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a n1
      · exact a
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a n2
    have u26 : ¬v1 := by
      rcases c2370 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u21 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u27 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd u21 a
      · exact absurd u1 a
      · exact a
      · exact absurd u25 a
    have u28 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    have u29 : v35 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u23
      · exact a
      · exact absurd a u3
      · exact absurd a n0
    rcases c109 with a|a
    · exact absurd u28 a
    · exact absurd u29 a
  have c2383 : v49 ∨ v4 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n0
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
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
    have u8 : v11 := by
      rcases c2382 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u3
    have u14 : v3 := by
      rcases c2377 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u15 : v2 := by
      rcases c1010 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u14 a
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v7 := by
      rcases c25 with a|a|a|a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v1 := by
      rcases c2 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact absurd u15 a
    have u18 : ¬v6 := by
      rcases c24 with a|a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact absurd u14 a
      · exact a
    have u19 : v34 := by
      rcases c372 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd u13 a
      · exact absurd a n0
    have u20 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v28 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a n0
    have u23 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u22 a
      · exact a
    rcases c2302 with a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n0
  have c2384 : v27 ∨ v4 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
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
    have u8 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : v40 := by
      rcases c2383 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u10 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v34 := by
      rcases c254 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
    have u13 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v28 := by
      rcases c938 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u2
    have u15 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v2 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u20 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
    have u21 : v1 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u22 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u20 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u5
    have u23 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd u21 a
      · exact absurd u22 a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd u21 a
      · exact absurd u22 a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u22 a
      · exact absurd u19 a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u25
    · exact absurd a u3
    · exact absurd a n7
  have c2385 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v4 ∨ v12 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v16 := by
      rcases c2095 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u12 : ¬v19 := by
      rcases c928 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v20 := by
      rcases c1806 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v1 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u3
    have u16 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u17 : v17 := by
      rcases c472 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd n0 a
    have u18 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u17 a
    rcases c220 with a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n10
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a u18
    · exact absurd a u15
  have c2386 : ¬v3 ∨ v4 ∨ ¬v11 ∨ v12 ∨ v26 ∨ v27 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n10
    have u6 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n4
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
    have u11 : v2 := by
      rcases c1010 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v28 := by
      rcases c2385 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u11 a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u10
    have u13 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n10
    have u14 : ¬v6 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u13 a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u15 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact absurd u11 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd u13 a
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a n10
  have c2387 : ¬v2 ∨ v3 ∨ ¬v5 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v1 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c9 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n3 a
    · exact absurd n2 a
  have c2388 : v30 ∨ v4 ∨ ¬v11 ∨ v12 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n12
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
    have u10 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v3 := by
      rcases c2386 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v17 := by
      rcases c2357 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u8
    have u15 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v5 := by
      rcases c333 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd n2 a
    have u19 : v7 := by
      rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u1
    have u20 : ¬v2 := by
      rcases c2387 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u18 a
      · exact absurd u19 a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v24 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c954 with a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u20
    · exact absurd a u2
    · exact absurd a u21
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u9
  have c2389 : v3 ∨ v4 ∨ v12 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u3 : v33 := by
      rcases c2384 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u16 : ¬v11 := by
      rcases c2388 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n9
    have u17 : v25 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
    have u18 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v9 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u22 : v2 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
    have u23 : v10 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u6
    have u24 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n9
    have u27 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u20
    have u28 : ¬v16 := by
      rcases c2095 with a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u21
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n3
    have u29 : ¬v5 := by
      rcases c2387 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n0
      · exact a
      · exact absurd u26 a
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u30 : v18 := by
      rcases c1279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u24
      · exact a
      · exact absurd a n3
      · exact absurd u17 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u31 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u30 a
    rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u29
    · exact absurd a n2
    · exact absurd a u32
    · exact absurd u23 a
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u28
  have c2390 : ¬v24 ∨ v4 ∨ v11 ∨ v30 ∨ v31 ∨ v32 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v18 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1012 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2391 : ¬v25 ∨ ¬v17 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    rcases c528 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
  have c2392 : ¬v3 ∨ v11 ∨ v12 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v36 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n15
    have u5 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n15
    have u6 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a u5
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
    have u12 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v17 := by
      rcases c2391 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u14 : v19 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a u13
    have u15 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v13 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n7
      · exact a
    have u18 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v2 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u10
    have u20 : v1 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n15
    have u21 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n15
    rcases c4 with a|a|a|a
    · exact absurd u20 a
    · exact absurd n0 a
    · exact absurd u21 a
    · exact absurd u19 a
  have c2393 : v12 ∨ ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n1 a
    have u4 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n13
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u9 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u10 : v8 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n13
    have u11 : v14 := by
      rcases c362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n3 a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n13
    rcases c45 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2394 : ¬v2 ∨ ¬v3 ∨ v4 ∨ v12 ∨ ¬v18 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n16
    have u3 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v7 := by
      rcases c2393 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n16
    have u8 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v1 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a u3
    have u12 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd u7 a
    · exact absurd a u8
  have c2395 : v31 ∨ v4 ∨ v12 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v33 := by
      rcases c2384 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u3 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u4 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u15 : ¬v11 := by
      rcases c2388 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n7
    have u16 : ¬v24 := by
      rcases c2390 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v25 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u16
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
    have u18 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v3 := by
      rcases c2389 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v18 := by
      rcases c2392 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u15
      · exact absurd a n2
      · exact a
      · exact absurd a u16
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v2 := by
      rcases c2394 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u22 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
    have u24 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
    rcases c1029 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a u24
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2396 : v4 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
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
    have u8 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : v12 := by
      rcases c2395 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v33 := by
      rcases c2384 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v24 := by
      rcases c2390 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u19 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
    have u20 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u5
    have u21 : v25 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
    have u22 : v2 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u23 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v1 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u22 a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n6
    rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u26
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a u25
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n6
  have c2397 : v28 ∨ ¬v2 ∨ ¬v4 ∨ v12 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ ¬v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n11
    have u4 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u12 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : v22 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u4
    have u14 : v41 := by
      rcases c1290 with a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u11
      · exact a
      · exact absurd a u4
    have u15 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v5 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u5
    have u17 : ¬v6 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact absurd n2 a
    have u19 : v7 := by
      rcases c447 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n10 a
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u1
      · exact a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n11
    rcases c2351 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u18
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a n11
  have c2398 : v28 ∨ ¬v2 ∨ ¬v4 ∨ v7 ∨ v21 ∨ v26 ∨ v27 ∨ v35 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u2 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
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
    have u6 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n8
    have u7 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
    have u8 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
    have u9 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u12 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    rcases c1696 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n8
  have c2399 : v24 ∨ ¬v2 ∨ ¬v4 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n12
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
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n12
    have u11 : ¬v35 := by
      rcases c2397 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
    have u12 : ¬v21 := by
      rcases c1708 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n12
    have u13 : v7 := by
      rcases c2398 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n12
    have u14 : ¬v3 := by
      rcases c23 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact absurd n2 a
    have u15 : v11 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c1097 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u14
    · exact absurd u15 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u6
  have c2400 : ¬v7 ∨ ¬v2 ∨ ¬v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c23 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : v11 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v1 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
    rcases c7 with a|a|a|a
    · exact absurd u6 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c2401 : v27 ∨ ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n9
    have u6 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
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
    have u12 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : v35 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a n9
    have u14 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n9
    have u17 : ¬v22 := by
      rcases c2399 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a n9
    rcases c2062 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u6
  have c2402 : v24 ∨ ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v28 := by
      rcases c2401 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
    have u5 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u6 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u16 : v3 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u17 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
      · exact absurd n2 a
    have u18 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact absurd n2 a
    have u20 : v41 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n8
    have u21 : v29 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n8
    have u22 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u20 a
      · exact a
    rcases c2311 with a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u6
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u5
  have c2403 : ¬v36 ∨ v6 ∨ v7 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n3
    have u5 : v47 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
    rcases c166 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2404 : ¬v29 ∨ v22 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c2311 with a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
  have c2405 : v24 ∨ ¬v2 ∨ ¬v3 ∨ v12 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n10
    have u2 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u4 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u8 : v41 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n10
    have u9 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v33 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a u4
    have u11 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u10 a
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u10 a
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n5
  have c2406 : ¬v2 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
    have u5 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
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
    have u12 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v11 := by
      rcases c2402 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u15 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : ¬v36 := by
      rcases c2403 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n8
    have u17 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u18 : ¬v12 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u19 : ¬v3 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v5 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u5 a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v9 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u22 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u20 a
      · exact absurd u5 a
    rcases c1887 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2407 : v26 ∨ ¬v2 ∨ v22 ∨ v24 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v28 := by
      rcases c2406 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n9
    have u3 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n9
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v11 := by
      rcases c2401 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u11 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
    have u13 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u4
    have u14 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n9
    have u15 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n9
    have u16 : ¬v1 := by
      rcases c1533 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
    have u17 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
    have u18 : v14 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n9
    have u19 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u18 a
    rcases c2167 with a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n9
  have c2408 : ¬v22 ∨ ¬v2 ∨ ¬v4 ∨ v12 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c2401 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n11
    have u5 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
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
    have u10 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u12 : v34 := by
      rcases c2399 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
    have u13 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v41 := by
      rcases c938 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u5
    have u16 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n11
    have u17 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u8
    have u18 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
    rcases c934 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u6
  have c2409 : v7 ∨ ¬v2 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n10
    have u2 : ¬v28 := by
      rcases c2406 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n10
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v11 := by
      rcases c2401 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u12 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u13 : v22 := by
      rcases c2407 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v12 := by
      rcases c2408 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u15 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v35 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a n10
    have u18 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u7
    have u19 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v41 := by
      rcases c1290 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u11
      · exact a
      · exact absurd a u4
    have u22 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact absurd u3 a
    have u23 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u21 a
    rcases c447 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u17 a
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u23
    · exact absurd a n10
  have c2410 : v49 ∨ ¬v2 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v28 := by
      rcases c2406 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v48 := by
      rcases c2326 with a|a|a
      · exact absurd a n2
      · exact a
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
    have u4 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u5 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v11 := by
      rcases c2401 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u11 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u12 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u14 : v29 := by
      rcases c2409 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n0
    have u15 : ¬v36 := by
      rcases c2403 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n0
    have u16 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v22 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u19 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n0
    have u20 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n0
    have u21 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u7
    have u23 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd u22 a
      · exact a
    have u24 : v40 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u16
      · exact a
      · exact absurd a u5
    have u25 : v41 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a n0
    rcases c144 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2411 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    rcases c254 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
  have c2412 : v33 ∨ v2 ∨ ¬v4 ∨ ¬v22 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n13
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
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u9
    have u12 : v7 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a n13
    have u13 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u6
    have u14 : v1 := by
      rcases c2351 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n13
    rcases c18 with a|a|a|a
    · exact absurd u14 a
    · exact absurd n2 a
    · exact absurd u12 a
    · exact absurd u13 a
  have c2413 : ¬v7 ∨ ¬v4 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v40 ∨ v49 := by
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
    have u6 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v1 := by
      rcases c2351 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u10 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u2
    have u11 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    rcases c55 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c2414 : v24 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v31 ∨ v32 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v2 := by
      rcases c2410 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v4 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u8 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
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
    have u14 : ¬v40 := by
      rcases c2411 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v38 := by
      rcases c2375 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u17 : ¬v28 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u5
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u18 : ¬v22 := by
      rcases c2412 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n7
    have u19 : v36 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u18
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u20 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v7 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n7
    have u22 : v23 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n7
    have u23 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n7
    have u24 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n7
    have u25 : v6 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a n7
    have u26 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u9
    have u28 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u25 a
      · exact absurd u6 a
    have u29 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u25 a
      · exact absurd u6 a
    have u30 : v9 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u28
      · exact a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u31 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u11
    have u32 : ¬v15 := by
      rcases c1913 with a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u5
      · exact absurd a u28
      · exact absurd u30 a
    have u33 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n7
    have u34 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u31 a
    rcases c434 with a|a|a|a|a|a|a|a
    · exact absurd a u32
    · exact absurd u30 a
    · exact absurd a u34
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a u23
    · exact absurd a u33
  have c2415 : v1 ∨ v2 ∨ v7 ∨ v22 ∨ v28 ∨ v29 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n8
    have u3 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v9 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u5 a
      · exact a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2416 : v28 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v29 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n7
    have u2 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
    have u5 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
    have u6 : v1 := by
      rcases c2415 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n7
    have u8 : v14 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1723 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u6 a
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n7
  have c2417 : ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c12 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c17 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    rcases c625 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  exact ⟨c2368, c2370, c2371, c2375, c2378, c2387, c2390, c2396, c2400, c2404, c2410, c2411, c2414, c2416, c2417⟩
